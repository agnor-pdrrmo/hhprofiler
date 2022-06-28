<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Household extends Model
{
    use HasFactory;

    // Table Name
    protected $table = "households";
    // Key Type
    protected $keyType = 'string';
    // Primary key
    public $primaryKey = "controlnumber";

    // Get the municipality of this household
    public function libmunicipalitie()
    {
        return $this->belongsTo(Libmunicipalitie::class,'libmunicipalitie_psgccode',"psgccode");
    }
}
