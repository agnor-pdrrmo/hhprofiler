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
        Schema::create('libbarangays', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('libmunicipalitie_psgcmun');
            $table->foreign('libmunicipalitie_psgcmun')->references('psgccode')->on('libmunicipalities')->onDelete('cascade');
            $table->string('psgccode')->unique();
            $table->string('lib_brgyname');
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
        Schema::dropIfExists('libbarangays');
    }
};
