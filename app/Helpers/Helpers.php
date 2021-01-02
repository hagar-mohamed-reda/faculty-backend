<?php

if (!function_exists('uploadImg')) {
    function uploadImg($file, $folder = '/', $action, $oldPath=null) {

        $filename = "";
        if ($file) { 
            
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '' . rand(11111, 99999) . '.' . $extension; // renameing image
            $dest = public_path('/' . $folder);
            $file->move($dest, $filename);

            $action($filename);
        }
         
        if ($oldPath) {
            if (file_exists(public_path($oldPath))) {
                unlink(public_path($oldPath));
            }
        }
        return $filename;
    }
}

if (!function_exists('trans')) {

    /**
     * Translate the given message.
     *
     * @param  string|null  $key
     * @param  array   $replace
     * @param  string|null  $locale
     * @return \Illuminate\Contracts\Translation\Translator|string|array|null
     */
    //tarnslations from database
    function trans($key = null, $replace = [], $locale = null) {
        $word = $key;
        // prepare key
        $key = strtolower($key);
        $key = str_replace(" ", "_", $key);

        // my code for translation
        try {
            $translation = App\Translation::where('key', $key)->first();

            if ($translation) {
                $translate = (App\Lang::getLang() == 'ar') ? $translation->name_ar : $translation->word_en;

                if ($translate) {
                    return $translate;
                }
            } else {
                App\Translation::create([
                    "key" => $key,
                    "name_en" => $word,
                ]);
            }
        } catch (\Exception $exc) {
            //
        }

        return $word;

//        if (is_null($key)) {
        //            return app('translator');
        //        }
        //
        //        return app('translator')->trans($key, $replace, $locale);
    }

}

if (!function_exists('__')) {

    /**
     * Translate the given message.
     *
     * @param  string  $key
     * @param  array  $replace
     * @param  string|null  $locale
     * @return string|array|null
     */
    function __($key, $replace = [], $locale = null) {
        return trans($key, $replace, $locale);
        //return app('translator')->getFromJson($key, $replace, $locale);
    }

}


/**
 * Translate the given message.
 *
 * @param string  $title title of notification
 * @param string $body body of notification
 * @param string $icon icon of fontawosome
 */
if (!function_exists('notfy')) {

    function notfy($title, $body = '', $icon = '') {
        try {
            return App\Notification::notify($title, $body, $icon);
        } catch (Exception $exc) {
            return null;
        }
    }

}


/**
 * Translate the given message.
 *
 * @param string  $title title of notification
 * @param string $body body of notification
 * @param string $icon icon of fontawosome
 */
if (!function_exists('log')) {

    function log($body, $icon = '') {
        try {
            return App\Notification::notify($body, $body, $icon);
        } catch (Exception $exc) {
            return null;
        }
    }

}

/**
 * Translate the given message.
 *
 * @param string  $title title of notification
 * @param string $body body of notification
 * @param string $icon icon of fontawosome
 */
if (!function_exists('watch')) {

    function watch($body, $icon = '') {
        try {
            return App\Notification::notify($body, $body, $icon);
        } catch (Exception $exc) {
            return null;
        }
    }

}
/**
 * rand css class color from w3.css classes
 *
 * @return String class of the color
 */
if (!function_exists('randColor')) {
    function randColor() {
        $colors = [
            "w3-red",
            "w3-pink",
            "w3-green",
            "w3-blue",
            "w3-purple",
            "w3-deep-purple",
            "w3-indigo",
            "w3-light-blue",
            "w3-cyan",
            "w3-aqua",
            "w3-teal",
            "w3-lime",
            "w3-light-green",
            "w3-orange",
            "w3-blue-gray",
            "w3-brown",
        ];

        return $colors[array_rand($colors)];
    }
}

  
/**
 * rand css class for text color from w3.css classes
 *
 * @return String class of the color
 */
if (!function_exists('randTextColor')) {
    function randTextColor() {
        $colors = [
            "w3-text-red",
            "w3-text-pink",
            "w3-text-green",
            "w3-text-blue",
            "w3-text-purple",
            "w3-text-deep-purple",
            "w3-text-indigo",  
            "w3-text-teal", 
            "w3-text-orange",
            "w3-text-blue-gray",
            "w3-text-brown",
        ];

        return $colors[array_rand($colors)];
    }
}  

/**
 * rand css class color from w3.css classes
 *
 * @return String class of the color
 */
if (!function_exists('getSetting')) {
    function getSetting($id) {
        $setting = App\Setting::find($id);
        if (!$setting) 
            $setting = App\Setting::create([
                "id" => $id,
                "name" => '-',
                "value" => '-',
            ]);
        
        return $setting->value;
    }
}

/**
 * reponse json 
 * 
 * @return Array
 */
if (!function_exists('responseJson')) {

    function responseJson($status, $message, $data=null) {
        return [
            "status" => $status,
            "message" => $message,
            "data" => $data
        ];
    }

}

//Json array response

if (!function_exists('saveImage')) {

    function saveImage($file, $folder = '/') {
        $fileName = date('YmdHis') . rand(11111, 99999) . '-' . $file->getClientOriginalName();
        $dest = public_path('uploads/' . $folder);
        $file->move($dest, $fileName);
        return 'uploads/' . $folder . '/' . $fileName;
    }

}

if (!function_exists('deleteFile')) {

//Delete Image
    function deleteFile($name) {
        $file = public_path('/' . $name);
        if (file_exists($file)) {
            File::delete($file);
        }
    }

}
if (!function_exists('saveImageBase64')) {

    function saveImageBase64($image, $folder = '/', $filename = 'image') {
        $type = "png";
        //get the base-64 from data
        //$base64_str = substr($request->image, strpos($request->image, ",")+1);
        $data = base64_decode($image);
        if ($data === false) {
            return ""; // throw new \Exception('base64_decode failed');
        }
        $fileName = date('YmdHis') . '-' . $filename . '.' . $type;
        $dest = public_path('uploads/' . $folder);
        $path = 'uploads/' . $folder . '/' . $fileName;
        if (!is_dir(public_path('uploads/' . $folder))) {
            // dir doesn't exist, make it
            mkdir(public_path('uploads/' . $folder));
        }
        file_put_contents($dest . '/' . $fileName, $data);
        return 'uploads/' . $folder . '/' . $fileName;
    }

}
