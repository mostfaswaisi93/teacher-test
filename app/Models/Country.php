<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;

class Country extends BaseModel
{
    use Translatable;

    protected $table    = 'countries';
    protected $guarded  = ['id'];
    public $translatedAttributes = ['name'];

    public function cities()
    {
        return $this->hasMany(City::class);
    }
}
