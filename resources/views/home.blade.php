@extends('layouts.app')

@section('content')
@vite(['resources/sass/app.scss', 'resources/js/app.js'])

<!-- <div class="w-100 min-vh-100 bg-image d-flex justify-content-center align-items-center position-relative">

    <button type="submit" class="border-0 p-2 borde button-right">
        <a class="text-danger" href="{{ route('logout') }}"
            onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
            {{ __('Logout') }}
        </a>
    </button>         
    <div class="container" >
        
        <div class="row justify-content-center" >
            
            <div class="col-md-8" >
                <div class="card" style="background-color: rgba(255,255,255,0.5);">
                    
                    <div class="card-header">{{ __('Dashboard') }}</div>
                    
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                            
                        @endif
                        
                        {{ __('You are logged in!') }}
                    
                        
                        <ul>
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link  href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>
                                
                                
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                            @csrf
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->
@endsection
<!-- <style>
    .bg-image {
      background-image: url('imagenes/imagenReset.jpg');
      background-size: cover; 
      background-position: center; 
      background-repeat: no-repeat; 
      height: 100vh; 
    }
    .button-right {
        position: absolute; 
        right: 20px;
        top: 20px; 
        border-radius: 20px; 
    }
</style> -->