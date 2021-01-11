<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use DB;
class MainController extends Controller
{
    public function getQuestionLevel(){
        $query = DB::table('question_levels')
                    ->latest()->get();

        return $query;
    }

    public function getQuestionType(){
        $query = DB::table('question_types')
                    ->latest()->get();

        return $query;
    }
}
