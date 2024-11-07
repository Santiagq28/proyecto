<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\GaleriaRequest;
use App\Models\Galeria;
use App\Models\Categoria;
use Illuminate\Database\QueryException;
use Exception;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;
use Illuminate\Support\Str;

class GaleriaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $galerias = Galeria::all();
        return view('galerias.index', compact('galerias'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categorias = Categoria::all(); // Obtén todas las categorías
        return view('galerias.create', compact('categorias'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(GaleriaRequest $request)
    {
        $galeria = Galeria::create($request->all());

        $imagen = $request->file('imagen');
        $slug = Str::slug($request->titulo); // Asegúrate de usar el campo correcto
        $imagenname = "";

        if (isset($imagen)) {
            $currentDate = Carbon::now()->toDateString();
            $imagenname = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $imagen->getClientOriginalExtension();

            // Ruta donde se guardará la imagen
            $uploadPath = 'uploads/galerias';

            // Crear la carpeta si no existe
            if (!file_exists($uploadPath)) {
                mkdir($uploadPath, 0777, true);
            }

            // Mover la imagen a la carpeta creada
            $imagen->move($uploadPath, $imagenname);
        }

        // Guardar el nombre de la imagen en la base de datos o en la galería
        // $galeria->imagen = $imagenname; // Asegúrate de agregar esto si es necesario
        // $galeria->save();

        return redirect()->route('galerias.index')->with('successMsg', 'El registro se guardó exitosamente');

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
    public function edit(Galeria $galeria)
    {
        $categorias = Categoria::all();
        return view('galerias.edit',compact('galeria','categorias'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(GaleriaRequest $request, Galeria $galeria)
    {
        
        $imagen = $request->file('imagen');
        $slug = str::slug($request->id);
        if (isset($imagen))
        {
            $currentDate = Carbon::now()->toDateString();
            $imagenname = $slug.'-'.$currentDate.'-'. uniqid() .'.'. $imagen->getClientOriginalExtension();

            if (!file_exists('uploads/galerias'))
            {
                mkdir('uploads/galerias',0777,true);
            }
            $imagen->move('uploads/galerias',$imagenname);
        }else{
            $imagenname = $galeria->imagen;
        }
        
        $galeria->update(array_merge($request->except('imagen'), [
				'imagen' => $imagenname
		]));
        return redirect()->route('galerias.index')->with('successMsg', 'El registro se guardó exitosamente');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Galeria $galeria)
    {
        try {
            $galeria->delete();
            return redirect()->route('galerias.index')->with('successMsg', 'El registro se eliminó exitosamente');
        } catch (QueryException $e) {
            // Capturar y manejar violaciones de restricción de clave foránea
            Log::error('Error al eliminar el departamento: ' . $e->getMessage());
            return redirect()->route('galerias.index')->withErrors('El registro que desea eliminar tiene información relacionada. Comuníquese con el Administrador');
        } catch (Exception $e) {
            // Capturar y manejar cualquier otra excepción
            Log::error('Error inesperado al eliminar la galeria: ' . $e->getMessage());
            return redirect()->route('galerias.index')->withErrors('Ocurrió un error inesperado al eliminar el registro. Comuníquese con el Administrador');
        }
    }

    public function cambioestadogaleria(Request $request)
	{
		try {
            $estado = $request->input('estado'); // 1 o 0
            $id = $request->input('id'); // ID del elemento
    
            // Realiza la lógica para cambiar el estado (e.g., actualizar en la base de datos)
            $galeria = Galeria::find($id);
            if ($galeria) {
                $galeria->estado = $estado;
                $galeria->save();
                return response()->json(['success' => true, 'message' => 'Estado actualizado correctamente']);
            } else {
                return response()->json(['success' => false, 'message' => 'Elemento no encontrado']);
            }
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error al cambiar el estado', 'error' => $e->getMessage()]);
        }
	}
}
