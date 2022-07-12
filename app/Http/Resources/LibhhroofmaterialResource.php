<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class LibhhroofmaterialResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'lib_roofmaterialsdesc' => $this->lib_roofmaterialsdesc,
            'user_id' => $this->user_id,  
            'households_count' => $this->households_count
        ];
    }
}
