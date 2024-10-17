<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use Illuminate\Database\QueryException;
use Exception;
use Illuminate\Support\Facades\Log;

class CategoriaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categorias = Categoria::all();
        return view('categorias.index', compact('categorias'));
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
    public function cambioestadocategoria(Request $request)
	{
		try {
            $estado = $request->input('estado'); // 1 o 0
            $id = $request->input('id'); // ID del elemento
    
            // Realiza la lógica para cambiar el estado (e.g., actualizar en la base de datos)
            $categoria = Categoria::find($id);
            if ($categoria) {
                $categoria->estado = $estado;
                $categoria->save();
                return response()->json(['success' => true, 'message' => 'Estado actualizado correctamente']);
            } else {
                return response()->json(['success' => false, 'message' => 'Elemento no encontrado']);
            }
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error al cambiar el estado', 'error' => $e->getMessage()]);
        }
	}
}
