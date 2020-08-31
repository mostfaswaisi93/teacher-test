@include('admin.partials.menu')

<!-- BEGIN: Sidebar -->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto">
                <a class="navbar-brand" href="{{ route('admin.index') }}">
                    <img class="round" src="{{ url('admin_files/logo.png') }}" alt="avatar" height="45">
                </a>
            </li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class="navigation-header"></li>
            <li {{ request()->route()->getName() === 'admin.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.index') }}" class="nav-link">
                    <i class="fa fa-home"></i>
                    <span class="title">@lang('admin.home')</span>
                </a>
            </li>
            @if (auth()->user()->hasPermission('read_brands'))
            <li {{ request()->route()->getName() === 'admin.brands.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.brands.index') }}" class="nav-link">
                    <i class="fa fa-tags"></i>
                    <span class="title">@lang('admin.brands_management')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_categories'))
            <li class="nav-item">
                <a href="#">
                    <i class="fa fa-list"></i>
                    <span class="menu-title">@lang('admin.categories')</span>
                </a>
                <ul class="menu-content">
                    @if (auth()->user()->hasPermission('read_categories'))
                    <li {{ request()->route()->getName() === 'admin.categories.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.categories.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">@lang('admin.categories_management')</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_subcategories'))
                    <li {{ request()->route()->getName() === 'admin.subcategories.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.subcategories.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">@lang('admin.subcategories_management')</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_items'))
            <li {{ request()->route()->getName() === 'admin.items.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.items.index') }}" class="nav-link">
                    <i class="feather icon-layers"></i>
                    <span class="title">@lang('admin.items_management')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_locations'))
            <li {{ request()->route()->getName() === 'admin.locations.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.locations.index') }}" class="nav-link">
                    <i class="fa fa-map"></i>
                    <span class="title">@lang('admin.locations_management')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_orders'))
            <li {{ request()->route()->getName() === 'admin.orders.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.orders.index') }}" class="nav-link">
                    <i class="fa fa-tasks"></i>
                    <span class="title">@lang('admin.orders_management')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_customers'))
            <li {{ request()->route()->getName() === 'admin.customers.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.customers.index') }}" class="nav-link">
                    <i class="feather icon-users"></i>
                    <span class="title">@lang('admin.customers_management')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_promo_code'))
            <li {{ request()->route()->getName() === 'admin.promo_code.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.promo_code.index') }}" class="nav-link">
                    <i class="feather icon-tag"></i>
                    <span class="title">@lang('admin.promo_code')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_notifications'))
            <li {{ request()->route()->getName() === 'admin.notifications.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.notifications.index') }}" class="nav-link">
                    <i class="fa fa-bell"></i>
                    <span class="title">@lang('admin.notifications_management')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_contacts'))
            <li {{ request()->route()->getName() === 'admin.contacts.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.contacts.index') }}" class="nav-link">
                    <i class="ficon feather icon-mail"></i>
                    <span class="title">@lang('admin.contacts')</span>
                </a>
            </li>
            @endif
            <li class="nav-item">
                <a href="#">
                    <i class="fa fa-info-circle"></i>
                    <span class="menu-title">@lang('admin.system_constants')</span>
                    {{-- <span class="badge badge badge-primary badge-pill float-right mr-2">New</span> --}}
                </a>
                <ul class="menu-content">
                    @if (auth()->user()->hasPermission('read_countries'))
                    <li {{ request()->route()->getName() === 'admin.countries.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.countries.index') }}" class="nav-link">
                            <i class="fa fa-flag"></i>
                            <span class="title">@lang('admin.countries')</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_cities'))
                    <li {{ request()->route()->getName() === 'admin.cities.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.cities.index') }}" class="nav-link">
                            <i class="fa fa-building-o"></i>
                            <span class="title">@lang('admin.cities')</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_units'))
                    <li {{ request()->route()->getName() === 'admin.units.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.units.index') }}" class="nav-link">
                            <i class="feather icon-bookmark"></i>
                            <span class="title">@lang('admin.units')</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_sliders'))
                    <li {{ request()->route()->getName() === 'admin.sliders.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.sliders.index') }}" class="nav-link">
                            <i class="feather icon-sliders"></i>
                            <span class="title">@lang('admin.sliders')</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @if (auth()->user()->hasPermission('read_users'))
            <li class="nav-item">
                <a href="#">
                    <i class="feather icon-users"></i>
                    <span class="menu-title">@lang('admin.users')</span>
                </a>
                <ul class="menu-content">
                    @if (auth()->user()->hasPermission('read_users'))
                    <li {{ request()->route()->getName() === 'admin.users.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.users.index') }}" class="nav-link">
                            <i class="feather icon-users"></i>
                            <span class="title">@lang('admin.users_management')</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_roles'))
                    <li {{ request()->route()->getName() === 'admin.roles.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.roles.index') }}" class="nav-link">
                            <i class="fa fa-sliders"></i>
                            <span class="title">@lang('admin.roles')</span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            <li class="nav-item">
                <a href="#">
                    <i class="fa fa-bar-chart"></i>
                    <span class="menu-title">@lang('admin.reports')</span>
                </a>
                <ul class="menu-content">
                    <li>
                        <a href="data-list-view.html">
                            <i class="feather icon-circle"></i>
                            <span class="menu-item">List View</span>
                        </a>
                    </li>
                </ul>
            </li>
            @if (auth()->user()->hasPermission('read_settings'))
            <li {{ request()->route()->getName() === 'admin.settings.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.settings.index') }}" class="nav-link">
                    <i class="feather icon-settings"></i>
                    <span class="title">@lang('admin.settings')</span>
                </a>
            </li>
            @endif
        </ul>
    </div>
</div>
<!-- END: Sidebar -->

@include('admin.partials.master')