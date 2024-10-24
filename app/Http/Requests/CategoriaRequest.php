<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoriaRequest extends FormRequest
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
				'nombre' => 'required|unique:categorias,nombre|regex:/^[\pL\s\-]+$/u'
			];	
		} elseif(request()->isMethod('put')){
			return [
				'nombre' => 'required|regex:/^[\pL\s\-]+$/u|unique:categorias,nombre,' . $this->route('categorias')
			];
		}
    }
}
