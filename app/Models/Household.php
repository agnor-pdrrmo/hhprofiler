<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Household extends Model
{
    use HasFactory;

    // Fillable
    protected $fillable = [
        'libmunicipalitie_psgccode', 
        'libbarangay_psgccode'
    ];

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

    /**
     * Get all of the availedprograms for the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function availedprograms()
    {
        return $this->hasMany(Availedprogram::class,'household_controlnumber','controlnumber');
    }

    /**
     * Get all of the livelihoods for the Household
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function livelihoods()
    {
        return $this->hasMany(Livelihood::class, 'household_controlnumber', 'controlnumber');
    }

    public function scopeWithFilters(
            $query,
            $municipalities,
            $barangays,
            $hhtypeofbuilding,
            $hhtenuralstatus,
            $hhroofmaterials,
            $accesstoelectricity,
            $accesstointernet,
            $accesswatersupply,
            $potable,
            $hhwatertenuralstatus,
            $libhhlvlwatersystems,
            $floodsoccur,
            $evacuateduringcalamity,
            $accesstohealthmedicalfacilities
        )
        {
            return $query->when(count($municipalities), function($query) use ($municipalities){
                $query->whereIn('libmunicipalitie_psgccode', $municipalities);
            })
            ->when(count($barangays), function ($query) use ($barangays){
                $query->whereIn('libbarangay_psgccode', $barangays);
            })->when(count($hhtypeofbuilding), function ($query) use ($hhtypeofbuilding){
                $query->whereIn('libhhtypeofbuilding_id', $hhtypeofbuilding);
            })->when(count($hhtenuralstatus), function ($query) use ($hhtenuralstatus){
                $query->whereIn('libhhtenuralstatu_id', $hhtenuralstatus);
            })->when(count($hhroofmaterials), function ($query) use ($hhroofmaterials){
                $query->whereIn('libhhroofmaterial_id', $hhroofmaterials);
            })->when(count($accesstoelectricity), function ($query) use ($accesstoelectricity){
                $query->whereIn('access_electricity', $accesstoelectricity);    
            })->when(count($accesstointernet), function ($query) use ($accesstointernet){
                $query->whereIn('access_internet', $accesstointernet);    
            })->when(count($accesswatersupply), function ($query) use ($accesswatersupply){
                $query->whereIn('access_watersupply', $accesswatersupply);    
            })->when(count($potable), function ($query) use ($potable){
                $query->whereIn('potable', $potable);    
            })->when(count($hhwatertenuralstatus), function ($query) use ($hhwatertenuralstatus){
                $query->whereIn('libhhwatertenuralstatu_id', $hhwatertenuralstatus);    
            })->when(count($libhhlvlwatersystems), function ($query) use ($libhhlvlwatersystems){
                $query->whereIn('libhhlvlwatersystem_id', $libhhlvlwatersystems);    
            })->when(count($floodsoccur), function ($query) use ($floodsoccur){
                $query->whereIn('floods_occur', $floodsoccur);    
            })->when(count($evacuateduringcalamity), function ($query) use ($evacuateduringcalamity){
                $query->whereIn('experience_evacuationduringcalamity', $evacuateduringcalamity);    
            })->when(count($accesstohealthmedicalfacilities), function ($query) use ($accesstohealthmedicalfacilities){
                $query->whereIn('has_accesstohealthmedicalfacilities', $accesstohealthmedicalfacilities);    
            });
        }
        
}
