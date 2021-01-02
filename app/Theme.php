<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Theme extends Model
{
    
    /**
     * default theme of application
     * 
     * @var string default theme of application
     */
    public static $DEFAULT = "light";
    
    /**
     * light theme
     * 
     * @var string default direction of application
     */
    public static $LIGHT = "light";
    
    /**
     * light theme
     * 
     * @var string default direction of application
     */
    public static $DARK = "dark";
    
    
    /**
     * return direction of the application
     * rtl => arabic mode
     * ltr => foreign language
     * 
     * @return string name of the direction
     */
    public static function getTheme() {
        return session('theme')? session('theme') : self::$DEFAULT;
    }
    
    /**
     * set theme of the application
     * light => mode
     * dark => mode
     * 
     * @return string name of the theme
     */
    public static function setTheme($theme) {
        session(['theme' => $theme]);
    }
    
    /**
     * check if the theme light
     * 
     * @return boolean
     */
    public static function isLight() {
        return self::getTheme() == self::$LIGHT? true : false;
    }
    
    /**
     * check if the theme dark
     * 
     * @return boolean
     */
    public static function isDark() {
        return self::getTheme() == self::$DARK? true : false;
    }
}
