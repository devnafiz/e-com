<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    protected $table='banners';
    protected $fillable=['name','position_id','image','status','width','height'];

    public function position(){

        return $this->belongsTo(BannerPosition::class,'position_id','id');
    }
}
