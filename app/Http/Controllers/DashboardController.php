<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Account\Entities\AccountSetting;
use App\Notification;
use DB;

class DashboardController extends Controller
{
    /** 
     */
    public function getSettings()
    {
        $settings = [];
        $settings['current_academic_year'] = AccountSetting::getCurrentAcademicYear();
        $settings['current_term'] = AccountSetting::getCurrentTerm();

        return $settings;
    }

    public function getNotifications(Request $request) {
        $user = $request->user;
        $query = Notification::where('user_id', $user->id)
        ->where('seen', '0');
        
        $notifications = $query->latest()->get();
        $query->update(['seen' => 1]);

        return $notifications;
    }
 
}
