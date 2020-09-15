<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Gender extends Model
{
    use Translatable;
    protected $table = 'genders';
    protected $guarded = [];
    public $translatedAttributes = ['name'];
}
