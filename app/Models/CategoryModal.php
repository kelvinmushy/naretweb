<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryModal extends Model
{
    use HasFactory;
    protected $fillable=[
      'cat_name',
    ];
}
