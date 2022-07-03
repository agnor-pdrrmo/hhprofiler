<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libtypeofprogram extends Model
{
    use HasFactory;

    /**
     * Get all of the availedprogram for the Typeofprogram
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function availedprogram()
    {
        return $this->hasMany(Availedprogram::class);
    }
}
