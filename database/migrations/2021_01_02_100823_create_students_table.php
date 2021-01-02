<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('photo');
            $table->string('username');
            $table->string('password');
            $table->unsignedBigInteger('level_id')->nullable();
            $table->unsignedBigInteger('department_id')->nullable();
            $table->unsignedBigInteger('division_id')->nullable();
            $table->unsignedBigInteger('faculty_id')->nullable();
            $table->string('code');
            $table->string('phone');
            $table->string('email');
            $table->string('national_id');
            $table->boolean('active',0);
            $table->string('sms_code');
            $table->enum('type', ['normal', 'graduated']);

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
        Schema::table("students", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
