<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FacilityRequest extends FormRequest
{
    public function authorize()
    {
        return false;
    }

    public function rules()
    {
        return [
            'icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'enabled' => 'required',
        ];
    }
}
