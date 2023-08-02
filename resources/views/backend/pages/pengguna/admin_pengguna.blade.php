@extends('backend/item/layout')
@section('content')

<div class="page-content">

    <div class="page-title-box">
        <div class="container-fluid">
         <div class="row align-items-center">
             <div class="col-sm-6">
                 <div class="page-title">
                     <h4>Administrator</h4>
                         <ol class="breadcrumb m-0">
                             <li class="breadcrumb-item"><a href="javascript: void(0);">Pengguna</a></li>
                             <li class="breadcrumb-item active">Administrator</li>
                         </ol>
                 </div>
             </div>
             <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <a href="#" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target=".add"><i class="fa fa-folder-open"></i> Data Baru</a>
                    <a href="{{ url('/admin/pengguna-admin-cetak') }}" class="btn btn-warning btn-sm" target="blank_"><i class="fa fa-print"></i></a>
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

                            <table id="datatable" class="table table-bordered dt-responsive" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>Otoritas</th>
                                    <th>Status</th>
                                    <th>Aksi</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $key => $p)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $p->name }}</td>
                                            <td>{{ $p->email }}</td>
                                            <td>{{ $p->hak_akses }}</td>
                                            <td>
                                                @if($p->status==1)
                                                Aktif
                                                @else
                                                Nonaktif
                                                @endif
                                            </td>
                                            <td>
                                                <a href="#" data-bs-toggle="modal" data-bs-target=".edit{{ $p->id }}" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="#" data-bs-toggle="modal" data-bs-target=".hapus{{ $p->id }}" title="Hapus"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>

                                        <div class="modal fade edit{{ $p->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title mt-0" id="myLargeModalLabel">Edit Data</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                            
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form class="needs-validation" action="{{ url('/admin/penggunaAdminUpdate') }}" method="POST">
                                                            @csrf
                                                            <input type="hidden" name="id" class="form-control" value="{{ $p->id }}" required>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Nama Lengkap</label>
                                                                        <input type="text" name="name" class="form-control" value="{{ $p->name }}" required>
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="mb-3">
                                                                        <label for="" class="form-label">Email</label>
                                                                        <input type="email" name="email" class="form-control" value="{{ $p->email }}" disabled required>
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="mb-3">
                                                                        <label for="" class="form-label">Password</label>
                                                                        <input type="password" name="password" class="form-control" placeholder="Password" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password harus berupa kombinasi dari (Angka, Huruf Besar dan Huruf Kecil) minimal memiliki 8 atau lebih karakter">
                                                                        <input type="hidden" name="password2" class="form-control" value="{{ $p->password }}" required>
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Status</label>
                                                                        <select class="form-select" name="status" required>
                                                                            <option @if($p->status==1) selected @endif value="1">Aktif</option>
                                                                            <option @if($p->status==0) selected @endif value="0">Nonaktif</option>
                                                                        </select>
                                                                        <div class="invalid-feedback">
                                                                            Input required.
                                                                        </div>
                                        
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <button class="btn btn-primary" type="submit">Submit</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal fade hapus{{ $p->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title mt-0" id="myLargeModalLabel">Hapus Data</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                            
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Anda yakin ingin menghapus data ini?</p>
                                                        <form class="needs-validation" action="{{ url('/admin/penggunaAdminDelete') }}" method="POST">
                                                            @csrf
                                                            <input type="hidden" name="id" class="form-control" value="{{ $p->id }}" required>
                                                            
                                                            <div>
                                                                <button class="btn btn-primary" type="submit">Hapus</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                               
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade add" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0" id="myLargeModalLabel">Data Baru</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    
                </button>
            </div>
            <div class="modal-body">
                <form class="needs-validation" action="{{ url('/admin/penggunaAdminInsert') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Nama Lengkap</label>
                                <input type="text" name="name" class="form-control" placeholder="Nama Lengkap" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Otoritas</label>
                                <select class="form-select" name="hak_akses_id" required>
                                    @foreach ($akses as $h)
                                        <option @if($h->id==1) selected @else disabled @endif value="{{ $h->id }}">{{ $h->hak_akses }}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid data.
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Email" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Password" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password harus berupa kombinasi dari (Angka, Huruf Besar dan Huruf Kecil) minimal memiliki 8 atau lebih karakter" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Status</label>
                                <select class="form-select" name="status" required>
                                    <option value="">Pilih Status</option>
                                    <option value="1">Aktif</option>
                                    <option value="0">Nonaktif</option>
                                </select>
                                <div class="invalid-feedback">
                                    Input required.
                                </div>

                            </div>
                        </div>
                    </div>
                    <div>
                        <button class="btn btn-primary" type="submit">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection