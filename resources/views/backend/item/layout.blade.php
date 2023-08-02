<!doctype html>
<html lang="en">

<head>

	@include('backend/item/css')

</head>

<body>

    <div id="layout-wrapper">

        @include('backend/item/header')

        @include('backend/item/sidebar')

        <div class="main-content">

            @yield('content')

            @include('backend/item/footer')

        </div>

    </div>
    
	@include('backend/item/sidebar_right')

    <div class="rightbar-overlay"></div>

    @include('backend/item/js')

</body>

</html>