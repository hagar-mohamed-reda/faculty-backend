<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->longText('key');
            $table->longText('name_ar')->nullable();
            $table->longText('name_en')->nullable();

            $table->timestamps();

            //$table->foreign('faculty_id')->references('id')->on('faculty')->onDelete('cascade');

        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table("translations", function ($table) {
            $table->dropSoftDeletes();
        });
    }
}
