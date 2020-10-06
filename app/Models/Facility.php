<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;

class Facility extends BaseModel
{
    use Translatable;

    protected $table    = 'facilities';
    protected $fillable = ['icon', 'enabled'];
    protected $appends  = ['icon_path'];
    public $translatedAttributes = ['name'];

    public function getIconPathAttribute()
    {
        return asset('images/facilities/' . $this->icon);
    }
}
