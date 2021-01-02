<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Direction extends Model
{
    
    /**
     * default direction of application
     * 
     * @var string default direction of application
     */
    public static $DEFAULT = "rtl";
    
    
    /**
     * return direction of the application
     * rtl => arabic mode
     * ltr => foreign language
     * 
     * @return string name of the direction
     */
    public static function getDirection() {
        return session('direction')? session('direction') : self::$DEFAULT;
    }
    
    /**
     * check if the direction rtl
     * 
     * @return boolean
     */
    public static function isRtl() {
        return self::getDirection() == 'rtl'? true : false;
    }
}
