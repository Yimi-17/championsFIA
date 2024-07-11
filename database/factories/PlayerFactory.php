<?php

namespace Database\Factories;

use App\Models\Team;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Player>
 */
class PlayerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->firstName(),
            'lastname'=>$this->faker->lastName(),
            'birthdate'=>$this->faker->date(),
            'dni'=>$this->faker->numerify('########'),
            'type'=>$this->faker->randomElement(['Varon','Dama']),
            'number'=>$this->faker->numberBetween(1,30),
            'observations'=>$this->faker->text(),
            'team_id'=>Team::all()->random()->id,
        ];
    }
}
