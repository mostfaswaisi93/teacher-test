@include('admin.partials.menu')

<!-- BEGIN: Sidebar -->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto">
                <a class="navbar-brand" href="{{ route('admin.index') }}">
                    <img src="{{ url('admin_files/logo.png') }}" alt="avatar" height="45" width="45">
                    <h2 class="brand-text mb-0" style="color: #fff">{{ trans('admin.teacher_title') }}</h2>
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
            @if (auth()->user()->hasPermission('read_banners'))
            <li {{ request()->route()->getName() === 'admin.banners.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.banners.index') }}" class="nav-link">
                    <i class="fa fa-photo"></i>
                    <span class="title">{{ trans('admin.banners') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_schools'))
            <li {{ request()->route()->getName() === 'admin.schools.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.schools.index') }}" class="nav-link">
                    <i class="fa fa-building-o"></i>
                    <span class="title">{{ trans('admin.schools_management') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_teachers'))
            <li {{ request()->route()->getName() === 'admin.teachers.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.teachers.index') }}" class="nav-link">
                    <i class="feather icon-users"></i>
                    <span class="title">{{ trans('admin.teachers') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_parents'))
            <li {{ request()->route()->getName() === 'admin.parents.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.parents.index') }}" class="nav-link">
                    <i class="feather icon-users"></i>
                    <span class="title">{{ trans('admin.parents') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_students'))
            <li {{ request()->route()->getName() === 'admin.students.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.students.index') }}" class="nav-link">
                    <i class="fa fa-graduation-cap"></i>
                    <span class="title">{{ trans('admin.students') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_reservations'))
            <li {{ request()->route()->getName() === 'admin.reservations.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.reservations.index') }}" class="nav-link">
                    <i class="fa fa-photo"></i>
                    <span class="title">{{ trans('admin.reservations') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_subjects'))
            <li {{ request()->route()->getName() === 'admin.subjects.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.subjects.index') }}" class="nav-link">
                    <i class="fa fa-book"></i>
                    <span class="title">{{ trans('admin.subjects') }}</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_packages'))
            <li {{ request()->route()->getName() === 'admin.packages.index' ? 'class=active' : '' }}>
                <a href="{{ route('admin.packages.index') }}" class="nav-link">
                    <i class="fa fa-list"></i>
                    <span class="title">{{ trans('admin.packages_management') }}</span>
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
                    @if (auth()->user()->hasPermission('read_facilities'))
                    <li {{ request()->route()->getName() === 'admin.facilities.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.facilities.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.facilities') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_grades'))
                    <li {{ request()->route()->getName() === 'admin.grades.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.grades.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.grades') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_sub_grades'))
                    <li {{ request()->route()->getName() === 'admin.sub_grades.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.sub_grades.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.sub_grades') }}</span>
                        </a>
                    </li>
                    @endif
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
                    @if (auth()->user()->hasPermission('read_payment_methods'))
                    <li {{ request()->route()->getName() === 'admin.payment_methods.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.payment_methods.index') }}" class="nav-link">
                            <i class="fa fa-money"></i>
                            <span class="title">{{ trans('admin.payment_methods') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_edu_types'))
                    <li {{ request()->route()->getName() === 'admin.edu_types.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.edu_types.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.edu_types') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_discounts'))
                    <li {{ request()->route()->getName() === 'admin.discounts.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.discounts.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.discounts') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_acceptance_terms'))
                    <li {{ request()->route()->getName() === 'admin.acceptance_terms.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.acceptance_terms.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.acceptance_terms') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_rates'))
                    <li {{ request()->route()->getName() === 'admin.rates.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.rates.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.rates') }}</span>
                        </a>
                    </li>
                    @endif
                    @if (auth()->user()->hasPermission('read_qualifications'))
                    <li {{ request()->route()->getName() === 'admin.qualifications.index' ? 'class=active' : '' }}>
                        <a href="{{ route('admin.qualifications.index') }}" class="nav-link">
                            <i class="fa fa-list"></i>
                            <span class="title">{{ trans('admin.qualifications') }}</span>
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
                    <li {{ request()->route()->getName() === 'admin.reports.schools.index' ? 'class=active' : '' }}>
                        <a href="#" class="nav-link">
                            <i class="feather icon-bar-chart"></i>
                            <span class="title">{{ trans('admin.reports_schools') }}</span>
                        </a>
                    </li>
                    <li {{ request()->route()->getName() === 'admin.reports.teachers.index' ? 'class=active' : '' }}>
                        <a href="#" class="nav-link">
                            <i class="feather icon-bar-chart"></i>
                            <span class="title">{{ trans('admin.reports_teachers') }}</span>
                        </a>
                    </li>
                    <li {{ request()->route()->getName() === 'admin.reports.parents.index' ? 'class=active' : '' }}>
                        <a href="#" class="nav-link">
                            <i class="feather icon-bar-chart"></i>
                            <span class="title">{{ trans('admin.reports_parents') }}</span>
                        </a>
                    </li>
                    <li {{ request()->route()->getName() === 'admin.reports.financial.index' ? 'class=active' : '' }}>
                        <a href="#" class="nav-link">
                            <i class="fa fa-money"></i>
                            <span class="title">{{ trans('admin.reports_financial') }}</span>
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