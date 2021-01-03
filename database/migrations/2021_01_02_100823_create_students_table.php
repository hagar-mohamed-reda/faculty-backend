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
            $table->string('photo')->nullable();
            $table->string('username')->nullable();
            $table->string('password')->nullable();
            $table->unsignedBigInteger('level_id')->nullable();
            $table->unsignedBigInteger('department_id')->nullable();
            $table->unsignedBigInteger('division_id')->nullable();
            $table->unsignedBigInteger('faculty_id')->nullable();
            $table->string('code');
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('national_id');
            $table->boolean('active',1);
            $table->string('sms_code')->nullable();
            $table->enum('type', ['normal', 'graduated'],'normal');
            $table->softDeletes();
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
