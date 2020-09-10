<?php

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ],
    function () {
        Route::prefix('admin')->name('admin.')->middleware(['auth'])->group(function () {
            Route::get('/', 'AdminController@index')->name('index');

            Route::resources([
                'banners'           => BannerController::class,
                'schools'           => SchoolController::class,
                'teachers'          => TeacherController::class,
                'parents'           => ParentController::class,
                'students'          => StudentController::class,
                'reservations'      => ReservationController::class,
                'subjects'          => SubjectController::class,
                'packages'          => PackageController::class,
                'notifications'     => NotificationController::class,
                'contacts'          => ContactController::class,
                'facilities'        => FacilityController::class,
                'grades'            => GradeController::class,
                'sub_grades'        => SubGradeController::class,
                'discounts'         => DiscountController::class,
                'qualifications'    => QualificationController::class,
                'rates'             => RateController::class,
                'edu_types'         => EduTypeController::class,
                'acceptance_terms'  => AcceptanceTermController::class,
                'payment_methods'   => PaymentMethodController::class,
                'countries'         => CountryController::class,
                'cities'            => CityController::class,
                'roles'             => RoleController::class,
                'users'             => UserController::class,
            ]);

            Route::get('banners/destroy/{id}', 'BannerController@destroy');
            Route::post('banners/updateStatus/{id}', 'BannerController@updateStatus');

            Route::get('schools/destroy/{id}', 'SchoolController@destroy');
            Route::post('schools/updateStatus/{id}', 'SchoolController@updateStatus');

            Route::get('teachers/destroy/{id}', 'TeacherController@destroy');
            Route::post('teachers/updateStatus/{id}', 'TeacherController@updateStatus');

            Route::get('parents/destroy/{id}', 'ParentController@destroy');

            Route::get('students/destroy/{id}', 'StudentController@destroy');

            Route::get('reservations/destroy/{id}', 'ReservationController@destroy');

            Route::get('subjects/destroy/{id}', 'SubjectController@destroy');

            Route::get('packages/destroy/{id}', 'PackageController@destroy');

            Route::get('notifications/destroy/{id}', 'NotificationController@destroy');
            Route::post('notifications/updateStatus/{id}', 'NotificationController@updateStatus');

            Route::get('contacts/destroy/{id}', 'ContactController@destroy');

            Route::post('facilities/update', 'FacilityController@update');
            Route::get('facilities/destroy/{id}', 'FacilityController@destroy');
            Route::post('facilities/updateStatus/{id}', 'FacilityController@updateStatus');

            Route::get('grades/destroy/{id}', 'GradeController@destroy');

            Route::get('sub_grades/destroy/{id}', 'SubGradeController@destroy');

            Route::get('discounts/destroy/{id}', 'DiscountController@destroy');

            Route::get('qualifications/destroy/{id}', 'QualificationController@destroy');

            Route::get('rates/destroy/{id}', 'RateController@destroy');

            Route::get('edu_types/destroy/{id}', 'EduTypeController@destroy');

            Route::get('acceptance_terms/destroy/{id}', 'AcceptanceTermController@destroy');

            Route::get('payment_methods/destroy/{id}', 'PaymentMethodController@destroy');

            Route::get('countries/destroy/{id}', 'CountryController@destroy');
            Route::post('countries/updateStatus/{id}', 'CountryController@updateStatus');

            Route::get('cities/destroy/{id}', 'CityController@destroy');
            Route::post('cities/updateStatus/{id}', 'CityController@updateStatus');

            Route::get('settings', 'SettingController@index')->name('settings.index');
            Route::post('settings', 'SettingController@update')->name('settings.update');

            Route::get('roles/destroy/{id}', 'RoleController@destroy');
            Route::post('roles/updateStatus/{id}', 'RoleController@updateStatus');

            Route::get('users/destroy/{id}', 'UserController@destroy');
            Route::post('users/updateStatus/{id}', 'UserController@updateStatus');
        });
    }
);
