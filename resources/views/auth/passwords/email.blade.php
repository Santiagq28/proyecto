@extends('layouts.applogin')

@section('title','Restablecer Contraseña')

@section('content')

<div class="login-box">
  <div class="card">
    <div class="card-body login-card-body" style="background-color:black">
        <div class="login-logo">
            <h1 style="color:white" >{{ __('Reset Password') }}</h1>
            <div>
                    @if (session('status'))
                        <div class="alert alert-success text-sm" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
            </div>
            
        </div>

      <form method="POST" action="{{ route('password.email') }}">
            @csrf
            <div class="input-group mb-3">
            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Correo">

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
            <div class="row mb-0">
                <div class="col-md-6 offset-md-1">
                    <button type="submit" class="btn btn-info" style="width:250px">
                        {{ __('Send Password Reset Link') }}
                    </button>
                </div>
            </div>
      </form>
  </div>
</div>

<style>
  body{
    background-image:url('https://wallpapers.com/images/high/dark-city-background-ympe22eapcw8su8e.webp');
    background-size:cover;
    font-family:monospace;
  }
</style>
@endsection
