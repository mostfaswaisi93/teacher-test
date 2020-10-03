<?php

namespace Database\Seeders;

use App\Models\Facility;
use Illuminate\Database\Seeder;

class FacilitiesTableSeeder extends Seeder
{
    public function run()
    {
        Facility::create([
            'ar' => ['name' => 'ملعب كرة قدم'],
            'en' => ['name' => 'Football Stadium'],
            'icon' => public_path('uploads/facilities/football-stadium.jpg')
        ]);
        Facility::create([
            'ar' => ['name' => 'مسبح'],
            'en' => ['name' => 'Swimming Pool'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'ملعب كرة سلة'],
            'en' => ['name' => 'Basketball Stadium'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'مختبر حاسب آلي'],
            'en' => ['name' => 'Computer Lab'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'مختبر علمي'],
            'en' => ['name' => 'Scientific Lab'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'مكتبة'],
            'en' => ['name' => 'Library'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'معمل فنية'],
            'en' => ['name' => 'Technical Lab'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'عيادة طبية'],
            'en' => ['name' => 'Medical Clinic'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'غرفة خدمات مكتبية'],
            'en' => ['name' => 'Office Services Room'],
            'icon' => ''
        ]);
        Facility::create([
            'ar' => ['name' => 'مسرح'],
            'en' => ['name' => 'Stage'],
            'icon' => ''
        ]);
    }
}
