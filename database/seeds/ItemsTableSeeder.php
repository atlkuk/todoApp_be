<?php

use Illuminate\Database\Seeder;
use App\Item;

class ItemsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Let's truncate our existing records to start from scratch.
        // Item::truncate();

        $faker = \Faker\Factory::create();

        // And now, let's create a few articles in our database:
        for ($j=1; $j < 4; $j++) { 
            for ($i = 0; $i < 10; $i++) {
                Item::create([
                    'title' => 'Item-'.($i+1),
                    'description' => $faker->text,
                    'index' => $i,
                    'expire_date' => date( "Y-m-d", strtotime( date('Y-m-d')." +1 day" ) ),
                    'list_id' => $j,
                ]);
            }
        }
    }
}
