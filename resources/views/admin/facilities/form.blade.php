<!-- Facility Modal -->

<div class="modal fade" id="facilityModal" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <span id="form_result"></span>
                <form method="post" id="facilityForm" class="form-horizontal" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="name" class="col-form-label">{{ trans('admin.name') }}:</label>
                        <input type="text" id="name" name="name" class="form-control"
                            placeholder="{{ trans('admin.name') }}">
                    </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" name="action" id="action" />
                <input type="hidden" name="hidden_id" id="hidden_id" />
                <button type="submit" class="btn btn-success" id="action_button" name="action_button" value="Add">
                    {{ trans('admin.save') }}
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    {{ trans('admin.close') }}
                </button>
            </div>
            </form>
        </div>
    </div>
</div>

<div id="" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">إضافة / تعديل المرافق والمميزات</h4>
            </div>
            <div class="modal-body">
                <form method="POST" action="https://1stt.app/1teacher/admin/facilities" accept-charset="UTF-8"
                    id="constantForm" enctype="multipart/form-data"><input name="_token" type="hidden"
                        value="xpe4Hddt4vM4syPfRN2QIlBSN6InfFFCNFRKsdbd">
                    <input name="pk_i_id" id="itemId" type="hidden" value="" />
                    <div class="row">
                        <input name="s_key" type="hidden" value="FACILITIES" />
                        <div class="form-group col-md-12">
                            <label for="s_name">الإسم</label>
                            <input id="s_name" name="s_name" type="text" class="form-control" />
                        </div>
                        <div class="form-group col-md-12">
                            <label for="s_image">الإسم</label>
                            <input type="file" name="s_image" accept="image/*" id="s_image" class="form-control" />
                        </div>
                        <div class="form-group col-md-6">
                            <label for="b_enabled">الحالة</label>
                            <select id="b_enabled" name="b_enabled" class="form-control">
                                <option value="1">فعال</option>
                                <option value="0">معطل</option>
                            </select>
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <input class="btn green" id="submitButton" type="submit" value="حفظ">
                <button type="button" class="btn btn-default" data-dismiss="modal">إغلاق</button>
            </div>
            </form>
        </div>
    </div>
</div>


{{-- @include('partials._errors')
<form action="{{ route('admin.facilities.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('POST')
    <div class="row">
        @foreach (config('translatable.locales') as $locale)
        <div class="col-md-6 col-12">
            <div class="form-group">
                <label>{{ trans('admin.' . $locale . '.name') }}</label>
                <input id="name" type="text" name="{{ $locale }}[name]" class="form-control"
                    value="{{ old($locale . '.name') }}" placeholder="{{ trans('admin.' . $locale . '.name') }}">
            </div>
        </div>
        @endforeach
        <div class="col-md-6 col-12">
            <div class="media mb-2">
                <a class="mr-2 my-25" href="#">
                    <img src="{{ asset('uploads/facility_images/default.png') }}" alt="users avatar"
                        class="users-avatar-shadow rounded image img-thumbnail image-preview" height="70" width="70">
                </a>
                <div class="media-body mt-50">
                    <label>{{ trans('admin.facility_image') }}</label>
                    <div class="col-12 d-flex mt-1 px-0">
                        <input type="file" class="form-control-file image" name="image" id="image"
                            style="display:none;">
                        <button class="btn btn-primary" onclick="FileUpload();">
                            <i class="fa fa-plus"></i>
                            {{ trans('admin.file_upload') }}
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12">
            <hr>
        </div>
        <div class="col-md-6 col-12">
            <div class="form-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary">
                        {{ trans('admin.add') }}
                    </button>
                </div>
            </div>
        </div>
    </div>
</form> --}}