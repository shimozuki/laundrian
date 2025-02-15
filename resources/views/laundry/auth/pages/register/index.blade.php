@extends('laundry.auth.layouts.app')
@section('title', 'Laundry')

@section('content')
<section class="pt-7 mt-4 pb-5">
    <div class="container-fluid px-5">
        <div class="row">
            <div class="col-xl-5 mx-auto">
                <div class="card border rounded-0">
                    <div class="card-body px-5">
                        <form method="POST" action="{{ route('customerCreate') }}" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="d-grid justify-content-center align-items-center mb-3">
                                    <span class="fw-normal text-center h5 mb-2">Daftar</span>
                                    <span class="fw-normal text-center small mb-0">Selamat datang kembali. Masukkan nama pengguna dan kata sandi Anda untuk melanjutkan.</span>
                                </div>
                                <div class="col-12">
                                    <label for="name" class="fw-medium small h6">Name</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <input type="text" name="name" id="name" class="form-control" autocomplete="name" required autofocus>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('name') }}</p>
                                </div>
                                <div class="col-12">
                                    <label for="username" class="fw-medium small h6">USER NAME</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <input type="text" name="username" id="username" class="form-control" autocomplete="username" required>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('username') }}</p>
                                </div>
                                <div class="col-12 position-relative">
                                    <label for="password" class="fw-medium small h6">KATA SANDI</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <input type="password" name="password" id="password" class="form-control fakepassword" autocomplete="current-password" required>
                                        <span class="position-absolute top-50 end-0 translate-middle-y me-3">
                                            <i class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2"></i>
                                        </span>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('password') }}</p>
                                </div>
                                <div class="col-12">
                                    <label for="image" class="fw-medium small h6">Image</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <input type="file" name="image" id="image" class="form-control" accept="image/*">
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('image') }}</p>
                                </div>
                                <div class="col-12">
                                    <label for="gender" class="fw-medium small h6">Gender</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <select name="gender" id="gender" class="form-control" required>
                                            <option value="">Select Gender</option>
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                            <option value="other">Other</option>
                                        </select>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('gender') }}</p>
                                </div>
                                <div class="col-12">
                                    <label for="phone" class="fw-medium small h6">Phone</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <input type="tel" name="phone" id="phone" class="form-control" autocomplete="tel" required>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('phone') }}</p>
                                </div>
                                <div class="col-12">
                                    <label for="address" class="fw-medium small h6">Address</label>
                                    <div class="form-border-bottom form-control-transparent">
                                        <textarea name="address" id="address" class="form-control" required></textarea>
                                    </div>
                                    <p class="text-danger small">{{ $errors->first('address') }}</p>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center align-items-center mb-3 mt-3">
                                <button type="submit" class="btn btn-dark w-50 rounded-0">LANJUTKAN</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection