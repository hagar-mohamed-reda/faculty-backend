<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class QuestionTypeSeeder extends Seeder
{

    private $data = [
        [ "id" => 1, "name" => 'true_false', "icon" => 'fa fa-check-square-o'],
        [ "id" => 2, "name" => 'multi_choice', "icon" => 'fa fa-th-list'],
        [ "id" => 3, "name" => 'short_answer', "icon" => 'fa fa-text-width'],
        [ "id" => 4, "name" => 'blank_answer', "icon" => 'fa fa-file-text-o'],
        [ "id" => 5, "name" => 'image_choices', "icon" => 'fa fa-picture-o']
    ];

    public function run()
    {
        DB::table('question_types')->truncate();

        DB::table('question_types')->insert($this->data);
    }
}
