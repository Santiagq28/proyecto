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
                                    <th>imagen</th>
									<th width="60px">Estado</th>
                                    <th>descripcion</th>
									<th>created_at</th>
									<th>updated_at</th>
                                </thead>
                                <tbody>
									@foreach($galerias as $galeria)
									<tr>
										<td>{{ $galeria->id }}</td>
                                        <td>{{ $galeria->categoria->id }}</td>
										<td>{{ $galeria->titulo }}</td>
										<td>{{ $galeria->imagen }}</td>
                                        <td>{{ $galeria->estado }}</td>
                                        <td>{{ $galeria->descripcion }}</td>
										<td>{{ $galeria->created_at }}</td>
										<td>{{ $galeria->updated_at }}</td>
										<td>
											@can('galerias.cambioestadogaleria')
												<input data-type="galeria" data-id="{{$galeria->id}}" class="toggle-class" type="checkbox" data-onstyle="success" data-offstyle="danger" 
												data-toggle="toggle" data-on="Activo" data-off="Inactivo" {{ $galeria->estado ? 'checked' : '' }}>
											@endcan
										</td>
										<td>
										@can('galerias.edit')
											<a href="{{ route('galerias.edit',$galerias->id) }}" class="btn btn-info btn-sm" title="Editar"><i class="fas fa-pencil-alt"></i></a>
										@endcan
										@can('galerias.destroy')
											<form class="d-inline delete-form" action="{{ route('galerias.destroy', $galeria) }}"  method="POST">
												@csrf
												@method('DELETE')
												<button type="submit" class="btn btn-danger btn-sm" title="Eliminar"><i class="fas fa-trash-alt"></i></button>
											</form>
										@endcan
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