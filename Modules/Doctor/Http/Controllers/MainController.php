<?php

namespace Modules\Doctor\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;

class MainController extends Controller
{
    public function getQuestionLevel(){
        $query = DB::table('question_levels')
                    ->select('name', 'icon')
                    ->latest()->get();

        return $query;
    }

    public function getQuestionType(){
        $query = DB::table('question_types')
                    ->select('name', 'icon')
                    ->latest()->get();

        return $query;
    }
}
