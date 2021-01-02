<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentMilitaryHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_military_history', function (Blueprint $table) {
            $table->id();
            $table->integer('student_id')->unsigned();
            // $table->foreign('student_id')->references('id')->on('students')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->date('date_from');
            $table->date('date_to');
            $table->integer('military_status_id');
            // $table->foreign('military_status_id')->references('id')->on('military_status')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->integer('military_settings_id');
            // $table->foreign('military_settings_id')->references('id')->on('military_settings')
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
        Schema::dropIfExists('student_military_history');
    }
}
