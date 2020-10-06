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
            'enabled'   => 'required',
            'icon'      => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ];
    }

    public function messages()
    {
        return [
            'enabled.required' => 'A ststus is required',
            'icon.image' => 'That is not an icon!'
        ];
    }
}
