<div id="sidebar-menu">
    <ul class="metismenu list-unstyled" id="side-menu">
        <li class="menu-title">Main</li>

        <li class="{{ request()->is('admin/dashboard') ? 'active' : '' }}">
            <a href="{{ url('/admin/dashboard') }}" class="waves-effect">
                <i class="dripicons-home"></i>
                <span>Dashboard</span>
            </a>
        </li>

        <li class="menu-title">Data Master</li>

        <li class="{{ request()->is('admin/templates') ? 'active' : '' }}">
            <a href="{{ url('/admin/templates') }}" class=" waves-effect">
                <i class="dripicons-store"></i>
                <span>Templates</span>
            </a>
        </li>


    </ul>
</div>