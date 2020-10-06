<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;

class Gender extends BaseModel
{
    use Translatable;
    protected $table    = 'genders';
    protected $guarded  = [];
    public $translatedAttributes = ['name'];
}
