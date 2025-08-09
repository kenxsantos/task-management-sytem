<?php

namespace App\Services;

use App\Repositories\AdminDashboardRepository;

class AdminDashboardService
{
    protected $repository;

    public function __construct(AdminDashboardRepository $repository)
    {
        $this->repository = $repository;
    }

    public function getDashboardData()
    {
        $users = $this->repository->getUsersWithTaskCounts();
        $stats = $this->repository->getTaskStats();

        return [
            'stats' => $stats,
            'users' => [
                'data'         => $users->items(),
                'current_page' => $users->currentPage(),
                'last_page'    => $users->lastPage()
            ]
        ];
    }
}