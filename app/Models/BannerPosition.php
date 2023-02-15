<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BannerPosition extends Model
{
    use HasFactory;
       
    protected $table='banner_positions';
    protected $fillable=['name','position','status'];
}