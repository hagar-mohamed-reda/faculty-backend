<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentExamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_exams', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('student_id')->nullable();
            $table->unsignedBigInteger('exam_id')->nullable();
            $table->float('grade');
            $table->string('feedback');
            $table->boolean('is_start',0);
            $table->boolean('is_ended',0);
            $table->date('start_time');
            $table->date('end_time');
            $table->unsignedBigInteger('degree_map_id')->nullable();
            $table->unsignedBigInteger('academic_year_id')->nullable();
            $table->unsignedBigInteger('term_id')->nullable();


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
        Schema::table("student_exams", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
