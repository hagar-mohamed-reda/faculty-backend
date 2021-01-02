<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserProfileController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('profile.index');
        // dd(Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        dd($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       // dd($request->header('User-Agent'));

        $user = User::find($id);
        $requests = $request->except('image', 'passwored');
        if ($request->has('image')) {
            $image = saveImage($request->image, 'users');
            $requests['image'] = $image;
        }
        $user->update($requests);
        notify()->success("تم تعديل البيانات بنجاح", "", "bottomLeft", );

        return redirect()->route('profile.index');
    }

    // LoginHistory::create([
    //     'ip' => $request->ip(),
    //     'user_id' => $user->id,
    //     'phone_details' => LoginHistory::getInfo($request)
    // ]);

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function updatePassword(Request $request,$id){

        $user = User::find($id);
        if(Hash::check($request->old_password, $user->password)){

            $user->password = Hash::make($request->get('password'));
            $user->save();
            notify()->success(" تم تعديل البيانات بنجاح ", "", "bottomLeft", );
            return redirect()->route('profile.index');
        }else{
            notify()->error("عفوا كلمة السر غير متطابقة", "", "bottomLeft", );
            return redirect()->route('profile.index');
        }
    }
}
