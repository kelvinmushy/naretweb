<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model
{
    use HasFactory;
    protected $fillable=[
        'product_name',
         'price',
         'qty',
         'tprice',
         'litre',
         'tlitre',
        
    ];
}
