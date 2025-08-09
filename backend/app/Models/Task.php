<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Task extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'status',
        'priority',
        'order',
        'user_id'
    ];

    public function scopeStatus(Builder $query, string $status)
    {
        return $query->where('status', $status);
    }

    public function scopePriority(Builder $query, string $priority)
    {
        return $query->where('priority', $priority);
    }
}
