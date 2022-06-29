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
        Schema::create('demographies', function (Blueprint $table) {
            $table->id();
            $table->string('household_controlnumber');
            $table->foreign('household_controlnumber')->references('controlnumber')->on('households')->onDelete('cascade');
            $table->string('surname');
            $table->string('firstname');
            $table->string('middlename')->nullable();
            $table->text('extension')->nullable();
            $table->text('nuclear_family')->nullable();
            $table->foreignId('librelationshiphead_id')->constrained()->onDelete('cascade');
            $table->foreignId('libgender_id')->constrained()->onDelete('cascade');
            $table->date('birthdate');
            $table->foreignId('libmaritalstatu_id')->constrained()->onDelete('cascade');
            $table->string('ethnicity_by_blood')->nullable();
            $table->boolean('member_ip');
            $table->boolean('informal_settler');
            $table->string('religion')->nullable();
            $table->boolean('person_with_special_needs');
            $table->foreignId('libdisability_id')->nullable()->constrained()->onDelete('cascade');
            $table->boolean('is_ofw');
            $table->boolean('residence_3_years');
            $table->foreignId('libnutritionalstatu_id')->constrained()->onDelete('cascade');
            $table->date('nutrional_status_recorded')->nullable();
            $table->boolean('current_attending_school');
            $table->integer('current_attending_libgradelvl_glcode')->nullable();
            $table->foreign('current_attending_libgradelvl_glcode')->references('lib_glcode')->on('libgradelvls')->onDelete('cascade');
            $table->integer('highest_education_attainment_libgradelvl_glcode')->nullable();
            $table->foreign('highest_education_attainment_libgradelvl_glcode')->references('lib_glcode')->on('libgradelvls')->onDelete('cascade');
            $table->foreignId('libtscshvc_id')->nullable()->constrained()->onDelete('cascade');
            $table->boolean('can_read_write_or_atleast_hs_graduate');
            $table->string('primary_occupation')->nullable();
            $table->foreignId('libmonthlyincome_id')->nullable()->constrained()->onDelete('cascade');
            $table->boolean('sss_member');
            $table->boolean('gsis_member');
            $table->boolean('philhealth_member');
            $table->boolean('dependent_of_philheath_member');
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
        Schema::dropIfExists('demographies');
    }
};
