<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFacultyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('faculty', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('logo')->nullable();
            $table->string('description')->nullable();
            $table->string('message_text')->nullable();
            $table->string('message_file')->nullable();
            $table->string('vision_text')->nullable();
            $table->string('vision_file')->nullable();
            $table->string('target_text')->nullable();
            $table->string('target_file')->nullable();

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
        Schema::table("faculty", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
