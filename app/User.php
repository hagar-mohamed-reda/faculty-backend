<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable; 

use DB;

class User extends Authenticatable
{ 
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'username', 'image', 'phone', 'api_token', 'role_id'
    ];

    
    protected $appends = [
         'image_url', 'permissions'
    ];
    
    public function getImageUrlAttribute() {
        return url("/") . "/". $this->image;
    }

    public function getPermissionsAttribute() {
        $ids = RolePermission::where('role_id', $this->role_id)->pluck('permission_id')->toArray();

        $permissions = Permission::whereIn('id', $ids)->pluck('id', 'name')->toArray();
        return $permissions;
    }

   
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
          'remember_token','created_at', 'updated_at', 'email_verified_at'
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * return all login history of the user
     * 
     * @return type Collection
     */
    public function loginHistory() {
        return $this->hasMany("App\LoginHistory", 'user_id');
    }
    
    
    /**
     * return all notfication [activities] of the user
     * 
     * @return type Collection
     */
    public function notifications() {
        return $this->hasMany('App\Notification', 'user_id');
    }

    public function role(){
        return $this->belongsTo('App\Role', 'role_id');
    }
     
}
