<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class LibhhwatertenuralstatuResource extends JsonResource
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
            'lib_wtdesc' => $this->lib_wtdesc,
            'user_id' => $this->user_id,  
            'households_count' => $this->households_count
        ];
    }
}
