@extends('backend/item/layout')
@section('content')

<div class="page-content">

    <div class="page-title-box">
        <div class="container-fluid">
         <div class="row align-items-center">
             <div class="col-sm-6">
                 <div class="page-title">
                     <h4>SETTING</h4>
                         <ol class="breadcrumb m-0">
                             <li class="breadcrumb-item"><a href="javascript: void(0);">Perbarui</a></li>
                             <li class="breadcrumb-item active">Password</li>
                         </ol>
                 </div>
             </div>
         </div>
        </div>
     </div>

    <div class="container-fluid">

        <div class="page-content-wrapper">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            @if (Session::get('success'))
                            <div class="alert alert-success alert-dismissible fade show mb-2" role="alert">
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                <strong>Selamat!</strong> {{ Session::get('success') }}
                            </div>
                            @endif
    
                            @if (Session::get('error'))
                            <div class="alert alert-danger alert-dismissible fade show mb-2" role="alert">
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                <strong>Maaf!</strong> {{ Session::get('error') }}
                            </div>
                            @endif
    
                            @if ($errors->any())
                            <div class="alert alert-danger alert-dismissible fade show mb-2" role="alert">
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                @foreach ($errors->all() as $error)
                                <strong>Maaf!</strong> {{ $error }}
                                @endforeach
                            </div>
                            @endif
                            <form class="needs-validation" action="{{ url('/changePassword') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="singkatan" class="form-label">Password Baru</label>
                                            <input type="password" name="password" id="password" class="form-control" placeholder="Password" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password harus berupa kombinasi dari (Angka, Huruf Besar dan Huruf Kecil) minimal memiliki 8 atau lebih karakter" required>
                                            <div class="valid-feedback">
                                                Input required.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="singkatan" class="form-label">Ketik Ulang Password</label>
                                            <input type="password" name="password2" id="password2" class="form-control" placeholder="Ketik Ulang Password" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password harus berupa kombinasi dari (Angka, Huruf Besar dan Huruf Kecil) minimal memiliki 8 atau lebih karakter" required>
                                            <div class="valid-feedback">
                                                Input required.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button class="btn btn-primary" type="submit">Simpan</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection