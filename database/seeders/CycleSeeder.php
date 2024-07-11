<?php

namespace Database\Seeders;

use App\Models\Cycle;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CycleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Cycle::create([
            'name'=>'PRIMERO'
        ]);
        Cycle::create([
            'name'=>'SEGUNDO'
        ]);
        Cycle::create([
            'name'=>'TERCERO'
        ]);
        Cycle::create([
            'name'=>'CUARTO'
        ]);
        Cycle::create([
            'name'=>'QUINTO'
        ]);
        Cycle::create([
            'name'=>'SEXTO'
        ]);
        Cycle::create([
            'name'=>'SEPTIMO'
        ]);
        Cycle::create([
            'name'=>'OCTAVO'
        ]);
        Cycle::create([
            'name'=>'NOVENO'
        ]);
        Cycle::create([
            'name'=>'DECIMO'
        ]);
    }
}
