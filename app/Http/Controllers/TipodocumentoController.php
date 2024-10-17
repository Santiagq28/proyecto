<?php

namespace App\Http\Controllers;

use App\Models\Tipodocumento;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Requests\TipodocumentoRequest;
use Illuminate\Database\QueryException;
use Exception;
use Illuminate\Support\Facades\Log;

class TipodocumentoController extends Controller
{
    public function index()
    {
        $tipodocumentos = Tipodocumento::all();
        return view('tipodocumentos.index',compact('tipodocumentos'));
    }

    public function create()
    {
        return view('tipodocumentos.create');
    }

    public function store(TipodocumentoRequest $request)
    {
		$tipodocumento = Tipodocumento::create($request->all());
		return redirect()->route('tipodocumentos.index')->with('successMsg','El registro se guardó exitosamente');
    }

    public function show(Tipodocumento $pais)
    {
        //
    }

    public function edit(Tipodocumento $tipodocumento)
    {
        return view('tipodocumentos.edit',compact('tipodocumento'));
    }

    public function update(TipodocumentoRequest $request, Tipodocumento $tipodocumento)
    {
        $tipodocumento->update($request->all());
        return redirect()->route('tipodocumentos.index')->with('successMsg','El registro se actualizó exitosamente');
    }
	
	public function destroy(Tipodocumento $tipodocumento)
    {
		try {
            $tipodocumento->delete();
            return redirect()->route('tipodocumentos.index')->with('successMsg', 'El registro se eliminó exitosamente');
        } catch (QueryException $e) {
            // Capturar y manejar violaciones de restricción de clave foránea
            Log::error('Error al eliminar la tipodocumento: ' . $e->getMessage());
            return redirect()->route('tipodocumentos.index')->withErrors('El registro que desea eliminar tiene información relacionada. Comuníquese con el Administrador');
        } catch (Exception $e) {
            // Capturar y manejar cualquier otra excepción
            Log::error('Error inesperado al eliminar la tipodocumento: ' . $e->getMessage());
            return redirect()->route('tipodocumentos.index')->withErrors('Ocurrió un error inesperado al eliminar el registro. Comuníquese con el Administrador');
        }
    }
	
	public function cambioestadotipodocumento(Request $request)
	{
		$tipodocumento = Tipodocumento::find($request->id);
		$tipodocumento->estado=$request->estado;
		$tipodocumento->save();
	}
}