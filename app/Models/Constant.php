<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Constant extends Model
{
    use Translatable;
    protected $table = 'constants';
    protected $guarded = [];
    public $translatedAttributes = ['name'];
}
