<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentRequiredDocumentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_required_documents', function (Blueprint $table) {
            $table->id();
            $table->integer('required_document_id')->unsigned();
            // $table->foreign('required_document_id')->references('id')->on('required_documents')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->integer('student_id')->unsigned();
            // $table->foreign('student_id')->references('id')->on('students')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->string('path');
            $table->enum('validation',[1, 0]);
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
        Schema::dropIfExists('student_required_documents');
    }
}
