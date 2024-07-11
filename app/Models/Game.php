<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    use HasFactory;
    protected $guarded=['id'];

    //Relacion uno a muchos
    public function stats(){
        return $this->hasMany(Stat::class);
    }

    //Relación uno a muchos inversa
    public function place(){
        return $this->belongsTo(Place::class);
    }

    public function tournament(){
        return $this->belongsTo(Tournament::class);
    }

    public function team(){
        return $this->belongsTo(Game::class);
    }
}
