<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(LaratrustSeeder::class);
        $this->call(GendersTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        // $this->call(FacilitiesTableSeeder::class);
        // $this->call(ConstantsTableSeeder::class);
        // $this->call(CountriesTableSeeder::class);
        // $this->call(ContactsTableSeeder::class);

        // \App\Models\User::factory(10)->create();
    }
}
