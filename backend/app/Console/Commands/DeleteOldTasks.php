<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Task;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;

class DeleteOldTasks extends Command
{
    protected $signature = 'tasks:cleanup';

    protected $description = 'Delete tasks older than 30 days and log the deletions';

    public function handle()
    {
        $thresholdDate = Carbon::now()->subDays(30);

        $oldTasks = Task::where('created_at', '<', $thresholdDate)->get();

        $count = $oldTasks->count();

        foreach ($oldTasks as $task) {
            Log::info("Deleting Task ID {$task->id} - Created at {$task->created_at}");
            $task->delete();
        }

        $this->info("Deleted {$count} old task(s).");
    }
}
