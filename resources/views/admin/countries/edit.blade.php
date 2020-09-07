@extends('layouts.admin')
@section('title') {{ trans('admin.edit_country') }} @endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">{{ trans('admin.edit_country') }}</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">{{ trans('admin.home') }}</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.countries.index') }}">{{ trans('admin.countries') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ trans('admin.edit_country') }}</li>
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
                            <i class="feather icon-edit mr-25"></i>
                            {{ trans('admin.edit_country') }} - {{ $country->name }}
                        </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('partials._errors')
                            <form action="{{ route('admin.countries.update', $country->id) }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    @foreach (config('translatable.locales') as $locale)
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label>{{ trans('admin.' . $locale . '.name') }}</label>
                                            <input id="name" type="text" name="{{ $locale }}[name]" class="form-control"
                                                value="{{ $country->translate($locale)->name }}"
                                                placeholder="{{ trans('admin.' . $locale . '.name') }}">
                                        </div>
                                        <div class="form-group">
                                            <label>{{ trans('admin.' . $locale . '.currency') }}</label>
                                            <input id="currency" type="text" name="{{ $locale }}[currency]"
                                                class="form-control"
                                                value="{{ $country->translate($locale)->currency }}"
                                                placeholder="{{ trans('admin.' . $locale . '.currency') }}">
                                        </div>
                                    </div>
                                    @endforeach
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>{{ trans('admin.iso_code') }}</label>
                                                <input id="iso_code" type="text" name="iso_code" class="form-control"
                                                    value="{{ $country->iso_code }}"
                                                    placeholder="{{ trans('admin.iso_code') }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>{{ trans('admin.phone_code') }}</label>
                                                <input id="phone_code" type="text" name="phone_code"
                                                    class="form-control" value="{{ $country->phone_code }}"
                                                    placeholder="{{ trans('admin.phone_code') }}">
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
                                                    {{ trans('admin.update') }}
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