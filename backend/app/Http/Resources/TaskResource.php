<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TaskResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id"         => $this->id,
            "title"      => $this->title,
            "description" => $this->description,
            "status"     => $this->status,
            "priority"   => $this->priority,
            "order"      => $this->order,
            "user_id"    => $this->user_id,
            "created_at" => optional($this->created_at)->toDateTimeString(),
            "updated_at" => optional($this->updated_at)->toDateTimeString(),
        ];
    }
}
