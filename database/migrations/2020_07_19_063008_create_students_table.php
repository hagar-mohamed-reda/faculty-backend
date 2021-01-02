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
            $table->id();
            $table->string('full_name');
            $table->string('code');//كود استمارة الالتحاق

            $table->integer('nationality_id')->unsigned();
            // $table->foreign('nationality_id')->references('id')->on('nationalities')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->enum('gender', ['ذكر', 'انثى'])->nullable();

            $table->integer('academic_years_id')->unsigned();
            // $table->foreign('academic_years_id')->references('id')->on('academic_years')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->date('registeration_date');
            $table->integer('qualification_types_id')->unsigned();
            // $table->foreign('qualification_types_id')->references('id')->on('qualification_types')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->date('qualification_date');
            $table->string('qualification_set_number');

            $table->integer('language_1_id')->unsigned();
            // $table->foreign('language_1_id')->references('id')->on('languages')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('language_2_id')->unsigned();
            // $table->foreign('language_2_id')->references('id')->on('languages')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('city_id')->unsigned();
            // $table->foreign('city_id')->references('id')->on('cities')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('government_id')->unsigned();
            // $table->foreign('government_id')->references('id')->on('governments')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('country_id')->unsigned();
            // $table->foreign('country_id')->references('id')->on('countries')
            //     ->onDelete('no action')
            //     ->onUpdate('no action');

            $table->enum('religion', ['مسلم', 'مسيحى']);
            $table->integer('parent_id')->unsigned();
            // $table->foreign('parent_id')->references('id')->on('parents')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('military_status_id')->unsigned();
            // $table->foreign('parent_id')->references('id')->on('military_status')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('military_area_id')->unsigned();
            // $table->foreign('military_area_id')->references('id')->on('military_areas')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->string('national_id'); //civil_id
            $table->string('password'); //كلمة سر التنسيق
            $table->float('grade');
            $table->integer('level_id')->unsigned();
            // $table->foreign('level_id')->references('id')->on('levels')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->string('triple_number'); //الرقم الثلاثى

            $table->string('address');
            $table->string('birth_address');
            $table->string('birth_place_id'); //governments محافظات
            // $table->foreign('government_id')->references('id')->on('governments')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->string('phone_1');
            $table->string('image');
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
        Schema::dropIfExists('students');
    }
}
