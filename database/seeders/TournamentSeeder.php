<?php

namespace Database\Seeders;

use App\Models\Tournament;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TournamentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Tournament::create([
            'name'=>'CHAMPIONS FIA 2022',
            'description'=>'Campeonato por anversario de la Facultad de Ingeniería UPeU',
            'dateinit'=>'2022-06-06',
            'dateend'=>'2022-06-10',
            'status'=>'1'
        ]);
    }
}
