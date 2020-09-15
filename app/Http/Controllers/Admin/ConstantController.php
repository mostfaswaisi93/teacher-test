<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ConstantController extends Controller
{
    public function store(Request $request)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => 'required|unique:constant_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();

        Constant::create($request_data);
    }
}
