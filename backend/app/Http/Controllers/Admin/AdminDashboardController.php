<?php

namespace App\Http\Controllers\Admin;

use App\Services\AdminDashboardService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminDashboardController extends Controller
{
    protected $service;

    public function __construct(AdminDashboardService $service)
    {
        $this->service = $service;
    }

    public function index(Request $request)
    {
        $data = $this->service->getDashboardData();
        return response()->json($data);
    }
}
