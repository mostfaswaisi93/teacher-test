<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laratrust\Traits\LaratrustUserTrait;

class User extends Authenticatable
{
    use LaratrustUserTrait;
    use HasFactory, Notifiable, SoftDeletes;

    protected $table    = 'users';
    protected $fillable = ['name', 'email', 'image', 'active', 'password'];
    protected $appends  = ['image_path'];
    protected $hidden   = ['password', 'remember_token'];
    protected $casts    = ['email_verified_at' => 'datetime', 'created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];

    public function getNameAttribute($value)
    {
        return ucfirst($value);
    }

    public function scopeActive($query)
    {
        return $query->where('enabled', 1);
    }

    public function scopeInactive($query)
    {
        return $query->where('enabled', 0);
    }

    public function getImagePathAttribute()
    {
        return asset('uploads/user_images/' . $this->image);
    }
}
