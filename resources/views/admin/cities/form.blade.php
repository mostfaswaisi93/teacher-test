<!-- Facility Modal -->

<div class="modal fade" id="facilityModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Add New Facility</h4>
            </div>
            <div class="modal-body">
                <span id="form_result"></span>
                <form method="post" id="facilityForm" class="form-horizontal" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="fullName" class="control-label col-md-2">Full Name: </label>
                        <div class="col-md-9">
                            <input type="text" name="fullName" id="fullName" class="form-control"
                                placeholder="Enter Full Name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-md-2 control-label">Email: </label>
                        <div class="col-md-9">
                            <input class="form-control" id="email" name="email" type="text" placeholder="Enter Email" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-md-2 control-label">Phone: </label>
                        <div class="col-md-9">
                            <input class="form-control" id="phone" name="phone" type="text" placeholder="Enter Phone" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-md-2 control-label">Address: </label>
                        <div class="col-md-9">
                            <input class="form-control" id="address" name="address" type="text"
                                placeholder="Enter Address" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jobTitle" class="col-md-2 control-label">Job Title: </label>
                        <div class="col-md-9">
                            <input class="form-control" id="jobTitle" name="jobTitle" type="text"
                                placeholder="Enter Job Title" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="department_id" class="col-md-2 control-label">Department: </label>
                        <div class="col-md-9">
                            <select class="form-control select2" name="department_id" id="department_id"
                                style="width: 100%;">
                                @foreach ($departments as $department)
                                <option value="{{$department->id}}">{{$department->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="skill_id" class="col-md-2 control-label">Skills: </label>
                        <div class="col-md-9">
                            <select class="form-control selectSkill" id="skill_id" name="skill_id[]" multiple="multiple"
                                style="width: 100%;">
                                @foreach ($skills as $skill)
                                <option value="{{$skill->id}}">{{$skill->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="action" id="action" />
                        <input type="hidden" name="hidden_id" id="hidden_id" />
                        <button type="submit" class="btn btn-primary" id="action_button" name="action_button"
                            value="Add"><i class="fas fa-save"></i>
                            Save changes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            <i class="fa fa-times" aria-hidden="true"></i>
                            Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Show Facility Modal -->

<div class="modal fade" id="showModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Show Facility</h4>
            </div>
            <div class="modal-body">
                <form method="post" class="form-horizontal">
                    <div class="form-group">
                        <label for="showFullName" class="control-label col-md-2">Full Name: </label>
                        <div class="col-md-9">
                            <div id="showFullName" name="fullName" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showEmail" class="control-label col-md-2">Email: </label>
                        <div class="col-md-9">
                            <div id="showEmail" name="email" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showPhone" class="control-label col-md-2">Phone: </label>
                        <div class="col-md-9">
                            <div id="showPhone" name="phone" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showAdress" class="control-label col-md-2">Adress: </label>
                        <div class="col-md-9">
                            <div id="showAdress" name="adress" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showJobTitle" class="control-label col-md-2">Job Title: </label>
                        <div class="col-md-9">
                            <div id="showJobTitle" name="jobTitle" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showDepartment" class="control-label col-md-2">Department: </label>
                        <div class="col-md-9">
                            <div id="showDepartment" name="department" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showSkills" class="control-label col-md-2">Skills: </label>
                        <div class="col-md-9 selectStyle">
                            <select class="form-control showStyle selectSkills" id="showSkills"
                                name="showSkills[]" multiple="multiple" style="width: 100%;">
                                @foreach ($skills as $skill)
                                <option value="{{$skill->id}}">{{$skill->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showStatus" class="col-md-2 control-label">Status: </label>
                        <div class="col-md-9">
                            <div id="showStatus" name="status" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-success"><i class="fas fa-thumbs-up"></i>
                            OK</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
