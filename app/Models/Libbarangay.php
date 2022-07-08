<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libbarangay extends Model
{
    use HasFactory;

    //  Table Name
    protected $table = 'libbarangays';
    // Key Type
    protected $keyType = 'string';
    // Primary Key
    public $primaryKey = 'psgccode';

    /**
     * Get all of the households for the Libbarangay
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function households()
    {
        return $this->hasMany(Household::class,'libbarangay_psgccode','psgccode');
    }
    
    /**
     * Get the libmunicipality that owns the Libbarangay
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libmunicipality()
    {
        return $this->belongsTo(Libmunicipalitie::class, 'libmunicipalitie_psgcmun', 'psgccode');
    }
}
