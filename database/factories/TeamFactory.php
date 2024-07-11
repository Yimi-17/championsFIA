<?php

namespace Database\Factories;

use App\Models\Cycle;
use App\Models\School;
use App\Models\Tournament;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Team>
 */
class TeamFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->firstNameMale,
            'description'=>$this->faker->sentence,
            'type'=>$this->faker->randomElement(['Masculino','Femenino']),
            'color'=>$this->faker->randomElement(['Rojo','Azul','Amarillo','Anaranjado','Verde','Negro','Blanco','Rosado','Marrón','Gris','Morado','Crema','Celeste','Indigo','Jade','Lila','Menta','Olivia','Coral','Zafiro']),
            'status'=>$this->faker->randomElement(['Activo','Inactivo']),
            'cycle_id'=>Cycle::all()->random()->id,
            'school_id'=>School::all()->random()->id,
            'tournament_id'=>Tournament::all()->random()->id
        ];
    }
}
