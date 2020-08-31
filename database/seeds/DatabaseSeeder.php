<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(LaratrustSeeder::class);
        $this->call(UsersTableSeeder::class);
        // $this->call(CategoriesTableSeeder::class);
        // $this->call(CountriesTableSeeder::class);
        // $this->call(ContactsTableSeeder::class);
        // $this->call(SubCategoriesTableSeeder::class);
        // $this->call(ItemsTableSeeder::class);
    }
}
