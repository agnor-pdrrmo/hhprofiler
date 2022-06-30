<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libdisabilitie extends Model
{
    use HasFactory;

    /**
     * Get all of the demography for the Libdisabilitie
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function demography()
    {
        return $this->hasMany(Demography::class);
    }
}
