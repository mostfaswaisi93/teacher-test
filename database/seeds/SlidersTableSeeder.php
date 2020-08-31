<?php

use App\Models\Slider;
use Illuminate\Database\Seeder;

class SlidersTableSeeder extends Seeder
{
    public function run()
    {
        Slider::create([
            'ar' => ['text' => 'Text One Ar'],
            'en' => ['text' => 'Text One En'],
            'user_id'       => 1
        ]);

        Slider::create([
            'ar' => ['text' => 'Text Two Ar'],
            'en' => ['text' => 'Text Two En'],
            'user_id'       => 2
        ]);
    }
}
