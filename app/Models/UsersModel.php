<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UsersModel extends Model
{
    use HasFactory;
    use LaratrustUserTrait;
    protected $fillable=[
        'name',
        'email',
        'phone',
        
    ];
}
