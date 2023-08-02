@extends('backend/item/layout')
@section('content')
<div class="container-fluid">

    <div class="row heading-bg">
        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
          <h5 class="txt-dark">Coming Soon</h5>
        </div>
        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
          <ol class="breadcrumb">
            <li><a href="index.html">Dashboard</a></li>
            <li class="active"><span>Coming Soon</span></li>
          </ol>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-default card-view">
                <div class="panel-wrapper collapse in">
                    <div class="panel-body">
                        <div class="table-wrap">
                            <img style="display:block;margin:auto;" src="{{ asset('assets/backend/dist/img/comingsoon.png') }}" alt="">
                        </div>	
                    </div>	
                </div>	
            </div>	
        </div>	
    </div>
    
</div>	

@endsection