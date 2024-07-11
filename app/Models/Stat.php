<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stat extends Model
{
    protected $guarded=['id'];
    use HasFactory;

    //Relacion uno a muchos inversa
    public function game(){
        return $this->belongsTo(Game::class);
    }

    public function team(){
        return $this->belongsTo(Team::class);
    }
}
