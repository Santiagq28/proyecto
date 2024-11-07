<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CategoriaRequest;
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
        return view('categorias.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CategoriaRequest $request)
    {
        $categoria = Categoria::create($request->all());
		return redirect()->route('categorias.index')->with('successMsg','La categoría se guardó exitosamente');
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
    public function edit(Categoria $categoria)
    {
        return view('categorias.edit',compact('categoria'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(CategoriaRequest $request, Categoria $categoria)
    {
        $categoria->update($request->all());
        return redirect()->route('categorias.index')->with('successMsg','La categoría se actualizó exitosamente');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Categoria $categoria)
    {
        try {
            $categoria->delete();
            return redirect()->route('categorias.index')->with('successMsg', 'El registro se eliminó exitosamente');
        } catch (QueryException $e) {
            // Capturar y manejar violaciones de restricción de clave foránea
            Log::error('Error al eliminar el departamento: ' . $e->getMessage());
            return redirect()->route('categorias.index')->withErrors('El registro que desea eliminar tiene información relacionada. Comuníquese con el Administrador');
        } catch (Exception $e) {
            // Capturar y manejar cualquier otra excepción
            Log::error('Error inesperado al eliminar la categoria: ' . $e->getMessage());
            return redirect()->route('categorias.index')->withErrors('Ocurrió un error inesperado al eliminar el registro. Comuníquese con el Administrador');
        }
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
