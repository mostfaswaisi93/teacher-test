<?php

return [
    'role_structure' => [
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
            'locations'         => 'c,r,u,d',
            'countries'         => 'c,r,u,d',
            'cities'            => 'c,r,u,d',
            'roles'             => 'c,r,u,d',
            'users'             => 'c,r,u,d',
            'settings'          => 'c,r,u,d',
        ],
        'admin'         => [],
    ],

    'permissions_map' => [
        'c' => 'create',
        'r' => 'read',
        'u' => 'update',
        'd' => 'delete'
    ]
];
