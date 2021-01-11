<?php

use Illuminate\Database\Seeder;

class QuestionLevelSeeder extends Seeder
{
    private $data = [
        [ "id" => 1, "name" => 'hard', "icon" => 'fas fa-heading'],
        [ "id" => 2, "name" => 'medum', "icon" => 'fa fa-th-list'],
        [ "id" => 3, "name" => 'easy', "icon" => 'fa fa-text-width']
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
