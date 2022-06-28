<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libmunicipalitie extends Model
{
    use HasFactory;

    // Table Name
    protected $table = "libmunicipalities";
    // Key Type
    protected $keyType = 'string';
    //Primary Key
    public $primaryKey = "psgccode";

    // Get the household in this municipality
    public function households()
    {
        return $this->hasMany(households::class,'psgccode',"libmunicipalitie_psgccode"); 
    }
}
