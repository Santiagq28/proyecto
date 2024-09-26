@extends('layouts.applogin')

@section('title','Restablecer Contraseña')

@section('content')

<div class="login-box">
  <div class="card">
    <div class="card-body login-card-body">
        <div class="login-logo">
            <a href="../../index2.html">{{ __('Reset Password') }}</a>
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
            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

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
                <div class="col-md-6 offset-md-4">
                    <button type="submit" class="btn btn-primary">
                        {{ __('Send Password Reset Link') }}
                    </button>
                </div>
            </div>
      </form>
  </div>
</div>


@endsection
