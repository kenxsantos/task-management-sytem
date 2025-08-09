<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Task;

class TaskFactory extends Factory
{
    protected $model = Task::class;

    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(),
            'description' => $this->faker->paragraph(),
            'status' => 'pending',
            'priority' => 'medium',
            'user_id' => \App\Models\User::factory(),
            'order' => $this->faker->numberBetween(1, 100)
        ];
    }
}
