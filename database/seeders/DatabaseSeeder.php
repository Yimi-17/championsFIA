<?php

namespace Database\Seeders;

use App\Models\Player;
use App\Models\Team;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(UserSeeder::class);
        $this->call(SchoolSeeder::class);
        $this->call(CycleSeeder::class);
        $this->call(PlaceSeeder::class);
        $this->call(TournamentSeeder::class);
        //Team::factory(20)->create();
        $this->call(TeamSeeder::class);
        Player::factory(50)->create();
    }
}
