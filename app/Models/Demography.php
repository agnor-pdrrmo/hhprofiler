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

}
