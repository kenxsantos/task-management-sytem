<?php

namespace App\Events;

use App\Models\Task;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\PrivateChannel; // private channel
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Queue\SerializesModels;

class TaskCreated implements ShouldBroadcast
{
    use InteractsWithSockets, SerializesModels;

    public Task $task;

    public function __construct(Task $task)
    {
        $this->task = $task;
    }

    public function broadcastOn()
    {
        return new PrivateChannel('user.' . $this->task->user_id);
    }

    public function broadcastWith()
    {
        return [
            'id' => $this->task->id,
            'title' => $this->task->title,
            'description' => $this->task->description,
            'status' => $this->task->status,
            'priority' => $this->task->priority,
            'order' => $this->task->order,
        ];
    }

    public function broadcastAs()
    {
        return 'task.created';
    }
}
