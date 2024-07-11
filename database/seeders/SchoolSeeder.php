<?php

namespace Database\Seeders;

use App\Models\School;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SchoolSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        School::create([
            'name'=>'INGENIERIA DE SISTEMAS'
        ]);
        School::create([
            'name'=>'INGENIERIA DE ALIMENTOS'
        ]);
        School::create([
            'name'=>'INGENIERIA CIVIL'
        ]);
        School::create([
            'name'=>'INGENIERIA AMBIENTAL'
        ]);
    }
}
