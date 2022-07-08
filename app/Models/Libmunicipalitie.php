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
        return $this->hasMany(household::class,"libmunicipalitie_psgccode",'psgccode'); 
    }

    /**
     * Get all of the libbarangay for the Libmunicipalitie
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function libbarangays()
    {
        return $this->hasMany(Libbarangay::class, 'libmunicipalitie_psgcmun', 'psgccode');
    }
}
