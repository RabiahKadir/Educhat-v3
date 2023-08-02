<!DOCTYPE html>
<html lang="en">
<head>

    @include('backend/item/css')
	
</head>

<body>

	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>

    <div class="wrapper theme-1-active pimary-color-red">

		@include('backend/item/header')

		@include('backend/item/sidebar')

		@include('backend/item/sidebar_right')

		<div class="page-wrapper">
            
			@yield('content')
			
			@include('backend/item/footer')
			
		</div>

    </div>
    
	@include('backend/item/js')

</body>

</html>
