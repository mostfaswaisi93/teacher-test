<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Facility extends Model
{
    use Translatable;
    protected $table = 'facilities';
    protected $fillable = ['icon', 'enabled'];
    public $translatedAttributes = ['name'];

}
