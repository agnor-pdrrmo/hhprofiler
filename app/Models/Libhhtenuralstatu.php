<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libhhtenuralstatu extends Model
{
    use HasFactory;

    // Table Name
    protected $table = 'libhhtenuralstatus';

    /**
     * Get all of the househols for the Libhhtenuralstatu
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function households()
    {
        return $this->hasMany(Household::class);
    }

}
