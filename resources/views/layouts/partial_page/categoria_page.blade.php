<!-- Destination Start -->
<div class="container-fluid destination py-5">
    <div class="container py-5">
        <div class="mx-auto text-center mb-5" style="max-width: 900px;">
            <h5 class="section-title px-3">Destination</h5>
            <h1 class="mb-0">Popular Destination</h1>
        </div>
        <div class="tab-class text-center">
            <ul class="nav nav-pills d-inline-flex justify-content-center mb-5">
                <li class="nav-item">
                    <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                        <span class="text-dark" style="width: 150px;">All</span>
                    </a>
                </li>
                @foreach($categorias as $categoria)
                    <li class="nav-item">
                        <a class="d-flex mx-3 py-2 border border-primary bg-light rounded-pill" data-bs-toggle="pill" href="#tab-{{ $categoria->id }}">
                            <span class="text-dark" style="width: 150px;">{{ $categoria->nombre }}</span>
                        </a>
                    </li>
                @endforeach
            </ul>

            <div class="tab-content">
                <!-- Tab para todas las galerías -->
                <div id="tab-1" class="tab-pane fade show p-0 active">
                    <div class="row g-4">
                        @foreach ($galerias as $galeria) <!-- Recorrer todas las galerías -->
                            <div class="col-lg-4">
                                <div class="destination-img">
                                    <img class="img-fluid rounded w-100" src="{{ asset('uploads/galerias/' . $galeria->imagen) }}" alt="{{ $galeria->titulo }}">
                                    <div class="destination-overlay p-4">
                                        <a href="#" class="btn btn-primary text-white rounded-pill border py-2 px-3">{{ $galeria->photos_count }} Photos</a>
                                        <h4 class="text-white mb-2 mt-3">{{ $galeria->titulo }}</h4>
                                        <a href="#" class="btn-hover text-white">View All Place <i class="fa fa-arrow-right ms-2"></i></a>
                                    </div>
                                    <div class="search-icon">
                                        <a href="{{ asset('uploads/galerias/' . $galeria->imagen) }}" data-lightbox="destination-{{ $galeria->id }}">
                                            <i class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

                <!-- Tab para cada categoría -->
                @foreach($categorias as $categoria)
                    <div id="tab-{{ $categoria->id }}" class="tab-pane fade p-0">
                        <div class="row g-4">
                            @foreach ($galerias->where('categoria_id', $categoria->id) as $galeria) <!-- Filtrar galerías por id_categoria -->
                                <div class="col-lg-4">
                                    <div class="destination-img">
                                        <img class="img-fluid rounded w-100" src="{{ asset('uploads/galerias/' . $galeria->imagen) }}" alt="{{ $galeria->titulo }}">
                                        <div class="destination-overlay p-4">
                                            <a href="#" class="btn btn-primary text-white rounded-pill border py-2 px-3">{{ $galeria->photos_count }} Photos</a>
                                            <h4 class="text-white mb-2 mt-3">{{ $galeria->titulo }}</h4>
                                            <a href="#" class="btn-hover text-white">View All Place <i class="fa fa-arrow-right ms-2"></i></a>
                                        </div>
                                        <div class="search-icon">
                                            <a href="{{ asset('uploads/galerias/' . $galeria->imagen) }}" data-lightbox="destination-{{ $galeria->id }}">
                                                <i class="fa fa-plus-square fa-1x btn btn-light btn-lg-square text-primary"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<!-- Destination End -->