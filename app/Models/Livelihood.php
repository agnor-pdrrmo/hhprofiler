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
        return $this->belongsTo(Household::class);
    }

    /**
     * Get the liblivelihood that owns the Livelihood
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function liblivelihood(): BelongsTo
    {
        return $this->belongsTo(Liblivelihood::class);
    }
}
