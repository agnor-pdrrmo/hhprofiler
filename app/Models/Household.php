<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Household extends Model
{
    use HasFactory;

    // Table Name
    protected $table = 'households';
    // Disable Timestamp
    public $timestamps = false;
    // Key Type
    protected $keyType = 'string';
    // Primary key
    public $primaryKey = 'controlnumber';

    // Get the municipality of this household
    public function libmunicipalitie()
    {
        return $this->belongsTo(Libmunicipalitie::class,'libmunicipalitie_psgccode','psgccode');
    }

    // Get the barangay of this household
    public function libbarangay()
    {
        return $this->belongsTo(Libbarangay::class,'libbarangay_psgccode','psgccode');
    }

    /**
     * Get the libbuildingtype that owns the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libhhtypeofbuilding()
    {
        return $this->belongsTo(Libhhtypeofbuilding::class);
    }

    /**
     * Get the libhhtenuralstatu that owns the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libhhtenuralstatu()
    {
        return $this->belongsTo(Libhhtenuralstatu::class);
    }

    /**
     * Get the libhhroofmaterial that owns the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libhhroofmaterial()
    {
        return $this->belongsTo(libhhroofmaterial::class);
    }

    /**
     * Get the libhhwatertenuralstatu that owns the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libhhwatertenuralstatu()
    {
        return $this->belongsTo(Libhhwatertenuralstatu::class);
    }

    /**
     * Get the libhhlvlwatersystem that owns the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libhhlvlwatersystem()
    {
        return $this->belongsTo(Libhhlvlwatersystem::class);
    }

    /**
     * Get the libhhevacuationarea that owns the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libhhevacuationarea()
    {
        return $this->belongsTo(Libhhevacuationarea::class);
    }

    /**
     * Get all of the demography for the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function demography()
    {
        return $this->hasMany(Demography::class,'household_controlnumber','controlnumber');
    }
    
}
