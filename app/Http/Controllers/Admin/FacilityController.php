<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Facility;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;
use Intervention\Image\Facades\Image;
use Validator;

class FacilityController extends Controller
{
    public function index()
    {
        $facilities = Facility::get();
        if (request()->ajax()) {
            return datatables()->of($facilities)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_facilities')) {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_facilities')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.facilities.index');
    }

    public function store(Request $request)
    {
        $rules = [
            'icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'enabled' => 'required',
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => 'required|unique:facility_translations,name'];
        }

        $error = Validator::make($request->all(), $rules);

        if ($error->fails()) {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $image = $request->file('image');

        $new_name = rand() . '.' . $image->getClientOriginalExtension();

        $image->move(public_path('images'), $new_name);

        $form_data = array(
            'icon' => $new_name,
            'enabled' => $request->enabled,
        );

        Facility::create($form_data);
        Toastr::success(__('admin.added_successfully'));
        return response()->json(['success' => __('admin.added_successfully')]);
    }

    public function edit($id)
    {
        if (request()->ajax()) {
            $data = Facility::findOrFail($id);
            return response()->json(['data' => $data]);
        }
    }

    public function update(Request $request, Facility $facility)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => ['required', Rule::unique('facility_translations', 'name')->ignore($facility->id, 'facility_id')]];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image) {
            if ($facility->image != 'default.png') {
                Storage::disk('public_uploads')->delete('/facility_images/' . $facility->image);
            }
            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/facility_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        $facility->update($request_data);
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.facilities.index');
    }

    public function destroy($id)
    {
        $facility = Facility::findOrFail($id);
        if ($facility->image != 'default.png') {
            Storage::disk('public_uploads')->delete('/facility_images/' . $facility->image);
        }
        $facility->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $facility = Facility::find($id);
        $active = $request->get('active');
        $facility->active = $active;
        $facility = $facility->save();

        if ($facility) {
            return response(['success' => true, "message" => 'Done']);
        }
    }
}
