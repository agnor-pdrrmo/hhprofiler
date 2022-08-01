<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('livelihoods', function (Blueprint $table) {
            $table->id();
            $table->string('household_controlnumber');
            $table->foreign('household_controlnumber')->references('controlnumber')->on('households')->onDelete('cascade');
            $table->foreignId('liblivelihood_id')->constrained()->onDelete('cascade');
            $table->double('market_value')->nullable();
            $table->string('total_area_volume_of_production')->nullable();
            $table->string('products');
            $table->foreignId('libtenuralstatu_id')->constrained()->onDelete('cascade');
            $table->boolean('with_insurance');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('livelihoods');
    }
};
