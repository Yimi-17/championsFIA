<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tournament extends Model
{
    use HasFactory;

    const Proceso=1;
    const Finalizado=2;
    const Cancelado=0;

    //Relación uno a muchos
    public function teams(){
        return $this->hasMany(Team::class);
    }

    public function games(){
        return $this->hasMany(Games::class);
    }
}
