<div class="vertical-menu">

    <div data-simplebar class="h-100">


        <div class="user-sidebar text-center">
            <div class="dropdown">
                <div class="user-img">
                    <img src="{{ asset('assets/backend/images/user.png') }}" alt="" class="rounded-circle">
                    <span class="avatar-online bg-success"></span>
                </div>
                <div class="user-info">
                    <h5 class="mt-3 font-size-16 text-white">{{ $_COOKIE['name'] }}</h5>
                    <span class="font-size-13 text-white-50">
                        Administrator
                    </span>
                </div>
            </div>
        </div>

        @include('backend/item/sidebar/admin_sidebar')

    </div>
</div>