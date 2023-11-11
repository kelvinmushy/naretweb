<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TruckModel extends Model
{
    use HasFactory;
    protected $fillable=[
        'comapy_id',
        'truck_name',
        'truck_number',
    ]
}
