<?php

namespace App\Repositories;

use App\Models\Task;
use Illuminate\Support\Facades\Auth;

class TaskRepository
{
    public function getTasks($status = null, $priority = null)
    {
        $query = Task::where('user_id', Auth::id())->orderBy('order');

        if ($status) {
            $query->status($status);
        }

        if ($priority) {
            $query->priority($priority);
        }

        return $query->get();
    }

    public function createTask(array $data)
    {
        return Task::create($data);
    }

    public function findById($id)
    {
        return Task::findOrFail($id);
    }

    public function updateTask(Task $task, array $data)
    {
        $task->update($data);
        return $task;
    }

    public function deleteTask(Task $task)
    {
        return $task->delete();
    }

    public function reorderTasks(array $tasks)
    {
        foreach ($tasks as $item) {
            Task::where('id', $item['id'])->update(['order' => $item['order']]);
        }
    }
}