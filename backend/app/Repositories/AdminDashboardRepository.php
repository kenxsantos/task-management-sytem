<?php

namespace App\Repositories;

use App\Models\User;
use App\Models\Task;

class AdminDashboardRepository
{
    public function getUsersWithTaskCounts($perPage = 10)
    {
        return User::where('role', 'user')
            ->withCount([
                'tasks as total_tasks',
                'tasks as completed_tasks' => fn($q) => $q->where('status', 'completed'),
                'tasks as pending_tasks'   => fn($q) => $q->where('status', 'pending'),
            ])
            ->paginate($perPage);
    }

    public function getTaskStats()
    {
        return [
            'totalTasks'     => Task::count(),
            'completedTasks' => Task::where('status', 'completed')->count(),
            'pendingTasks'   => Task::where('status', 'pending')->count(),
        ];
    }
}
