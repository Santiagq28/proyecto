<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PaisRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
		if(request()->isMethod('post')){
			return [
				'nombre' => 'required|unique:paises,nombre|regex:/^[\pL\s\-]+$/u'
			];	
		} elseif(request()->isMethod('put')){
			return [
				'nombre' => 'required|regex:/^[\pL\s\-]+$/u|unique:paises,nombre,' . $this->route('paises')
			];
		}
    }
}
