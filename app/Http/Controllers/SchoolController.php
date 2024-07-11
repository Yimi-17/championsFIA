<?php

namespace App\Http\Controllers;

use App\Http\Requests\SchoolPostRequest;
use App\Models\School;

class SchoolController extends Controller{

    public function index(){
        $schools=School::all();
        //return $schools;
        return response()->json($schools);
    }

    public function show(School $school){
        $school=School::find($school);
        return response()->json($school);
    }

    public function store(SchoolPostRequest $request){
        $school = School::create($request->all());

        return response()->json([
            'message' => "record saved successfully!",
            'school' => $school
        ], 200);
    }

    public function update(SchoolPostRequest $request, School $school){
        $school->update($request->all());

        return response()->json([
            'message' => "record updated successfully!",
            'school' => $school
        ], 200);
    }

    public function destroy(School $school){
        $school->delete();
        return response()->json([
            'message' => "record deleted successfully!",
        ], 200);
    }
}
