<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentExamDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_exam_details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('student_exam_id');
            $table->unsignedBigInteger('question_id');
            $table->unsignedBigInteger('answer_id')->nullable();
            $table->float('grade')->nullable();
            $table->longText('answer')->nullable();

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
        Schema::table("student_exam_details", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
