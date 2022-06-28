<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libhhevacuationarea extends Model
{
    use HasFactory;

    /**
     * Get all of the households for the Libhhevacuationarea
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function households()
    {
        return $this->hasMany(Households::class);
    }
}
