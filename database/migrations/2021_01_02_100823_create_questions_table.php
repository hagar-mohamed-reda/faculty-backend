<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('text');
            $table->unsignedBigInteger('question_type_id');
            $table->unsignedBigInteger('question_level_id');
            $table->unsignedBigInteger('question_category_id');
            $table->unsignedBigInteger('faculty_id');
            $table->unsignedBigInteger('course_id');
            $table->unsignedBigInteger('doctor_id');
            $table->boolean('active',0)->nullable();
            $table->boolean('is_shared',0)->nullable();
            $table->string('notes')->nullable();
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
        Schema::table("questions", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
