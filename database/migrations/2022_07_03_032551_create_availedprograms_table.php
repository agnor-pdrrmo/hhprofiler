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
        Schema::create('availedprograms', function (Blueprint $table) {
            $table->id();
            $table->string('household_controlnumber');
            $table->foreign('household_controlnumber')->references('controlnumber')->on('households')->onDelete('cascade');
            $table->foreignId('libtypeofprogram_id')->constrained()->onDelete('cascade');
            $table->string('nameofprogram');
            $table->integer('numberofbeneficiaries');
            $table->string('programimplementor');
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
        Schema::dropIfExists('availedprograms');
    }
};
