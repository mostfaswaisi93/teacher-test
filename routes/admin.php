<?php

Route::group(
    ['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']],
    function () {
        Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
            Route::get('/', 'AdminController@index')->name('index');

            Route::resource('countries', 'CountryController')->except(['show']);
            Route::get('countries/destroy/{id}', 'CountryController@destroy');
            Route::post('countries/updateStatus/{id}', 'CountryController@updateStatus');

            Route::resource('cities', 'CityController')->except(['show']);
            Route::get('cities/destroy/{id}', 'CityController@destroy');
            Route::post('cities/updateStatus/{id}', 'CityController@updateStatus');

            Route::resource('brands', 'BrandController')->except(['show']);
            Route::get('brands/destroy/{id}', 'BrandController@destroy');
            Route::post('brands/updateStatus/{id}', 'BrandController@updateStatus');

            Route::resource('units', 'UnitController')->except(['show']);
            Route::get('units/destroy/{id}', 'UnitController@destroy');
            Route::post('units/updateStatus/{id}', 'UnitController@updateStatus');

            Route::resource('contacts', 'ContactController');
            Route::get('contacts/destroy/{id}', 'ContactController@destroy');

            Route::resource('customers', 'CustomerController')->except(['show']);
            Route::get('customers/destroy/{id}', 'CustomerController@destroy');

            Route::resource('locations', 'LocationController')->except(['show']);
            Route::get('locations/destroy/{id}', 'LocationController@destroy');

            Route::resource('notifications', 'NotificationController')->except(['show']);
            Route::get('notifications/destroy/{id}', 'NotificationController@destroy');
            Route::post('notifications/updateStatus/{id}', 'NotificationController@updateStatus');

            Route::get('settings', 'SettingController@index')->name('settings.index');
            Route::post('settings', 'SettingController@update')->name('settings.update');

            Route::resource('roles', 'RoleController')->except(['show']);
            Route::get('roles/destroy/{id}', 'RoleController@destroy');
            Route::post('roles/updateStatus/{id}', 'RoleController@updateStatus');

            Route::resource('users', 'UserController')->except(['show']);
            Route::get('users/destroy/{id}', 'UserController@destroy');
            Route::post('users/updateStatus/{id}', 'UserController@updateStatus');
        });
    }
);
