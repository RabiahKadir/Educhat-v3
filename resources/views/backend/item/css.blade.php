<meta charset="utf-8" />
    <title>{{ master()->judul }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="{{ master()->judul }}" name="description" />
    <meta content="educhat" name="author" />

    <meta property="og:url" content="https://edhucatbot" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="{{ asset(master()->short) }}" />
    <meta property="og:description" content="{{ master()->judul }}"/>
    <meta property="og:image" content="{{ asset(master()->favicon) }}" />

    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('assets/backend/images/apple-touch-icon.png') }}">
	<link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/backend/images/favicon-32x32.png') }}">
	<link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/backend/images/educhat.png') }}">
	<link rel="manifest" href="{{ asset('assets/backend/imagessite.webmanifest') }}">

    <link href="{{ asset('assets/backend/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css') }}" rel="stylesheet" type="text/css" />

    <link href="{{ asset('assets/backend/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />

    <link href="{{ asset('assets/backend/css/icons.min.css') }}" rel="stylesheet" type="text/css" />

    <link href="{{ asset('assets/backend/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />

    <link href="{{ asset('assets/backend/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

    <link href="{{ asset('assets/backend/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />  
    <link href="{{ asset('assets/backend/libs/select2/css/select2.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/backend/libs/dropzone/min/dropzone.min.css') }}" rel="stylesheet" type="text/css" />