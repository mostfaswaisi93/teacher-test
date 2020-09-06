<?php

namespace App\Http\Controllers\Admin;

use App\Models\Package;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::get();
        if (request()->ajax()) {
            return datatables()->of($packages)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_packages')) {
                        $button = '<a type="button" title="Edit" name="edit" href="packages/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_packages')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.packages.index');
    }

    public function create()
    {
        return view('admin.packages.create');
    }

    public function store(Request $request)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'  => 'required|unique:facility_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image_ar) {
            Image::make($request->image_ar)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/facility_images/ar/' . $request->image_ar->hashName()));
            $request_data['image_ar'] = $request->image_ar->hashName();
        }

        Facility::create($request_data);
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.packages.index');
    }

    public function edit(Facility $facility)
    {
        return view('admin.packages.edit')->with('facility', $facility);
    }

    public function update(Request $request, Facility $facility)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => ['required', Rule::unique('facility_translations', 'name')->ignore($facility->id, 'facility_id')]];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image_ar) {
            if ($facility->image_ar != 'default.png') {
                Storage::disk('public_uploads')->delete('/facility_images/ar/' . $facility->image_ar);
            }
            Image::make($request->image_ar)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/facility_images/ar/' . $request->image_ar->hashName()));
            $request_data['image_ar'] = $request->image_ar->hashName();
        }

        $facility->update($request_data);
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.packages.index');
    }

    public function destroy($id)
    {
        $facility = Facility::findOrFail($id);
        if ($facility->image_ar != 'default.png') {
            Storage::disk('public_uploads')->delete('/facility_images/ar/' . $facility->image_ar);
        }
        $facility->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $facility           = Facility::find($id);
        $active             = $request->get('active');
        $facility->active   = $active;
        $facility           = $facility->save();

        if ($facility) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
