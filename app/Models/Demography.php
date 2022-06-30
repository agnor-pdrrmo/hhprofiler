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

}
