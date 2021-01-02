<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('photo');
            $table->string('username');
            $table->string('password');
            $table->unsignedBigInteger('faculty_id')->nullable();
            $table->unsignedBigInteger('role_id')->nullable();
            $table->enum('type', ['admin', 'student', 'doctor']);

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
        Schema::table("users", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
