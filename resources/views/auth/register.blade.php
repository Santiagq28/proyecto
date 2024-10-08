@extends('layouts.applogin')

@section('title')

@section('content')

<div class="login-box" style="font-family:monospace; background-color:black">
  
  <!-- /.login-logo -->

  <div class="card" style="background-color:black">
    <div class="card-body login-card-body" style="background-color:black">
        <div class="login-logo">
            <h1 style="color:white">Registro</h1>
        </div>

      <form method="POST" action="{{ route('register') }}">
        @csrf
        <div class="input-group mb-3">
            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Nombre Completo" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
                
            <div class="input-group-append">
                    <div class="input-group-text">
                    <span class="fas fa-user"></span>
                    </div>
            </div>
        </div>

        <div class="input-group mb-3">
            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Correo Electrónico" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                    </div>
                </div>
        </div>
        <div class="input-group mb-3">
            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Contraseña" name="password" required autocomplete="current-password">

            @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
            <div class="input-group-append">
                <div class="input-group-text">
                <span class="fas fa-lock"></span>
                </div>
            </div>
        </div>
        <div class="input-group mb-3">
            <input id="password-confirm" type="password" class="form-control" placeholder="Confirmar Contraseña" name="password_confirmation" required autocomplete="new-password">
            <div class="input-group-append">
                <div class="input-group-text">
                <span class="fas fa-lock"></span>
                </div>
            </div>
        </div>

    </div>

    <div class="row m-2" style="background-color:black">
        <div class="col-4">
            <button type="submit" class="btn btn-info btn-block">{{ __('Register') }}</button>
        </div>
        <div class="col-8">
            <a href="{{ route('login') }}"
                    class="btn btn-dark btn-block">{{ __('I already have an account') }}</a>
        </div>
        </div>
    </div>
  </div>
</div>

<style>
  body{
    background-image:url('https://wallpapers.com/images/high/dark-city-background-ympe22eapcw8su8e.webp');
    background-size:cover;
  }
</style>


@endsection









