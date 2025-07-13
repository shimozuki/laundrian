<nav class="navbar sidebar navbar-expand-xl bg-primary navbar-white">
    <div class="d-flex align-items-center">
        <a href="{{ route('admin.dashboard') }}" class="navbar-brand text-white">
            <img src="{{ asset('assets/images/logo/logo-light.png') }}" alt="logo" class="light-mode-item navbar-brand-item h-40px">
            <img src="{{ asset('assets/images/logo/logo-light.png') }}" alt="logo" class="dark-mode-item navbar-brand-item h-40px">
        </a>
    </div>

    <div class="offcanvas offcanvas-start flex-row custom-scrollbar h-100" data-bs-backdrop="true" tabindex="-1" id="offcanvasSidebar">
        <div class="offcanvas-body sidebar-content d-flex flex-column pt-4">
            <ul class="navbar-nav flex-column" id="navbar-sidebar">
                <li class="nav-item text-uppercase fw-bold small text-light ms-2 mb-2"> MENU </li>
                <li class="nav-item">
                    <a href="{{ route('admin.dashboard') }}" class="nav-link text-white @yield('active-home-dashboard')">
                        <i class="bi bi-house me-2"></i> DASHBOARD
                    </a>
                </li>

                <li class="nav-item text-uppercase fw-bold small text-light ms-2 mt-4 mb-2"> HALAMAN </li>
                <li class="nav-item">
                    <a href="{{ route('admin.package') }}" class="nav-link text-white @yield('active-page-package')">
                        <i class="bi bi-box-seam me-2"></i> PAKET
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.owner') }}" class="nav-link text-white @yield('active-page-owner')">
                        <i class="bi bi-person-badge me-2"></i> PEMILIK
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.customer') }}" class="nav-link text-white @yield('active-page-customer')">
                        <i class="bi bi-people me-2"></i> PELANGGAN
                    </a>
                </li>

                <li class="nav-item text-uppercase fw-bold small text-light ms-2 mt-4 mb-2"> DATA </li>
                <li class="nav-item">
                    <a href="{{ route('admin.transaction') }}" class="nav-link text-white @yield('active-data-transaction')">
                        <i class="bi bi-cash-stack me-2"></i> TRANSAKSI
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.report') }}" class="nav-link text-white @yield('active-data-report')">
                        <i class="bi bi-bar-chart me-2"></i> LAPORAN
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.coupon') }}" class="nav-link text-white @yield('active-data-coupon')">
                        <i class="bi bi-ticket-perforated me-2"></i> KUPON
                    </a>
                </li>

                <li class="nav-item text-uppercase fw-bold small text-light ms-2 mt-4 mb-2"> LAINNYA </li>
                <li class="nav-item">
                    <a href="{{ route('admin.review') }}" class="nav-link text-white @yield('active-other-review')">
                        <i class="bi bi-chat-left-text me-2"></i> ULASAN
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('chatify') }}" class="nav-link text-white @yield('active-other-review')">
                        <i class="bi bi-envelope me-2"></i> PESAN
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>