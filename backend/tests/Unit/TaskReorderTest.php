<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\User;
use App\Models\Task;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TaskReorderTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();
        $this->artisan('migrate');
    }

    public function test_can_reorder_tasks()
    {
        $user = User::factory()->create();
        $tasks = Task::factory()->count(3)->create(['user_id' => $user->id]);

        $newOrder = [
            ['id' => $tasks[2]->id, 'order' => 1],
            ['id' => $tasks[0]->id, 'order' => 2],
            ['id' => $tasks[1]->id, 'order' => 3],
        ];

        $response = $this->actingAs($user)->postJson('/api/tasks/reorder', [
            'tasks' => $newOrder
        ]);

        $response->assertStatus(200);

        foreach ($newOrder as $task) {
            $this->assertDatabaseHas('tasks', [
                'id' => $task['id'],
                'order' => $task['order']
            ]);
        }
    }
}