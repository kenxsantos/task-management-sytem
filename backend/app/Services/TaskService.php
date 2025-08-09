<?php

namespace App\Services;

use App\Events\TaskCreated;
use App\Repositories\TaskRepository;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Gate;

class TaskService
{
    protected $tasks;

    public function __construct(TaskRepository $tasks)
    {
        $this->tasks = $tasks;
    }

    public function listTasks($status, $priority)
    {
        return Cache::remember(
            "tasks_user_" . Auth::id() . "_{$status}_{$priority}",
            60,
            fn() => $this->tasks->getTasks($status, $priority)
        );
    }

    public function createTask(array $data)
    {
        $task = $this->tasks->createTask([
            ...$data,
            'user_id' => Auth::id()
        ]);

        Cache::flush();
        broadcast(new TaskCreated($task))->toOthers();

        return $task;
    }

    public function showTask($task)
    {
        Gate::authorize('view', $task);
        return $task;
    }

    public function updateTask($task, array $data)
    {
        Gate::authorize('update', $task);
        $updated = $this->tasks->updateTask($task, $data);

        Cache::flush();
        return $updated;
    }

    public function deleteTask($task)
    {
        Gate::authorize('delete', $task);
        $this->tasks->deleteTask($task);

        Cache::flush();
    }

    public function reorderTasks(array $tasks)
    {
        $this->tasks->reorderTasks($tasks);
    }
}
