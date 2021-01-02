<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMilitarySettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('military_settings', function (Blueprint $table) {
            $table->id();
            $table->integer('condition_age');
            $table->string('reason');
            $table->integer('military_status_id');
            // $table->foreign('military_status_id')->references('id')->on('military_status')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->string('notes')->nullable();
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
        Schema::dropIfExists('military_settings');
    }
}
