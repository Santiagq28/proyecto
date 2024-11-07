@extends('layouts.app')

@section('title','Editar Galeria')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
		<div class="container-fluid">
		</div>
    </section>
	@include('layouts.partial.msg')
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header bg-secondary">
							<h3>@yield('title')</h3>
						</div>
						<form method="POST" action="{{ route('galerias.update',$galeria) }}" enctype="multipart/form-data">
							
							@csrf
							@method('PUT')
							<div class="card-body">
								<div class="row">
									<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
										<div class="form-group label-floating">
											<label class="control-label">Titulo Galeria<strong style="color:red;">(*)</strong></label>
											<input type="text" class="form-control" name="titulo" placeholder="Galeria título" autocomplete="off" value="{{ old('titulo') }}">
											
											<label class="control-label">Descripción<strong style="color:red;">(*)</strong></label>
											<input type="text" class="form-control" name="descripcion" placeholder="{{ $galeria->descripcion }}" autocomplete="off" value="{{ $galeria->descripcion }}">
											
											@if ($galeria->imagen!=null)
												<input type="file" class="form-control" name="imagen"  autocomplete="off" value="">
												<img src="{{ asset('uploads/galerias/'.$galeria->imagen) }}" style="height: 70px; width: 70px" alt="">
											@elseif ($galeria->imagen==null)
												<label class="control-label">Imagen <strong style="color:red;">(*)</strong></label>
												<input type="file" class="form-control" name="imagen"  autocomplete="off" value="">
											@endif
											<label class="control-label">Categoria<strong style="color:red;">(*)</strong></label>
											<select name="categoria_id" class="form-control">
												<option value="">Seleccione la Categoria</option>
												@foreach($categorias as $categoria)
													<option {{ $categoria->id == $galeria->categoria->id ? 'selected' : '' }} value="{{ $categoria->id }}">{{ $categoria->nombre }}</option>
												@endforeach
											</select>
										</div>
									</div>
								</div>
								<input type="hidden" class="form-control" name="registradoPor" value="{{ Auth::user()->id }}">
							</div>
							<div class="card-footer">
								<div class="row">
									<div class="col-lg-2 col-xs-4">
										<button type="submit" class="btn btn-primary btn-block btn-flat">Editar</button>
									</div>
									<div class="col-lg-2 col-xs-4">
										<a href="{{ route('galerias.index') }}" class="btn btn-danger btn-block btn-flat">Atras</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection