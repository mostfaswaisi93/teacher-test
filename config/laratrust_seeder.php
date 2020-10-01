<?php

return [

    'create_users' => false,

    'truncate_tables' => true,

    'roles_structure' => [
        'super_admin'   => [
            'banners'           => 'c,r,u,d',
            'schools'           => 'c,r,u,d',
            'teachers'          => 'c,r,u,d',
            'parents'           => 'c,r,u,d',
            'students'          => 'c,r,u,d',
            'reservations'      => 'c,r,u,d',
            'subjects'          => 'c,r,u,d',
            'packages'          => 'c,r,u,d',
            'notifications'     => 'c,r,u,d',
            'contacts'          => 'c,r,u,d',
            'facilities'        => 'c,r,u,d',
            'grades'            => 'c,r,u,d',
            'sub_grades'        => 'c,r,u,d',
            'countries'         => 'c,r,u,d',
            'cities'            => 'c,r,u,d',
            'payment_methods'   => 'c,r,u,d',
            'edu_types'         => 'c,r,u,d',
            'discounts'         => 'c,r,u,d',
            'acceptance_terms'  => 'c,r,u,d',
            'rates'             => 'c,r,u,d',
            'qualifications'    => 'c,r,u,d',
            'users'             => 'c,r,u,d',
            'roles'             => 'c,r,u,d',
            'settings'          => 'c,r,u,d',
        ],
        'admin'         => []
    ],

    'permissions_map' => [
        'c' => 'create',
        'r' => 'read',
        'u' => 'update',
        'd' => 'delete'
    ]
];
