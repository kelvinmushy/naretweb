<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExpensiveModal extends Model
{
    use HasFactory;
    protected $fillable=[
        'exp_name',
        'exp_cost',
        'date_exp'
    ];
}
