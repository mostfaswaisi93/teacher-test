<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;

class Constant extends BaseModel
{
    use Translatable;
    protected $table    = 'constants';
    protected $guarded  = [];
    public $translatedAttributes = ['name'];
}
