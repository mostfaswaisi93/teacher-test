@extends('layouts.admin')
@section('title') {{ trans('admin.create_facility') }}@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">{{ trans('admin.create_facility') }}</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">{{ trans('admin.home') }}</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.facilities.index') }}">{{ trans('admin.facilities') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ trans('admin.create_facility') }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content-body">
    <section class="portlet">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">
                            <i class="feather icon-plus-square mr-25"></i>
                            {{ trans('admin.create_facility') }}
                        </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('partials._errors')
                            <form action="{{ route('admin.facilities.store') }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('POST')
                                <div class="row">
                                    @foreach (config('translatable.locales') as $locale)
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label>{{ trans('admin.' . $locale . '.name') }}</label>
                                            <input id="name" type="text" name="{{ $locale }}[name]" class="form-control"
                                                value="{{ old($locale . '.name') }}"
                                                placeholder="{{ trans('admin.' . $locale . '.name') }}">
                                        </div>
                                    </div>
                                    @endforeach
                                    <div class="col-md-6 col-12">
                                        <div class="media mb-2">
                                            <a class="mr-2 my-25" href="#">
                                                <img src="{{ asset('uploads/facility_images/default.png') }}"
                                                    alt="users avatar"
                                                    class="users-avatar-shadow rounded image img-thumbnail image-preview"
                                                    height="70" width="70">
                                            </a>
                                            <div class="media-body mt-50">
                                                <label>{{ trans('admin.facility_image') }}</label>
                                                <div class="col-12 d-flex mt-1 px-0">
                                                    <input type="file" class="form-control-file image" name="image"
                                                        id="image" style="display:none;">
                                                    <button class="btn btn-primary" onclick="FileUpload();">
                                                        <i class="fa fa-plus"></i>
                                                        {{ trans('admin.file_upload') }}
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <hr>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <button type="submit" class="btn btn-primary">
                                                    {{ trans('admin.add') }}
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection