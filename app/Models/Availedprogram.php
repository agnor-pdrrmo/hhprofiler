<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Availedprogram extends Model
{
    use HasFactory;

    /**
     * Get the household that owns the Availedprogram
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function household()
    {
        return $this->belongsTo(Household::class);
    }

    /**
     * Get the typeofprogram that owns the Availedprogram
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function libtypeofprogram()
    {
        return $this->belongsTo(Libtypeofprogram::class);
    }
}
