<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DepartamentoRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
		if(request()->isMethod('post')){
			return [
				'pais_id' => 'required',
				'nombre' => 'required|unique:departamentos,nombre|regex:/^[\pL\s\-]+$/u'
				
			];	
		} elseif(request()->isMethod('put')){
			return [
				'nombre' => 'required|regex:/^[\pL\s\-]+$/u|unique:departamentos,nombre,' . $this->route('departamentos')
			];
		}
    }
	
	public function attributes()
    {
        return [
            'pais_id' => 'país'
        ];
    }
}
