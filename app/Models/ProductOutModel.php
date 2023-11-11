<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductOutModel extends Model
{
    use HasFactory;
    protected $fillable=[
        'product_id',
        'qty',
        'price',
        'tprice',
        'litre',
        'tlitre',
        'date_out'
    ];
}
