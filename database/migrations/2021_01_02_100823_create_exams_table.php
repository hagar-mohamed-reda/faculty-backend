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
            $table->string('header_text')->nullable();
            $table->string('footer_text')->nullable();
            $table->string('notes')->nullable();
            $table->string('password')->nullable();
            $table->date('start_time');
            $table->date('end_time');
            $table->integer('minutes');
            $table->boolean('result_publish',0);
            $table->integer('question_number')->nullable();
            $table->string('required_password')->nullable();
            $table->integer('total')->nullable();
            $table->unsignedBigInteger('doctor_id');
            $table->unsignedBigInteger('course_id');
            $table->unsignedBigInteger('academic_year_id');
            $table->unsignedBigInteger('term_id');
            $table->unsignedBigInteger('faculty_id');
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
