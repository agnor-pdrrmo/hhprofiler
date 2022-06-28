<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libhhtenuralstatu extends Model
{
    use HasFactory;

    /**
     * Get all of the househols for the Libhhtenuralstatu
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function househols()
    {
        return $this->hasMany(Household::class);
    }
}
