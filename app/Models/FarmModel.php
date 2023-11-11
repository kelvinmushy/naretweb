<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FarmModel extends Model
{
    use HasFactory;
    protected $fillable=[
        'invoice_number',
        'company_id ',
        'date_in',
        'vat',
        'discount',
        'net_total',
        'amount_paid',
        'amount_due',
        'invoice_status',
        'start_date',
        'due_date',
        'payment_status'

    ];
}
