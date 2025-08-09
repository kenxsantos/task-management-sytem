<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ReorderTaskRequest;
use App\Http\Requests\StoreTaskRequest;
use App\Http\Requests\UpdateTaskRequest;
use App\Http\Resources\TaskResource;
use App\Models\Task;
use App\Services\TaskService;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    protected $taskService;

    public function __construct(TaskService $taskService)
    {
        $this->taskService = $taskService;
    }

    public function index(Request $request)
    {
        $tasks = $this->taskService->listTasks(
            $request->query('status'),
            $request->query('priority')
        );

        return response()->json(TaskResource::collection($tasks)->resolve());
    }

    public function store(StoreTaskRequest $request)
    {
        $task = $this->taskService->createTask($request->validated());
        return response()->json(new TaskResource($task), 201);
    }

    public function show(Task $task)
    {
        $task = $this->taskService->showTask($task);
        return response()->json(new TaskResource($task), 200);
    }

    public function update(UpdateTaskRequest $request, Task $task)
    {
        $task = $this->taskService->updateTask($task, $request->validated());
        return response()->json(new TaskResource($task), 200);
    }

    public function destroy(Task $task)
    {
        $this->taskService->deleteTask($task);
        return response()->json(['message' => 'Task deleted successfully'], 200);
    }

    public function reorder(ReorderTaskRequest $request, Task $task)
    {
        $task =  $this->taskService->reorderTasks($request->validated()['tasks']);
        return response()->json(['message' => 'Reordered successfully'], 200);
    }
}
