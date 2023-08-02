<div id="sidebar-menu">
    <ul class="metismenu list-unstyled" id="side-menu">
        <li class="menu-title">Main</li>

        <li class="{{ request()->is('opd/dashboard') ? 'active' : '' }}">
            <a href="{{ url('/opd/dashboard') }}" class="waves-effect">
                <i class="dripicons-home"></i>
                <span>Dashboard</span>
            </a>
        </li>

        <li class="menu-title">Transaksi</li>

        <li>
            <a href="{{ url('opd/indikator') }}" class=" waves-effect">
                <i class="dripicons-store"></i>
                <span>Penilaian Indikator</span>
            </a>
        </li>

        <li class="menu-title">Settings</li>
        
        <li>
            <a href="{{ url('/change-password') }}" class=" waves-effect">
                <i class="dripicons-lock"></i>
                <span>Ganti Password</span>
            </a>
        </li>

    </ul>
</div>