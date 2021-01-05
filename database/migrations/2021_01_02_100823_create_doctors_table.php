<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDoctorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('photo')->nullable();
            $table->string('username');
            $table->string('password');
            $table->unsignedBigInteger('special_id')->nullable();
            $table->unsignedBigInteger('division_id')->nullable();
            $table->unsignedBigInteger('faculty_id')->nullable();
            $table->string('phone');
            $table->string('email');
            $table->string('universty_email')->nullable();
            $table->boolean('active',1);
            $table->string('sms_code')->nullable();
            $table->integer('degree_id');
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
        Schema::table("doctors", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
