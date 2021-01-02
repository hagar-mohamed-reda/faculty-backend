<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentAttributesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_attributes', function (Blueprint $table) {
            $table->id();
            $table->integer('student_id')->unsigned();
            // $table->foreign('student_id')->references('id')->on('students')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->integer('attributes_id')->unsigned();
            // $table->foreign('attributes_id')->references('id')->on('attributes')
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
        Schema::dropIfExists('student_attributes');
    }
}
