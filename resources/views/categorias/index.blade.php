@extends('layouts.app')

@section('title','Listado de Categorias')

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
								<a href="{{ route('categorias.create') }}" class="btn btn-primary float-right" title="Nuevo"><i class="fas fa-plus nav-icon"></i></a>
							
						</div>
						<div class="card-body">
							<table id="example1" class="table table-bordered table-hover" style="width:100%">
								<thead class="text-primary">
									<th width="10px">ID</th>
									<th>Nombre</th>
									<th width="60px">Estado</th>
									<th width="50px">Acción</th>
                                </thead>
                                <tbody>
									@foreach($categorias as $categoria)
									<tr>
										<td>{{ $categoria->id }}</td>
										<td>{{ $categoria->nombre }}</td>
										<td>
												<input data-type="categoria" data-id="{{$categoria->id}}" class="toggle-class" type="checkbox" data-onstyle="success" data-offstyle="danger" 
												data-toggle="toggle" data-on="Activo" data-off="Inactivo" {{ $categoria->estado ? 'checked' : '' }}>
										</td>
										<td>
											<a href="{{ route('categorias.edit', $categoria->id) }}" class="btn btn-info btn-sm" title="Editar">
												<i class="fas fa-pencil-alt"></i>
											</a>
												<form class="d-inline delete-form" action="{{ route('categorias.destroy', $categoria) }}"  method="POST">
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