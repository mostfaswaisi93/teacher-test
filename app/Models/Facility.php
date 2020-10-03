<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;

class Facility extends BaseModel
{
    use Translatable;

    protected $table    = 'facilities';
    protected $fillable = ['icon', 'enabled'];
    public $translatedAttributes = ['name'];
}
