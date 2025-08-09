<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\User;
use App\Models\Task;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TaskTest extends TestCase
{
    use RefreshDatabase;

    protected $user;

    protected function setUp(): void
    {
        parent::setUp();

        // Create a test user and authenticate with Sanctum
        $this->user = User::factory()->create();
        $this->actingAs($this->user, 'sanctum');
    }

    public function test_can_create_task()
    {
        $data = [
            'title' => 'Sample Task',
            'description' => 'This is a test task',
            'status' => 'pending',
            'priority' => 'medium'
        ];

        $response = $this->postJson('/api/tasks', $data);

        $response->assertStatus(201)
            ->assertJsonFragment(['title' => 'Sample Task']);

        $this->assertDatabaseHas('tasks', [
            'title' => 'Sample Task',
            'user_id' => $this->user->id
        ]);
    }

    public function test_can_read_task()
    {
        $task = Task::factory()->create(['user_id' => $this->user->id]);

        $response = $this->getJson("/api/tasks/{$task->id}");

        $response->assertStatus(200)
            ->assertJson(['id' => $task->id]);
    }

    public function test_can_update_task()
    {
        $task = Task::factory()->create(['user_id' => $this->user->id]);

        $data = ['title' => 'Updated Task'];

        $response = $this->putJson("/api/tasks/{$task->id}", $data);

        $response->assertStatus(200)
            ->assertJsonFragment(['title' => 'Updated Task']);

        $this->assertDatabaseHas('tasks', [
            'id' => $task->id,
            'title' => 'Updated Task'
        ]);
    }

    public function test_can_delete_task()
    {
        $task = Task::factory()->create(['user_id' => $this->user->id]);

        $response = $this->deleteJson("/api/tasks/{$task->id}");

        $response->assertStatus(200);

        $this->assertDatabaseMissing('tasks', [
            'id' => $task->id
        ]);
    }
}
