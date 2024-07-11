<?php

namespace Database\Seeders;

use App\Models\Team;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TeamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Team::create([
            'name'=>'Ciclo III-G1',
            'description'=>'Equipo del ciclo III Grupo 1',
            'type'=>'Masculino',
            'color'=>'indigo',
            'status'=>'Activo',
            'cycle_id'=>3,
            'school_id'=>1,
            'tournament_id'=>1,
        ]);
        Team::create([
            'name'=>'Ciclo III-G2',
            'description'=>'Equipo del ciclo III Grupo 2',
            'type'=>'Masculino',
            'color'=>'sky',
            'status'=>'Activo',
            'cycle_id'=>3,
            'school_id'=>1,
            'tournament_id'=>1,
        ]);
        Team::create([
            'name'=>'Ciclo IV',
            'description'=>'Equipo del ciclo IV',
            'type'=>'Masculino',
            'color'=>'pink',
            'status'=>'Activo',
            'cycle_id'=>4,
            'school_id'=>1,
            'tournament_id'=>1,
        ]);
        Team::create([
            'name'=>'Ciclo V',
            'description'=>'Equipo del ciclo V',
            'type'=>'Masculino',
            'color'=>'rose',
            'status'=>'Activo',
            'cycle_id'=>5,
            'school_id'=>1,
            'tournament_id'=>1,
        ]);
        Team::create([
            'name'=>'Ciclo VI',
            'description'=>'Equipo del ciclo VI',
            'type'=>'Masculino',
            'color'=>'green',
            'status'=>'Activo',
            'cycle_id'=>6,
            'school_id'=>1,
            'tournament_id'=>1,
        ]);
    }
}
