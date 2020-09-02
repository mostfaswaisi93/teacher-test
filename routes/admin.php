<?php

Route::group(
    ['prefix' => LaravelLocalization::setLocale(), 'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']],
    function () {
        Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
            Route::get('/', 'AdminController@index')->name('index');

            Route::resource('banners', 'BannerController')->except(['show']);
            Route::get('banners/destroy/{id}', 'BannerController@destroy');

            Route::resource('schools', 'SchoolController')->except(['show']);
            Route::get('schools/destroy/{id}', 'SchoolController@destroy');

            Route::resource('teachers', 'TeacherController')->except(['show']);
            Route::get('teachers/destroy/{id}', 'TeacherController@destroy');

            Route::resource('parents', 'ParentController')->except(['show']);
            Route::get('parents/destroy/{id}', 'ParentController@destroy');

            Route::resource('students', 'StudentController')->except(['show']);
            Route::get('students/destroy/{id}', 'StudentController@destroy');

            Route::resource('reservations', 'ReservationController')->except(['show']);
            Route::get('reservations/destroy/{id}', 'ReservationController@destroy');

            Route::resource('subjects', 'SubjectController')->except(['show']);
            Route::get('subjects/destroy/{id}', 'SubjectController@destroy');

            Route::resource('packages', 'PackageController')->except(['show']);
            Route::get('packages/destroy/{id}', 'PackageController@destroy');

            Route::resource('notifications', 'NotificationController')->except(['show']);
            Route::get('notifications/destroy/{id}', 'NotificationController@destroy');
            Route::post('notifications/updateStatus/{id}', 'NotificationController@updateStatus');

            Route::resource('contacts', 'ContactController');
            Route::get('contacts/destroy/{id}', 'ContactController@destroy');

            Route::resource('facilities', 'FacilityController')->except(['show']);
            Route::get('facilities/destroy/{id}', 'FacilityController@destroy');

            Route::resource('grades', 'GradeController')->except(['show']);
            Route::get('grades/destroy/{id}', 'GradeController@destroy');

            Route::resource('sub_grades', 'SubGradeController')->except(['show']);
            Route::get('sub_grades/destroy/{id}', 'SubGradeController@destroy');

            Route::resource('discounts', 'DiscountController')->except(['show']);
            Route::get('discounts/destroy/{id}', 'DiscountController@destroy');

            Route::resource('qualifications', 'QualificationController')->except(['show']);
            Route::get('qualifications/destroy/{id}', 'QualificationController@destroy');

            Route::resource('rates', 'RateController')->except(['show']);
            Route::get('rates/destroy/{id}', 'RateController@destroy');

            Route::resource('edu_types', 'EduTypeController')->except(['show']);
            Route::get('edu_types/destroy/{id}', 'EduTypeController@destroy');

            Route::resource('acceptance_terms', 'PaymentMethodController')->except(['show']);
            Route::get('acceptance_terms/destroy/{id}', 'PaymentMethodController@destroy');

            Route::resource('payment_methods', 'PaymentMethodController')->except(['show']);
            Route::get('payment_methods/destroy/{id}', 'PaymentMethodController@destroy');

            Route::resource('countries', 'CountryController')->except(['show']);
            Route::get('countries/destroy/{id}', 'CountryController@destroy');
            Route::post('countries/updateStatus/{id}', 'CountryController@updateStatus');

            Route::resource('cities', 'CityController')->except(['show']);
            Route::get('cities/destroy/{id}', 'CityController@destroy');
            Route::post('cities/updateStatus/{id}', 'CityController@updateStatus');

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
