<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\Task;
use App\Policies\TaskPolicy;
use App\Console\Commands\DeleteOldTasks;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        Gate::policy(Task::class, TaskPolicy::class);
        $this->commands([
            DeleteOldTasks::class,
        ]);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::policy(Task::class, TaskPolicy::class);
    }
}
