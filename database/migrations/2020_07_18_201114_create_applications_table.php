<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateApplicationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('applications', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('code')->unique(); //كود استمارة التقديم

            $table->integer('nationality_id')->unsigned()->nullable();
            // $table->foreign('nationality_id')->references('id')->on('nationalities')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->enum('gender', ['ذكر', 'انثى'])->nullable();
            $table->integer('academic_years_id')->unsigned()->nullable();
            // $table->foreign('academic_years_id')->references('id')->on('academic_years')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->date('registeration_date')->nullable();
            $table->integer('qualification_types_id')->unsigned()->nullable();
            // $table->foreign('qualification_types_id')->references('id')->on('qualification_types')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->date('qualification_date')->nullable();
            $table->string('qualification_set_number')->nullable();
            $table->integer('language_1_id')->unsigned()->nullable();
            // $table->foreign('language_1_id')->references('id')->on('languages')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->integer('language_2_id')->unsigned()->nullable();
            // $table->foreign('language_2_id')->references('id')->on('languages')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('city_id')->unsigned()->nullable();
            // $table->foreign('city_id')->references('id')->on('cities')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('government_id')->unsigned()->nullable();
            // $table->foreign('government_id')->references('id')->on('governments')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('country_id')->unsigned()->nullable();
            // $table->foreign('country_id')->references('id')->on('countries')
            //     ->onDelete('no action')
            //     ->onUpdate('no action');

            $table->enum('religion', ['مسلم', 'مسيحى'])->nullable();
            $table->integer('military_status_id')->unsigned()->nullable();
            // $table->foreign('parent_id')->references('id')->on('military_status')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('military_area_id')->unsigned()->nullable();
            // $table->foreign('military_area_id')->references('id')->on('military_areas')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->string('national_id')->nullable(); //civil_id
            $table->string('password')->nullable(); //كلمة سر التنسيق
            $table->float('grade')->nullable();


            $table->string('triple_number')->nullable(); //الرقم الثلاثى
            $table->string('address')->nullable();
            $table->string('birth_address')->nullable();
            $table->string('phone_1')->nullable();
            $table->integer('registration_status_id')->unsigned()->nullable();
            // $table->foreign('registration_status_id')->references('id')->on('registeration_status')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->integer('registration_method_id')->unsigned()->nullable();
            // $table->foreign('registration_method_id')->references('id')->on('registration_methods')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->date('national_id_date')->nullable();//تاريخ اصدار البطاقة
            $table->integer('national_id_place')->unsigned()->nullable(); //مكان اصدار البطافة
            // $table->foreign('government_id')->references('id')->on('governments')
            // ->onDelete('no action')
            // ->onUpdate('no action');

            $table->string('parent_name')->nullable();
            $table->string('parent_national_id')->nullable();
            $table->integer('parent_job_id')->unsigned()->nullable();
            // $table->foreign('parent_job_id')->references('id')->on('parent_jobs')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->string('parent_address')->nullable();
            $table->string('parent_phone')->nullable();

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
        Schema::dropIfExists('applications');
    }
}
