@extends('backend/item/layout')
@section('content')
<script src="https://cdn.anychart.com/releases/8.11.0/js/anychart-core.min.js"></script>
<script src="https://cdn.anychart.com/releases/8.11.0/js/anychart-radar.min.js"></script>
    <style type="text/css">      
      .chart { 
        width: 100%; 
        height: 550px; 
        margin: 0; 
        padding: 0; 
      } 
    </style>
<div class="page-content">

    <!-- start page title -->
    <div class="page-title-box">
        <div class="container-fluid">
         <div class="row align-items-center">
             <div class="col-sm-6">
                 <div class="page-title">
                     <h4>Dashboard</h4>
                         <ol class="breadcrumb m-0">
                             <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboard</a></li>
                             <li class="breadcrumb-item active">EduChatbot-V.3.1.2 - UKM 2023</li>
                         </ol>
                 </div>
             </div>
             <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <a href="{{ url('/logout') }}" class="btn btn-danger btn-sm" title="logout"><i class="mdi mdi-power"></i></a>
                </div>
             </div>
         </div>
        </div>
     </div>
     <!-- end page title -->    


    <div class="container-fluid">

        <div class="page-content-wrapper">

            <div class="row">

                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h3 class=""><b>Selamat Datang [ {{ $_COOKIE['name'] }} ]</b></h3><br>
                            <span>Di ({{ master()->short }})</span>

                        </div>
                    </div>
                </div>

            </div>


        </div>


    </div>
</div>

@endsection