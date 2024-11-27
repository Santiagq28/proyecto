@extends('layouts.app')

@section('title','Listado de Galerias')

@section('content')

<div class="content-wrapper">
    <section class="content-header" style="text-align: right;">
		<div class="container-fluid">
		</div>
    </section>
	@include('layouts.partial.msg')
    <section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header bg-secondary" style="font-size: 1.75rem;font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem;">
							@yield('title')
							
								<a href="{{ route('galerias.create') }}" class="btn btn-primary float-right" title="Nuevo"><i class="fas fa-plus nav-icon"></i></a>
							
								
						</div>
						<div class="card-body">
							<table id="example1" class="table table-bordered table-hover" style="width:100%">
								<thead class="text-primary">
									<th width="10px">ID</th>
									<th>categoria_id</th>
                                    <th>titulo</th>
                                    <th>descripcion</th>
									<th>imagen</th>
									<th width="60px">Estado</th>
									<th width="50px">Acción</th>
                                </thead>
                                <tbody>
									@foreach($galerias as $galeria)
									<tr>
										<td>{{ $galeria->id }}</td>
                                        <td>{{ $galeria->categoria->id }}</td>
										<td>{{ $galeria->titulo }}</td>
										<td>{{ $galeria->descripcion }}</td>
										<td>@if ($galeria->imagen!=null)
												<img src="{{ asset('uploads/galerias/'.$galeria->imagen) }}" style="height: 70px; width: 70px" alt="">
											@elseif ($galeria->imagen==null)
												<label class="control-label">Imagen <strong style="color:red;">(*)</strong></label>
											@endif
										</td>
										<td>
											
												<input data-type="galeria" data-id="{{$galeria->id}}" class="toggle-class" type="checkbox" data-onstyle="success" data-offstyle="danger" 
												data-toggle="toggle" data-on="Activo" data-off="Inactivo" {{ $galeria->estado ? 'checked' : '' }}>
											
										</td>
										<td>
										
											<a href="{{ route('galerias.edit', $galeria->id) }}" class="btn btn-info btn-sm" title="Editar">
												<i class="fas fa-pencil-alt"></i>
											</a>
											<form class="d-inline delete-form" action="{{ route('galerias.destroy', $galeria) }}"  method="POST">
												@csrf
												@method('DELETE')
												<button type="submit" class="btn btn-danger btn-sm" title="Eliminar">
														<i class="fas fa-trash-alt"></i>
													</button>
											</form>
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
    </section>
 </div>
@endsection