<?php

namespace Database\Seeders;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\User;
use App\Models\Categoria;
use App\Models\Galeria;
use App\Models\Pais;
use App\Models\PaisRequest;
use App\Models\Departamento;
use App\Models\DepartamentoRequest;
use App\Models\Ciudad;
use App\Models\CiudadRequest;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        //User::factory(10)->create();
        //Categoria::factory(5)->create();
        //Galeria::factory(10)->create();
        Ciudad::factory(10)->create();
        /*User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);*/
    }
}
