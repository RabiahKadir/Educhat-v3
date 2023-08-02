@extends('backend/item/layout')
@section('content')

<div class="page-content">

    <div class="page-title-box">
        <div class="container-fluid">
         <div class="row align-items-center">
             <div class="col-sm-6">
                 <div class="page-title">
                     <h4>Templates</h4>
                         <ol class="breadcrumb m-0">
                             <li class="breadcrumb-item"><a href="javascript: void(0);">Data Master</a></li>
                             <li class="breadcrumb-item active">Templates</li>
                         </ol>
                 </div>
             </div>
             <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <a href="#" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target=".add"><i class="fa fa-folder-open"></i> Add Template</a>
                    {{-- <a href="{{ url('/admin/opd-cetak') }}" class="btn btn-warning btn-sm" target="blank_"><i class="fa fa-print"></i></a> --}}
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

                            <h4 class="header-title">Templates</h4>
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
                            <div class="body table-responsive" style="overflow-x:scroll">
                            <table id="datatable" class="table table-bordered" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Name</th>
                                    <th>Response</th>
                                    <th>Descriptions</th>
                                    <th>Keyword</th>
                                    <th>Category</th>
                                    <th>Subject</th>
                                    <th>Predicate</th>
                                    <th>Object</th>
                                    <th>Aksi</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $key => $p)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $p->templatename }}</td>
                                            <td>{{ $p->templateresponse }}</td>
                                            <td>{{ $p->templatedescriptions }}</td>
                                            <td>{{ $p->templatekeyword }}</td>
                                            <td>{{ $p->templatecategory }}</td>
                                            <td>{{ $p->subject }}</td>
                                            <td>{{ $p->predicate }}</td>
                                            <td>{{ $p->object }}</td>
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
                                                        <form class="needs-validation" action="{{ url('/admin/opdUpdate') }}" method="POST" enctype="multipart/form-data">
                                                            @csrf
                                                            <input type="text" name="id" id="id" class="form-control" value="{{ $p->id }}" required>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Template Name</label>
                                                                        <input type="text" name="templatename" class="form-control" value="{{ $p->templatename }}">
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Template Response</label>
                                                                        <input type="text" name="templateresponse" class="form-control" value="{{ $p->templateresponse }}">
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Template Descriptions</label>
                                                                        <input type="text" name="templatedescriptions" class="form-control" value="{{ $p->templatedescriptions }}">
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Template Keyword</label>
                                                                        <input type="text" name="templatekeyword" class="form-control" value="{{ $p->templatekeyword }}">
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Template Category</label>
                                                                        <input type="text" name="templatecategory" class="form-control" value="{{ $p->templatecategory }}">
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Subject</label>
                                                                        <input type="text" name="subject" class="form-control" value="{{ $p->subject }}">
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Predicate</label>
                                                                        <input type="text" name="predicate" class="form-control" value="{{ $p->predicate }}">
                                                                        <div class="valid-feedback">
                                                                            Input required.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Object</label>
                                                                        <input type="text" name="object" class="form-control" value="{{ $p->object }}">
                                                                        <div class="valid-feedback">
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
                                                        <form class="needs-validation" action="{{ url('/admin/opdDelete') }}" method="POST" enctype="multipart/form-data">
                                                            @csrf
                                                            <input type="hidden" name="id" id="id" class="form-control" value="{{ $p->id }}" required>
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
                <form class="needs-validation" action="{{ url('/admin/opdInsert') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Template Name</label>
                                <input type="text" name="templatename" class="form-control" placeholder="Template Name" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Template Response</label>
                                <input type="text" name="templateresponse" class="form-control" placeholder="Template Response" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Template Descriptions</label>
                                <input type="text" name="templatedescriptions" class="form-control" placeholder="Template Descriptions" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Template Keyword</label>
                                <input type="text" name="templatekeyword" class="form-control" placeholder="Template Keyword" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Template Ctegory</label>
                                <input type="text" name="templatecategory" class="form-control" placeholder="Template Ctegory" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Subject</label>
                                <input type="text" name="subject" class="form-control" placeholder="Subject" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Predicate</label>
                                <input type="text" name="predicate" class="form-control" placeholder="Predicate" required>
                                <div class="valid-feedback">
                                    Input required.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Object</label>
                                <input type="text" name="object" class="form-control" placeholder="Object" required>
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

@endsection