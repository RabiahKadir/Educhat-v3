<!doctype html>
<html lang="en">
<head>
    {{ header("Set-Cookie: cross-site-cookie=whatever; SameSite=None; Secure"); }}
    <meta charset="utf-8" />
    <title>Login | {{ master()->judul }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="{{ master()->judul }}" name="description" />
    <meta content="{{ master()->judul }}" name="Borianto" /> 
	<link rel="apple-touch-icon" sizes="180x180" href="{{ asset('assets/backend/images/apple-touch-icon.png') }}">
	<link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/backend/images/favicon-32x32.png') }}">
	<link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/backend/images/educhat.png') }}">
    <link href="{{ asset('assets/backend/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" /> 
    <link href="{{ asset('assets/backend/css/icons.min.css') }}" rel="stylesheet" type="text/css" /> 
    <link href="{{ asset('assets/backend/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <link href='https://fonts.googleapis.com/css?family=Playball' rel='stylesheet'>
    <style>
        h5 {
            font-family: "Playball";
            font-size: 26px;
            font-weight: bold;
            /* -webkit-text-stroke: 1px orange; */
        }
        img{
            margin-top: -70px;
            border: 5px solid #FFF;
        }
        .card{
            /* border-radius: 30% 0% 30% 0%; */
        }
    </style>
</head>
<body class="authentication-bg bg-primary">
    <div class="home-center">
        <div class="home-desc-center">

            <div class="container py-5">


                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card">
                            <div class="card-body">
                                <div class="px-2 py-3">


                                    <div class="text-center">
                                        <a href="index.html">
                                            {{-- <img src="{{ asset('assets/backend/images/logo.png') }}" height="100" alt="logo"> --}}
                                        </a>
                                        <img src="educhat.png" class="rounded">
                                        <h5 class="text-primary mb-2 mt-2">{{ master()->short }}</h5>
                                        <p class="text-muted">LOGIN APPLICATION SYSTEM</p>
                                        <hr>
                                    </div>

                                    @if (Session::get('success'))
                                    <div class="alert alert-success" role="alert">
                                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only"></span></button>
                                        <strong>Selamat!</strong> {{ Session::get('success') }}
                                    </div>
                                    @endif

                                    @if (Session::get('error'))
                                    <div class="alert alert-danger" role="alert">
                                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only"></span></button>
                                        <strong>Maaf!</strong> {!! Session::get('error') !!}
                                    </div>
                                    @endif

                                    @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                
                                    <form class="form-horizontal mt-2 pt-2" action="{{ url('/LoginAction') }}" method="POST">
                                        @csrf
                                        <div class="mb-3">
                                            <label for="email">Email</label>
                                            <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="password">Password</label>
                                            <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password harus berupa kombinasi dari (Angka, Huruf Besar dan Huruf Kecil) minimal memiliki 8 atau lebih karakter" required>
                                        </div>
                                        <div>
                                            <button class="btn btn-primary w-100 waves-effect waves-light" type="submit">Log In</button>
                                        </div>


                                    </form>


                                </div>
                            </div>
                        </div>

                        <div class="mt-2 text-center text-white">
                            <p>Copyright © 2023 - 
								<script>
                                    document.write(new Date().getFullYear())
                                </script> 
								{{ master()->short }} V.3.1.2
                            </p>
                        </div>
                    </div>
                </div>

            </div>


        </div>
        <!-- End Log In page -->
    </div>

    <!-- JAVASCRIPT -->
    <script src="{{ asset('assets/backend/libs/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/backend/libs/bootstrap/js/bootstrap.bundle.min.js') }}">
    </script>
    <script src="{{ asset('assets/backend/libs/metismenu/metisMenu.min.js') }}"></script>
    <script src="{{ asset('assets/backend/libs/simplebar/simplebar.min.js') }}"></script>
    <script src="{{ asset('assets/backend/libs/node-waves/waves.min.js') }}"></script>

    <script src="{{ asset('assets/backend/js/app.js') }}"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.12.0/dist/cdn.min.js"></script>
    <script>
        const counter = document.querySelector('.counter');
        let num = {{ CountDown() }};

        const i = setInterval(() => {
        num -=1;
        counter.innerText = num;
        if(num === 0) clearInterval(i);
        }, 1000);
    </script>

</body>

</html>
