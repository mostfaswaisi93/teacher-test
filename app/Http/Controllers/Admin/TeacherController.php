<?php

namespace App\Http\Controllers\Admin;

use App\Models\Teacher;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class TeacherController extends Controller
{
    public function index()
    {
        $teachers = Teacher::get();
        if (request()->ajax()) {
            return datatables()->of($teachers)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_teachers')) {
                        $button = '<a type="button" title="Edit" name="edit" href="teachers/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_teachers')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.teachers.index');
    }

    public function create()
    {
        return view('admin.teachers.create');
    }

    public function store(Request $request)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'  => 'required|unique:facility_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image) {
            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        Facility::create($request_data);
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.teachers.index');
    }

    public function edit(Facility $facility)
    {
        return view('admin.teachers.edit')->with('facility', $facility);
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
                Storage::disk('public_uploads')->delete('/images/' . $facility->image);
            }
            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        $facility->update($request_data);
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.teachers.index');
    }

    public function destroy($id)
    {
        $facility = Facility::findOrFail($id);
        if ($facility->image != 'default.png') {
            Storage::disk('public_uploads')->delete('/images/' . $facility->image);
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
