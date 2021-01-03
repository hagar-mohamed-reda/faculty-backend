<?php

namespace Modules\Admin\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Admin\Entities\Notification;

class NotificationController extends Controller
{
    public function getNotifications(Request $request) {
        $user = $request->user;
        $query = Notification::where('user_id', $user->id)
        ->where('seen', '0');

        $notifications = $query->latest()->get();
        $query->update(['seen' => 1]);

        return $notifications;
    }
}
