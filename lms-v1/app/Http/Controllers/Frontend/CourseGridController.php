<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Course;
use Illuminate\Http\Request;

class CourseGridController extends Controller
{
    public function CourseGrid()
    {
        $courses = Course::all();
        return view('frontend.course.course_grid', compact('courses'));
    }
}
