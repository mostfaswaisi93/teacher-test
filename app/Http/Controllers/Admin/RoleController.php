<?php

namespace App\Http\Controllers\Admin;

use App\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;

class RoleController extends Controller
{
    public function __construct()
    {
        $this->middleware(['permission:read_users'])->only('index');
        $this->middleware(['permission:create_users'])->only('create');
        $this->middleware(['permission:update_users'])->only('edit');
        $this->middleware(['permission:delete_users'])->only('destroy');
    }

    public function index()
    {
        $roles = Role::OrderBy('created_at', 'desc')->whereRoleIs('admin');
        if (request()->ajax()) {
            return datatables()->of($roles)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_roles')) {
                        $button = '<a type="button" title="Edit" name="edit" href="roles/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_roles')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '"  class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.roles.index');
    }

    public function create()
    {
        return view('admin.roles.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name'          => 'required',
            'username'      => 'required|unique:users',
            'email'         => 'required|unique:users',
            'image'         => 'image',
            'password'      => 'required|confirmed',
            'permissions'   => 'required|min:1'
        ]);

        $request_data = $request->except(['password', 'password_confirmation', 'permissions', 'image']);
        $request_data['password'] = bcrypt($request->password);

        if ($request->image) {
            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/user_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        $role = Role::create($request_data);
        $role->attachRole('admin');
        $role->syncPermissions($request->permissions);

        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.roles.index');
    }

    public function edit(Role $role)
    {
        return view('admin.roles.edit')->with('role', $role);
    }

    public function update(Request $request, Role $role)
    {
        $request->validate([
            'name'          => 'required',
            'username'      => ['required', Rule::unique('users')->ignore($role->id)],
            'email'         => ['required', Rule::unique('users')->ignore($role->id)],
            'image'         => 'image',
            'permissions'   => 'required|min:1'
        ]);

        $request_data = $request->except(['permissions', 'image']);
        if ($request->image) {
            if ($role->image != 'default.png') {
                Storage::disk('public_uploads')->delete('/role_images/' . $role->image);
            }

            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/role_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        $role->update($request_data);
        $role->syncPermissions($request->permissions);

        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.roles.index');
    }

    public function destroy($id)
    {
        $role = Role::findOrFail($id);
        if ($role->image != 'default.png') {
            Storage::disk('public_uploads')->delete('/role_images/' . $role->image);
        }
        $role->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $role           = Role::find($id);
        $active         = $request->get('active');
        $role->active   = $active;
        $role           = $role->save();

        if ($role) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
