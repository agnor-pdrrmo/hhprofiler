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
        Schema::create('households', function (Blueprint $table) {
            $table->id();      
            $table->string('controlnumber');
            $table->string('libmunicipalitie_psgccode');
            $table->foreign('libmunicipalitie_psgccode')->references('psgccode')->on('libmunicipalities')->onDelete('cascade');
            $table->string('libbarangay_psgccode');
            $table->foreign('libbarangay_psgccode')->references('psgccode')->on('libbarangays')->onDelete('cascade');
            $table->string('purok')->nullable();
            $table->string('latitude');
            $table->string('longitude');
            $table->string('respondent');
            $table->text('dateinterview');
            $table->string('nameenumerator');
            $table->string('nameeditor');
            $table->text('dateedited');
            $table->foreignId('libbuildingtype_id')->constrained()->onDelete('cascade');
            $table->foreignId('libtenuralstatu_id')->constrained()->onDelete('cascade');
            $table->year('year_construct');
            $table->integer('estimated_cost');
            $table->integer('bedrooms');
            $table->integer('storey');
            $table->boolean('access_electricity');
            $table->boolean('access_internet');
            $table->foreignId('libbuildingroofmaterial_id')->constrained()->onDelete('cascade');
            $table->string('medical_treatment')->nullable();
            $table->boolean('access_watersupply');
            $table->boolean('potable');
            $table->foreignId('libhhwatertenuralstatu_id')->constrained()->onDelete('cascade');
            $table->foreignId('libhhlvlwatersystem_id')->constrained()->onDelete('cascade');    
            $table->boolean('floods_occur');
            $table->year('year_flood')->nullable();
            $table->boolean('experience_evacuationduringcalamity');
            $table->year('year_evacuated')->nullable();  
            $table->foreignId('libhhevacuationarea_id')->constrained()->onDelete('cascade');    
            $table->boolean('has_accesstohealthmedicalfacilities');
            $table->boolean('has_accesstotelecommunications');
            $table->boolean('has_accesstodrillsandsimulations');
            $table->string('image')->nullable();
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
        Schema::dropIfExists('households');
    }
};
