<?php

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ],
    function () {
        Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
            Route::get('/', 'AdminController@index')->name('index');

            Route::resource('banners', 'BannerController');
            Route::get('banners/destroy/{id}', 'BannerController@destroy');
            Route::post('banners/updateStatus/{id}', 'BannerController@updateStatus');

            Route::resource('schools', 'SchoolController');
            Route::get('schools/destroy/{id}', 'SchoolController@destroy');
            Route::post('schools/updateStatus/{id}', 'SchoolController@updateStatus');

            Route::resource('teachers', 'TeacherController');
            Route::get('teachers/destroy/{id}', 'TeacherController@destroy');
            Route::post('teachers/updateStatus/{id}', 'TeacherController@updateStatus');

            Route::resource('parents', 'ParentController');
            Route::get('parents/destroy/{id}', 'ParentController@destroy');

            Route::resource('students', 'StudentController');
            Route::get('students/destroy/{id}', 'StudentController@destroy');

            Route::resource('reservations', 'ReservationController');
            Route::get('reservations/destroy/{id}', 'ReservationController@destroy');

            Route::resource('subjects', 'SubjectController');
            Route::get('subjects/destroy/{id}', 'SubjectController@destroy');

            Route::resource('packages', 'PackageController');
            Route::get('packages/destroy/{id}', 'PackageController@destroy');

            Route::resource('notifications', 'NotificationController');
            Route::get('notifications/destroy/{id}', 'NotificationController@destroy');
            Route::post('notifications/updateStatus/{id}', 'NotificationController@updateStatus');

            Route::resource('contacts', 'ContactController');
            Route::get('contacts/destroy/{id}', 'ContactController@destroy');

            Route::resource('facilities', 'FacilityController');
            Route::get('facilities/destroy/{id}', 'FacilityController@destroy');
            Route::post('facilities/updateStatus/{id}', 'FacilityController@updateStatus');

            Route::resource('grades', 'GradeController');
            Route::get('grades/destroy/{id}', 'GradeController@destroy');

            Route::resource('sub_grades', 'SubGradeController');
            Route::get('sub_grades/destroy/{id}', 'SubGradeController@destroy');

            Route::resource('discounts', 'DiscountController');
            Route::get('discounts/destroy/{id}', 'DiscountController@destroy');

            Route::resource('qualifications', 'QualificationController');
            Route::get('qualifications/destroy/{id}', 'QualificationController@destroy');

            Route::resource('rates', 'RateController');
            Route::get('rates/destroy/{id}', 'RateController@destroy');

            Route::resource('edu_types', 'EduTypeController');
            Route::get('edu_types/destroy/{id}', 'EduTypeController@destroy');

            Route::resource('acceptance_terms', 'PaymentMethodController');
            Route::get('acceptance_terms/destroy/{id}', 'PaymentMethodController@destroy');

            Route::resource('payment_methods', 'PaymentMethodController');
            Route::get('payment_methods/destroy/{id}', 'PaymentMethodController@destroy');

            Route::resource('countries', 'CountryController');
            Route::get('countries/destroy/{id}', 'CountryController@destroy');
            Route::post('countries/updateStatus/{id}', 'CountryController@updateStatus');

            Route::resource('cities', 'CityController');
            Route::get('cities/destroy/{id}', 'CityController@destroy');
            Route::post('cities/updateStatus/{id}', 'CityController@updateStatus');

            Route::get('settings', 'SettingController@index')->name('settings.index');
            Route::post('settings', 'SettingController@update')->name('settings.update');

            Route::resource('roles', 'RoleController');
            Route::get('roles/destroy/{id}', 'RoleController@destroy');
            Route::post('roles/updateStatus/{id}', 'RoleController@updateStatus');

            Route::resource('users', 'UserController');
            Route::get('users/destroy/{id}', 'UserController@destroy');
            Route::post('users/updateStatus/{id}', 'UserController@updateStatus');
        });
    }
);
