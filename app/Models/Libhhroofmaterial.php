<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libhhroofmaterial extends Model
{
    use HasFactory;

    /**
     * Get all of the households for the Libhhroofmaterial
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function households()
    {
        return $this->hasMany(Household::class);
    }
}
