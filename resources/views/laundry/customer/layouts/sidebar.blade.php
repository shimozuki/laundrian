<nav class="navbar sidebar navbar-expand-xl bg-primary navbar-white">
    <div class="d-flex align-items-center">
        <a href="{{ route('customer.dashboard') }}" class="navbar-brand">
            <img src="{{ asset('assets/images/logo/logo-light.png') }}" alt="logo" class="light-mode-item navbar-brand-item h-40px">
            <img src="{{ asset('assets/images/logo/logo-light.png') }}" alt="logo" class="dark-mode-item navbar-brand-item h-40px">
        </a>
    </div>
    <div class="offcanvas offcanvas-start flex-row custom-scrollbar h-100" data-bs-backdrop="true" tabindex="-1" id="offcanvasSidebar">
        <div class="offcanvas-body sidebar-content d-flex flex-column pt-4">
            <ul class="navbar-nav flex-column" id="navbar-sidebar">
                <li class="nav-item fw-normal small ms-2 my-2 text-white"> MENU </li>
                <li class="nav-item text-white"> <a href="{{ route('customer.dashboard') }}" class="nav-link @yield('active-home-dashboard') text-white"> <i class="bi bi-house me-2"></i>DASHBOARD</a> </li>
                <li class="nav-item fw-normal small ms-2 my-2 text-white"> DATA </li>
                <li class="nav-item text-white"> <a href="{{ route('customer.transaction') }}" class="nav-link @yield('active-data-transaction') text-white"><i class="bi bi-bar-chart me-2"></i> RIWAYAT TRANSAKSI</a> </li>
                <li class="nav-item text-white"> <a href="{{ route('customer.coupon') }}" class="nav-link @yield('active-data-coupon') text-white"><i class="bi bi-ticket-perforated me-2"></i> RIWAYAT KUPON</a> </li>
                <li class="nav-item text-white"> <a href="{{ route('chatify') }}" class="nav-link @yield('active-other-review') text-white"><i class="bi bi-envelope me-2"></i>PESAN</a> </li>
            </ul>
        </div>
    </div>
</nav>