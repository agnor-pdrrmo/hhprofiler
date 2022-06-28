<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Household extends Model
{
    use HasFactory;

    // Get the municipality of this household
    public function libmunicipalitie(){
        return $this->belongsTo(Libmunicipalitie::class,'psgccode');
    }
}
