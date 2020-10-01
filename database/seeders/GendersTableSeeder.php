<?php

namespace Database\Seeders;

use App\Models\Gender;
use Illuminate\Database\Seeder;

class GendersTableSeeder extends Seeder
{
    public function run()
    {
        Gender::create([
            'ar' => ['name' => 'ذكر'],
            'en' => ['name' => 'Male']
        ]);
        Gender::create([
            'ar' => ['name' => 'أنثى'],
            'en' => ['name' => 'Female']
        ]);
    }
}
