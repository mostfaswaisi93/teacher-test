<?php

namespace App\Http\Controllers\Admin;

use App\Models\AcceptanceTerm;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class AcceptanceTermController extends Controller
{
    public function index()
    {
        $acceptance_terms = AcceptanceTerm::get();
        if (request()->ajax()) {
            return datatables()->of($acceptance_terms)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_acceptance_terms')) {
                        $button = '<a type="button" title="Edit" name="edit" href="acceptance_terms/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_acceptance_terms')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.acceptance_terms.index');
    }
}
