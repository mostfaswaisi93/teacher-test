<!DOCTYPE html>
<html class="loading" dir="{{ LaravelLocalization::getCurrentLocaleDirection() }}">

<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Halal Market - Laravel Project">
    <meta name="keywords" content="Halal Market Laravel Project">
    <meta name="author" content="PIXINVENT">
    <title>Login Page - Halal Market</title>
    <link rel="apple-touch-icon" href="{{ url('admin_files/app-assets/images/ico/apple-icon-120.png') }}">
    <link rel="shortcut icon" type="image/x-icon" href="{{ url('admin_files/app-assets/images/ico/favicon.ico') }}">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">

    @if (app()->getLocale() == 'en')

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/vendors/css/vendors.min.css') }}">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css/bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css/bootstrap-extended.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css/colors.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css/components.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css/themes/dark-layout.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css/themes/semi-dark-layout.css') }}">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css"
        href="{{ url('admin_files/app-assets/css/core/menu/menu-types/vertical-menu.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ url('admin_files/app-assets/css/core/colors/palette-gradient.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css/pages/authentication.css') }}">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/assets/css/style.css') }}">
    <!-- END: Custom CSS-->

    @else

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/vendors/css/vendors-rtl.min.css') }}">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css-rtl/bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css-rtl/bootstrap-extended.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css-rtl/colors.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css-rtl/components.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css-rtl/themes/dark-layout.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ url('admin_files/app-assets/css-rtl/themes/semi-dark-layout.css') }}">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css"
        href="{{ url('admin_files/app-assets/css-rtl/core/menu/menu-types/vertical-menu.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ url('admin_files/app-assets/css-rtl/core/colors/palette-gradient.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css-rtl/pages/authentication.css') }}">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/app-assets/css-rtl/custom-rtl.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('admin_files/assets/css/style-rtl.css') }}">

    @endif

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body
    class="vertical-layout vertical-menu-modern semi-dark-layout 1-column  navbar-floating footer-static bg-full-screen-image  blank-page blank-page"
    data-open="click" data-menu="vertical-menu-modern" data-col="1-column" data-layout="semi-dark-layout">
    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">
                <section class="row flexbox-container">
                    <div class="col-xl-8 col-11 d-flex justify-content-center">
                        <div class="card bg-authentication rounded-0 mb-0">
                            <div class="row m-0">
                                <div class="col-lg-6 d-lg-block d-none text-center align-self-center px-1 py-0">
                                    <img src="{{ url('admin_files/app-assets/images/pages/login.png') }}"
                                        alt="branding logo">
                                </div>
                                <div class="col-lg-6 col-12 p-0">
                                    <div class="card rounded-0 mb-0 px-2">
                                        <div class="card-header pb-1">
                                            <div class="card-title">
                                                <h4 class="mb-0">Login</h4>
                                            </div>
                                        </div>
                                        <p class="px-2">Welcome, please login to your account.</p>
                                        <div class="card-content">
                                            <div class="card-body pt-1">
                                                <form action="{{route('login')}}" method="POST">
                                                    @csrf
                                                    @method('post')
                                                    @include('partials._errors')
                                                    <fieldset
                                                        class="form-label-group form-group position-relative has-icon-left">
                                                        <input id="email" type="email" class="form-control" name="email"
                                                            placeholder="@lang('admin.email')">
                                                        <div class="form-control-position">
                                                            <i class="feather icon-user"></i>
                                                        </div>
                                                        <label for="email">@lang('admin.email')</label>
                                                    </fieldset>
                                                    <fieldset class="form-label-group position-relative has-icon-left">
                                                        <input id="password" type="password" class="form-control"
                                                            name="password" placeholder="@lang('admin.password')">
                                                        <div class="form-control-position">
                                                            <i class="feather icon-lock"></i>
                                                        </div>
                                                        <label for="password">@lang('admin.password')</label>
                                                    </fieldset>
                                                    <div
                                                        class="form-group d-flex justify-content-between align-items-center">
                                                        <div class="text-left">
                                                            <fieldset class="checkbox">
                                                                <div class="vs-checkbox-con vs-checkbox-primary">
                                                                    <input type="checkbox" name="rememberme" checked>
                                                                    <span class="vs-checkbox">
                                                                        <span class="vs-checkbox--check">
                                                                            <i class="vs-icon feather icon-check"></i>
                                                                        </span>
                                                                    </span>
                                                                    <span class="">@lang('admin.remember_me')</span>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                        <div class="text-right"><a href="#" class="card-link">Forgot
                                                                Password?</a></div>
                                                    </div>
                                                    <button type="submit"
                                                        class="btn btn-primary float-right btn-inline">@lang('admin.login')</button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="login-footer">
                                            <div class="divider">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- END: Content-->

    <!-- BEGIN: Vendor JS-->
    <script src="{{ url('admin_files/app-assets/vendors/js/vendors.min.js') }}"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="{{ url('admin_files/app-assets/js/core/app-menu.js') }}"></script>
    <script src="{{ url('admin_files/app-assets/js/core/app.js') }}"></script>
    <script src="{{ url('admin_files/app-assets/js/scripts/components.js') }}"></script>
    <!-- END: Theme JS-->

</body>
<!-- END: Body-->

</html>