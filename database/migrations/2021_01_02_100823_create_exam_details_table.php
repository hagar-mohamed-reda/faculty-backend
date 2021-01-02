<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExamDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exam_details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('number');
            $table->integer('total');
            $table->unsignedBigInteger('question_type_id')->nullable();
            $table->unsignedBigInteger('question_level_id')->nullable();
            $table->unsignedBigInteger('exam_id')->nullable();
            $table->unsignedBigInteger('faculty_id')->nullable();


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
        Schema::table("exam_details", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
