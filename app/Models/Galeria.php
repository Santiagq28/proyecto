<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Galeria extends Model
{
    use HasFactory;
    protected $fillable = ['titulo','descripcion' ,'categoria_id','imagen','estado','registradoPor'];
    protected $guarded = ['estado','registradoPor',];

    public function categoria()
    {
        return $this->belongsTo('App\Models\Categoria');
    }
}
