<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    use HasFactory;
    protected $fillable = ['nombre', 'estado','registradoPor' ];
    protected $guarded = ['estado','registradoPor'];
    

    public function galerias()
    {
        return $this->hasMany('App\Models\Galeria', 'categoria_id');
    }
}
