<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class QuestionLevelSeeder extends Seeder
{
    private $data = [
        [ "id" => 1, "name" => 'hard', "icon" => 'fas fa-heading'],
        [ "id" => 2, "name" => 'medium', "icon" => 'fab fa-medium-m'],
        [ "id" => 3, "name" => 'easy', "icon" => 'fab fa-edge-legacy']
    ];

    public function run()
    {
        DB::table('question_levels')->truncate();
        DB::table('question_levels')->insert($this->data);

    }
}
