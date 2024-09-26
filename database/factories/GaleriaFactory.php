<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Galeria>
 */
class GaleriaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'categoria_id' => \App\Models\Categoria::factory(),
            'titulo' => $this->faker->title,
            'descripcion' => $this->faker->text,
            'imagen' =>$this -> randomImage(),
            'estado' => "1",
            'registradoPor' => \App\Models\User::factory(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
    function randomImage(): string{
    return "imagen" . rand(1, max: 15) . ".jpg";
    }
}
