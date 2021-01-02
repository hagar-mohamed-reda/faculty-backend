<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exams', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('header_text');
            $table->string('footer_text');
            $table->string('notes');
            $table->string('password');
            $table->date('start_time');
            $table->date('end_time');
            $table->integer('minutes');
            $table->integer('question_number');
            $table->string('required_password');
            $table->integer('total');
            $table->unsignedBigInteger('doctor_id')->nullable();
            $table->unsignedBigInteger('course_id')->nullable();
            $table->unsignedBigInteger('academic_year_id')->nullable();
            $table->unsignedBigInteger('term_id')->nullable();
            $table->unsignedBigInteger('faculty_id')->nullable();
            $table->enum('type',['normal', 'midterm', 'final']);

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
        Schema::table("exams", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
