<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Faculty;

class FacultyController extends Controller {

    public function index() {
        $query = Faculty::latest();
        return $query->paginate(60);
    }

    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required|unique:faculty,name," . $request->id, 
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all();

            if (!isset($data['faculty_id'])) {
                $data['faculty_id'] = optional($request->user)->faculty_id;
            }
            $resource = Faculty::create($data);
            
            // upload logo 
            uploadImg($request->file('logo'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "logo" => $filename
                ]);
            }, $resource->logo);
            
            // upload message_file 
            uploadImg($request->file('message_file'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "message_file" => $filename
                ]);
            }, $resource->message_file);
            
            // upload vision_file 
            uploadImg($request->file('vision_file'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "vision_file" => $filename
                ]);
            }, $resource->vision_file);
            
            // upload target_file 
            uploadImg($request->file('target_file'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "target_file" => $filename
                ]);
            }, $resource->target_file);
            
            watch("add faculty " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function update(Request $request, Faculty $resource) {
        $validator = validator($request->all(), [
            "name" => "required|unique:faculty,name," . $request->id, 
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $data = $request->all();
            if (isset($data['logo'])) {
                unset($data['logo']);
            }
            if (isset($data['message_file'])) {
                unset($data['message_file']);
            }
            if (isset($data['vision_file'])) {
                unset($data['vision_file']);
            }
            if (isset($data['target_file'])) {
                unset($data['target_file']);
            }
            
            $resource->update($data);
            
            // upload logo 
            uploadImg($request->file('logo'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "logo" => $filename
                ]);
            }, $resource->logo);
            
            // upload message_file 
            uploadImg($request->file('message_file'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "message_file" => $filename
                ]);
            }, $resource->message_file);
            
            // upload vision_file 
            uploadImg($request->file('vision_file'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "vision_file" => $filename
                ]);
            }, $resource->vision_file);
            
            // upload target_file 
            uploadImg($request->file('target_file'), "/uploads/faculty/", function($filename) use ($resource) {
                $resource->update([
                    "target_file" => $filename
                ]);
            }, $resource->target_file);
            
            watch("edit faculty " . $resource->name, "fa fa-bank-up");
            return responseJson(1, __('done'), $resource);
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

    public function destroy(Faculty $resource) {
        try {
            watch("remove faculty " . $resource->name, "fa fa-bank-up");
            $resource->delete();
            return responseJson(1, __('done'));
        } catch (\Exception $th) {
            return responseJson(0, $th->getMessage());
        }
    }

}
