<?php

return [
    'role_structure' => [
        'super_admin'   => [
            'locations'         => 'c,r,u,d',
            'notifications'     => 'c,r,u,d',
            'contacts'          => 'c,r,u,d',
            'brands'            => 'c,r,u,d',
            'countries'         => 'c,r,u,d',
            'cities'            => 'c,r,u,d',
            'units'             => 'c,r,u,d',
            'sliders'           => 'c,r,u,d',
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
