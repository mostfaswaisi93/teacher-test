@include('admin.partials.menu')

<!-- BEGIN: Sidebar -->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto">
                <a class="navbar-brand" href="{{ route('admin.index') }}">
                    <img src="{{ url('admin_files/logo.png') }}" alt="avatar" height="45" width="45">
                    <h2 class="brand-text mb-0" style="color: #fff">{{ trans('admin.teacher') }}</h2>
                </a>
            </li>
        </ul>
    </div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class="navigation-header"></li>
            <li {{ request()->route()->getName() === 'admin.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.index') }}" class="nav-link">
                    <i class="fa fa-home"></i>
                    <span class="title">{{ trans('admin.home') }}</span>
                </a>
            </li>
            @if (auth()->user()->hasPermission('read_brands'))
            <li {{ request()->route()->getName() === 'admin.brands.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.brands.index') }}" class="nav-link">
                    <i class="fa fa-tags"></i>
                    <span class="title">{{ trans('admin.brands') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_locations'))
            <li {{ request()->route()->getName() === 'admin.locations.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.locations.index') }}" class="nav-link">
                    <i class="fa fa-map"></i>
                    <span class="title">{{ trans('admin.locations_management') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_notifications'))
            <li {{ request()->route()->getName() === 'admin.notifications.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.notifications.index') }}" class="nav-link">
                    <i class="fa fa-bell"></i>
                    <span class="title">{{ trans('admin.notifications') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_contacts'))
            <li {{ request()->route()->getName() === 'admin.contacts.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.contacts.index') }}" class="nav-link">
                    <i class="ficon feather icon-mail"></i>
                    <span class="title">{{ trans('admin.contacts') }}</span>
                </a>
            </li>
            @endif
            <li class="nav-item">
                <a href="#">
                    <i class="fa fa-info-circle"></i>
                    <span class="menu-title">{{ trans('admin.system_constants') }}</span>
                    {{-- <span class="badge badge badge-primary badge-pill float-right mr-2">New</span> --}}
                </a>
                <ul class="menu-content">
                    @if (auth()->user()->hasPermission('read_countries'))
                    <li {{ request()->route()->getName() === 'admin.countries.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.countries.index') }}" class="nav-link">
                            <i class="fa fa-flag"></i>
                            <span class="title">{{ trans('admin.countries') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_cities'))
                    <li {{ request()->route()->getName() === 'admin.cities.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.cities.index') }}" class="nav-link">
                            <i class="fa fa-building-o"></i>
                            <span class="title">{{ trans('admin.cities') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_units'))
                    <li {{ request()->route()->getName() === 'admin.units.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.units.index') }}" class="nav-link">
                            <i class="feather icon-bookmark"></i>
                            <span class="title">{{ trans('admin.units') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_sliders'))
                    <li {{ request()->route()->getName() === 'admin.sliders.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.sliders.index') }}" class="nav-link">
                            <i class="feather icon-sliders"></i>
                            <span class="title">{{ trans('admin.sliders') }}</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @if (auth()->user()->hasPermission('read_users'))
            <li class="nav-item">
                <a href="#">
                    <i class="feather icon-users"></i>
                    <span class="menu-title">{{ trans('admin.users_management') }}</span>
                </a>
                <ul class="menu-content">
                    @if (auth()->user()->hasPermission('read_users'))
                    <li {{ request()->route()->getName() === 'admin.users.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.users.index') }}" class="nav-link">
                            <i class="feather icon-users"></i>
                            <span class="title">{{ trans('admin.users') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_roles'))
                    <li {{ request()->route()->getName() === 'admin.roles.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.roles.index') }}" class="nav-link">
                            <i class="fa fa-sliders"></i>
                            <span class="title">{{ trans('admin.roles') }}</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            <li class="nav-item">
                <a href="#">
                    <i class="fa fa-bar-chart"></i>
                    <span class="menu-title">{{ trans('admin.reports') }}</span>
                </a>
                <ul class="menu-content">
                    <li>
                        <a href="data-list-view.html">
                            <i class="feather icon-bar-chart"></i>
                            <span class="menu-item">List View</span>
                        </a>
                    </li>
                    <li>
                        <a href="data-list-view.html">
                            <i class="feather icon-bar-chart"></i>
                            <span class="menu-item">List View</span>
                        </a>
                    </li>
                    <li>
                        <a href="data-list-view.html">
                            <i class="feather icon-bar-chart"></i>
                            <span class="menu-item">List View</span>
                        </a>
                    </li>
                    <li>
                        <a href="data-list-view.html">
                            <i class="fa fa-money"></i>
                            <span class="menu-item">List View</span>
                        </a>
                    </li>
                </ul>
            </li>
            @if (auth()->user()->hasPermission('read_settings'))
            <li {{ request()->route()->getName() === 'admin.settings.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.settings.index') }}" class="nav-link">
                    <i class="feather icon-settings"></i>
                    <span class="title">{{ trans('admin.settings') }}</span>
                </a>
            </li>
            @endif
        </ul>
    </div>
</div>
<!-- END: Sidebar -->

@include('admin.partials.master')