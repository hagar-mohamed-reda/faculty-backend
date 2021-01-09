<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLecturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lectures', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('description')->nullable();
            $table->string('file1')->nullable();
            $table->string('file2')->nullable();
            $table->string('video')->nullable();
            $table->string('youtube_url')->nullable();
            $table->boolean('active',0);
            $table->date('date');
            $table->unsignedBigInteger('doctor_id');
            $table->unsignedBigInteger('course_id');
            $table->unsignedBigInteger('term_id');
            $table->unsignedBigInteger('academic_year_id');
            $table->unsignedBigInteger('faculty_id');

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
        Schema::table("lectures", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
