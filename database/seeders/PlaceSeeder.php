<?php

namespace Database\Seeders;

use App\Models\Place;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PlaceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Place::create([
            'name'=>'Loza UPeU 1',
            'address'=>'Campus UPeU'
        ]);
        Place::create([
            'name'=>'Loza UPeU 2',
            'address'=>'Campus UPeU'
        ]);
        Place::create([
            'name'=>'Loza UPeU 3',
            'address'=>'Campus UPeU'
        ]);
        Place::create([
            'name'=>'Loza UPeU 4',
            'address'=>'Campus UPeU'
        ]);
    }
}
