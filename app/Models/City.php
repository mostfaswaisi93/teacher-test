<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;

class City extends BaseModel
{
    use Translatable;

    protected $table    = 'cities';
    protected $guarded  = [];
    public $translatedAttributes  = ['name'];

    public function country()
    {
        return $this->belongsTo(Country::class);
    }
}
