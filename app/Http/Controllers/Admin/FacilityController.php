<?php

namespace App\Http\Controllers\Admin;

use App\Models\Facility;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
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
                        $button = '<a type="button" title="Edit" name="edit" href="facilities/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
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

    public function create()
    {
        return view('admin.facilities.create');
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
                ->save(public_path('uploads/facility_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        Facility::create($request_data);
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.facilities.index');
    }

    public function edit(Facility $facility)
    {
        return view('admin.facilities.edit')->with('facility', $facility);
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
        $facility           = Facility::find($id);
        $active             = $request->get('active');
        $facility->active   = $active;
        $facility           = $facility->save();

        if ($facility) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}

class SkillController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        if (request()->ajax()) {
            return datatables()->of(Skill::get())
                ->addColumn('action', function ($data) {
                    $button = '<button type="button" name="edit" id="' . $data->id . '" class="edit btn btn-primary btn-sm"><i class="far fa-edit"></i></button>';
                    $button .= '&nbsp;&nbsp;';
                    $button .= '<button type="button" name="delete" id="' . $data->id . '" class="delete btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>';
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.skill.skills');
    }

    public function store(Request $request)
    {
        $rules = array(
            'name' => 'required'
        );

        $error = Validator::make($request->all(), $rules);

        if ($error->fails()) {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        Skill::create($request->all());
        return response()->json(['success' => 'Data Added successfully.']);
    }

    public function edit($id)
    {
        if (request()->ajax()) {
            $data = Skill::findOrFail($id);
            return response()->json(['data' => $data]);
        }
    }

    public function update(Request $request)
    {
        $rules = array(
            'name' => 'required'
        );

        $error = Validator::make($request->all(), $rules);

        if ($error->fails()) {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $skill = Skill::findOrFail($request->hidden_id);
        $skill->update($request->all());
        return response()->json(['success' => 'Data is successfully updated']);
    }

    public function destroy($id)
    {
        $data = Skill::findOrFail($id);
        $data->delete();
    }
}
