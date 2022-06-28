<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libbuildingtype extends Model
{
    use HasFactory;

    // Table Name
    protected $table = 'libbuildingtypes';

    /**
     * Get all of the households for the Libbuildingtype
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function households()
    {
        return $this->hasMany(Household::class);
    }

}
