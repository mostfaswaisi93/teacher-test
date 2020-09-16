<?php

use App\Models\Constant;
use Illuminate\Database\Seeder;

class ConstantsTableSeeder extends Seeder
{
    public function run()
    {
        Constant::create([
            'ar' => ['name' => 'ذكر'],
            'en' => ['name' => 'Male']
        ]);
        Constant::create([
            'ar' => ['name' => 'أنثى'],
            'en' => ['name' => 'Female']
        ]);
    }
}
