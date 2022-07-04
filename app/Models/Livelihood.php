<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Livelihood extends Model
{
    use HasFactory;

    /**
     * Get the household that owns the Livelihood
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function household()
    {
        return $this->belongsTo(Household::class, 'household_controlnumber', 'controlnumber');
    }

    /**
     * Get the liblivelihood that owns the Livelihood
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function liblivelihood()
    {
        return $this->belongsTo(Liblivelihood::class);
    }

    /**
     * Get the libhhtenuralstatu that owns the Livelihood
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libhhtenuralstatu()
    {
        return $this->belongsTo(Libhhtenuralstatu::class);
    }
}
