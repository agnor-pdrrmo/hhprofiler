<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Liblivelihood extends Model
{
    use HasFactory;

    /**
     * Get all of the livelihoods for the Liblivelihood
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function livelihoods()
    {
        return $this->hasMany(Livelihood::class);
    }
}
