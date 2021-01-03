<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLoginHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('login_histories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ip');
            $table->string('phone_details');
            $table->integer('user_id');
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
        Schema::table("login_histories", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
