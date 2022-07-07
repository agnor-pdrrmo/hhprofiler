<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class LibmunicipalitieResource extends JsonResource
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
            'psgccode' => $this->psgccode,
            'lib_munname' => $this->lib_munname,
            'user_id' => $this->user_id,  
            'households_count' => $this->households_count,
        ];
    }
}
