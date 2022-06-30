<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libmaritalstatu extends Model
{
    use HasFactory;

    /**
     * Get all of the demogragphy for the Libmaritalstatu
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function demography()
    {
        return $this->hasMany(Demography::class);
    }
}
