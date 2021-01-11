<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(LaratrustSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(QuestionTypeSeeder::class);
        $this->call(QuestionLevelSeeder::class);
        $this->call(ApplicationRequiredSeeder::class);
    }
}
