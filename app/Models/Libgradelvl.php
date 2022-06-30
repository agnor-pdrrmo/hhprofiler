<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libgradelvl extends Model
{
    use HasFactory;

    /**
     * Get all of the demography for the Libgradelvl
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function demography(): HasMany
    {
        return $this->hasMany(Demography::class);
    }
}
