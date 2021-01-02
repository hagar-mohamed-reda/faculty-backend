<?php

namespace App;
 
use Illuminate\Database\Eloquent\Model;
use DB;


class Role extends Model
{

	protected $table = "roles";
    //public $guarded = [];
    protected $fillable= ['name'];
    protected $hidden = [
        'created_at', 'updated_at'
    ];

    protected $appends =  [
    	'can_delete', 'permissions'
    ];

    public function getPermissionsAttribute() {
    	return $this->permissions();
    }

    public function getCanDeleteAttribute() {
    	$can = true;
    	if (DB::table('users')->where('role_id', $this->id)->count() > 0) {
    		$can = false;
    	}
    	return $can;
    }

    public function rolePermissions() {
    	return $this->hasMany('App\RolePermission', 'role_id');
    }

    public function permissions() {
    	$ids = $this->rolePermissions()->pluck('permission_id')->toArray();
    	return Permission::whereIn('id', $ids)->get();
    }

}
