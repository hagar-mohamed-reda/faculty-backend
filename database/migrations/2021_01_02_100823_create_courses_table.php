<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('photo');
            $table->unsignedBigInteger('level_id')->nullable();
            $table->unsignedBigInteger('faculty_id')->nullable();
            $table->string('code');
            $table->integer('credit_hour');
            $table->string('description');
            $table->integer('final_degree');
            $table->boolean('active',0);

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
        Schema::table("courses", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
