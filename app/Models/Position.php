<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Position extends Model{
    use HasFactory;
    protected $guarded=['id'];
    //relación uno a uno inversa
    public function team(){
        return $this->belongsTo(Team::class);
    }
}
