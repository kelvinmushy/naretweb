<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContainerModel extends Model
{
    use HasFactory;
    protected $fillable=[
        'staffing_id',
        'container_from',
        'container_to',
        'container_cost',
        'admistration_office',
        'date_in',
        'pay_status',
        'date_pay',
    ];
}
