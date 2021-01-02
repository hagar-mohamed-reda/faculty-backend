<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQualificationYearsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qualification_years', function (Blueprint $table) {
            $table->id();

            $table->integer('qualification_id')->unsigned();
            // $table->foreign('qualification_id')->references('id')->on('qualifications')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('academic_year_id');
            // $table->foreign('academic_year_id')->references('id')->on('academic_years')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->float('acceptance_grade');
            $table->integer('level_id')->unsigned();
            // $table->foreign('level_id')->references('id')->on('levels')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->string('notes')->nullable();
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
        Schema::dropIfExists('qualification_years');
    }
}
