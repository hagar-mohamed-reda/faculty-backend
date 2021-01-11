<?php

use Illuminate\Database\Seeder;
use DB;
class QuestionLevelSeeder extends Seeder
{
    private $data = [
        [ "id" => 1, "name" => 'hard', "icon" => 'fas fa-heading'],
        [ "id" => 2, "name" => 'medium', "icon" => 'fab fa-medium-m'],
        [ "id" => 3, "name" => 'easy', "icon" => 'fab fa-edge-legacy']
    ];

    public function run()
    {
        foreach($this->data as $item) {
            DB::table('question_levels')->insert([
                'id' => $item['id'],
                'name' => $item['name'],
                'icon' => $item['icon']
            ]);
        }
    }
}
