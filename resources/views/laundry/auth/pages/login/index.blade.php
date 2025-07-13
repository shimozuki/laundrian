@extends('laundry.auth.layouts.app')
@section('title', 'Laundry')

@section('content')
<section class="pt-7 mt-4 pb-5" style="background: linear-gradient(to bottom right, #035ab7ff, #035ab7ff); min-height: 100vh;">
    <div class="container-fluid px-5">
        <div class="row justify-content-center">
            <div class="col-xl-5">
                <div class="card border-0 rounded-3 shadow-lg">
                    <div class="card-body px-5 py-4">
                        <form method="POST" action="{{ route('processLogin') }}">
                            @csrf
                            <div class="row">
                                <div class="d-grid justify-content-center align-items-center mb-4">
                                    <center><img src="{{ asset('logo.png') }}" width="30%" class="mb-3" alt="Logo"></center>
                                    <span class="fw-bold text-center h4 text-dark">MASUK</span>
                                    <span class="fw-normal text-center text-muted small mb-0">Selamat datang kembali. Masukkan nama pengguna dan kata sandi Anda untuk melanjutkan.</span>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="username" class="fw-medium small h6">NAMA PENGGUNA</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <input type="text" name="username" id="username" class="form-control" autocomplete="username" required autofocus>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('username') }}</p>
                                </div>
                                <div class="col-12 mb-3 position-relative">
                                    <label for="password" class="fw-medium small h6">KATA SANDI</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <input type="password" name="password" id="password" class="form-control fakepassword" autocomplete="current-password" required>
                                        <span class="position-absolute top-50 end-0 translate-middle-y me-3">
                                            <i class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2"></i>
                                        </span>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('password') }}</p>
                                </div>
                                <div class="d-flex justify-content-center align-items-center mb-3 mt-3">
                                    <button type="submit" class="btn btn-dark w-50 rounded-0">LANJUTKAN</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection