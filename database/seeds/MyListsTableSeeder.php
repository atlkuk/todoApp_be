<?php

use Illuminate\Database\Seeder;
use App\MyList;

class MyListsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Let's truncate our existing records to start from scratch.
        // MyList::truncate();

        $faker = \Faker\Factory::create();

        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 3; $i++) {
            MyList::create([
                'title' => 'List-'.($i+1),
                'color' => $faker->sentence,
                'icon' => $faker->randomDigitNotNull,
                'index' => $faker->randomDigitNotNull,
                'user_id' => 1,
            ]);
        }
    }
}
