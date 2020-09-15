<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(LaratrustSeeder::class);
        $this->call(GendersTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        // $this->call(CountriesTableSeeder::class);
        // $this->call(ContactsTableSeeder::class);
    }
}
