<?php

namespace App\Http\Controllers;

use App\Models\Categoria; 
use App\Models\Galeria; 
use Illuminate\Http\Request;

class DestinoController extends Controller
{
    public function index()
    {
        $categorias = Categoria::all(); 
        $galerias = Galeria::all();
        return view('welcome', compact('categorias','galerias'));
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
