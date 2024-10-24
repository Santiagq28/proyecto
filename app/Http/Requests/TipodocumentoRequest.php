<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TipodocumentoRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
		if(request()->isMethod('post')){
			return [
				'nombre' => 'required|unique:tipodocumentos,nombre|regex:/^[\pL\s\-]+$/u',
				'abreviatura' => 'required|unique:tipodocumentos,abreviatura'
			];	
		} elseif(request()->isMethod('put')){
			return [
				'abreviatura' => 'required|regex:/^[\pL\s\-]+$/u|unique:tipodocumentos,abreviatura,' . $this->route('tipodocumentos')
			];
		}
    }
}
