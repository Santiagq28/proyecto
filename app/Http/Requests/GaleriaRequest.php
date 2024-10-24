<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class GaleriaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        if(request()->isMethod('post')){
			return [
                'categoria_id' => 'required|exists:categorias,id',
				'titulo' => 'required|unique:galerias,titulo|regex:/^[\pL\s\-]+$/u',
                'descripcion' => 'required|regex:/^[\pL\s\-]+$/u',
                'imagen' => 'required|image|mimes:jpeg,png,jpg|max:2048'
			];	
		} elseif(request()->isMethod('put')){
			return [
				'titulo' => 'required|regex:/^[\pL\s\-]+$/u|unique:galerias,titulo,' . $this->route('galerias')
			];
		}
    }

    public function attributes()
    {
        return[
            'categoria_id' => 'categoria'
        ];
    }

}
