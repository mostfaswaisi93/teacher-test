<!-- Facility Modal -->

<div class="modal fade" id="facilityModal" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <span id="form_result"></span>
                <form method="post" id="facilityForm" class="form-horizontal" enctype="multipart/form-data">
                    @csrf
                    @foreach (config('translatable.locales') as $locale)
                    <div class="form-group">
                        <label>{{ trans('admin.' . $locale . '.name') }}</label>
                        <input type="text" id="name" name="{{ $locale }}[name]" class="form-control"
                            value="{{ old($locale . '.name') }}"
                            placeholder="{{ trans('admin.' . $locale . '.name') }}">
                    </div>
                    @endforeach
                    <div class="form-group">
                        <label for="b_enabled">الحالة</label>
                        <select id="b_enabled" name="b_enabled" class="form-control">
                            <option value="1">فعال</option>
                            <option value="0">معطل</option>
                        </select>
                    </div>
                    <div class="media">
                        <div class="form-group">
                            <label for="b_enabled">الصورة</label>
                            <div class="col-12 d-flex mt-1 px-0">
                                <input type="file" class="form-control-file image" name="image" id="image"
                                    style="display:none;">
                                <button class="btn btn-primary" onclick="FileUpload();">
                                    <i class="fa fa-plus"></i>
                                    {{ trans('admin.file_upload') }}
                                </button>
                            </div>
                            <div class="clearfix"></div>
                            <br>
                            <img class="users-avatar-shadow rounded image img-thumbnail image-preview" height="70"
                                style="display: none;">
                        </div>
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