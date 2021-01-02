<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDegreeMapsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('degree_maps', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->float('gpa');
            $table->string('key');
            $table->integer('percent_from');
            $table->integer('percent_to');
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
        Schema::table("degree_maps", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
