<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
        <img src="{{asset('backend/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">HH Database</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{asset('backend/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{(auth::check()) ? auth()->user()->name : "Please login"}}</a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item menu-open">
                    <a href="/home" class="nav-link {{ (Route::is('home')) ? "active" : "" }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item menu-open">
                    <a href="/pivot" class="nav-link {{ (Illuminate\Support\Facades\Route::is('pivot')) ? "active" : "" }}">
                        <i class="nav-icon fa fa-table"></i>
                        <p>
                            Pivot table
                        </p>
                    </a>
                </li>
                <li class="nav-item menu-open">
                    <a href="/maps" class="nav-link {{ (Illuminate\Support\Facades\Route::is('maps')) ? "active" : "" }}">
                        <i class="nav-icon fa fa-globe"></i>
                        <p>
                            Leaflet maps
                        </p>
                    </a>
                </li>
                <li class="nav-item menu-open">
                    <a href="/template" class="nav-link {{ (Illuminate\Support\Facades\Route::is('template')) ? "active" : "" }}">
                        <i class="nav-icon fas fa-spell-check"></i>
                        <p>
                            Template
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="dropdown-item" href="{{ route('logout') }}"                          
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
