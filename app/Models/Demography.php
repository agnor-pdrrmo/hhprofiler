<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Demography extends Model
{
    use HasFactory;

    /**
     * Get the household that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function household(): BelongsTo
    {
        return $this->belongsTo(Household::class, 'household_controlnumber', 'controlnumber');
    }

    /**
     * Get the librelationshiphead that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function librelationshiphead()
    {
        return $this->belongsTo(Librelationshiphead::class);
    }

    /**
     * Get the libgender that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libgender()
    {
        return $this->belongsTo(Libgender::class);
    }

    /**
     * Get the libmaritalstatu that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libmaritalstatu()
    {
        return $this->belongsTo(Libmaritalstatu::class);
    }

    /**
     * Get the libsisabilitie that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libdisabilitie()
    {
        return $this->belongsTo(Libdisabilitie::class);
    }

    /**
     * Get the libnutritionalstatu that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libnutritionalstatu()
    {
        return $this->belongsTo(Libnutritionalstatu::class);
    }

    /**
     * Get the libgradelvl that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libgradelvl()
    {
        return $this->belongsTo(Libgradelvl::class,'current_attending_libgradelvl_glcode','lib_glcode');
    }

    /**
     * Get the libgradelvl that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function highestgradelvl()
    {
        return $this->belongsTo(Libgradelvl::class,'highest_education_attainment_libgradelvl_glcode','lib_glcode');
    }

    /**
     * Get the user that owns the Demography
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'foreign_key', 'other_key');
    }

}
