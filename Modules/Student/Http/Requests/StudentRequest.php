<?php

namespace Modules\Student\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
         'name'=>'required',
        'nationality_id'=>'required',
        'gender'=>'required',
        'academic_years_id'=>'required',
        'register_join_date'=>'required',
        'qualification_types_id'=>'required',
        'qualification_date'=>'required',
        'qualification_set_number'=>'required',
        'language_1_id'=>'required',
        'language_2_id'=>'required',
        'city_id'=>'required',
        'government_id'=>'required',
        'country_id'=>'required',
        'religion'=>'required',
        'parent_job_id'=>'required',
        'military_status_id'=>'required',
        'military_area_id'=>'required',
        'national_id'=>'required',
        'password'=>'required',
        'grade'=>'required',
        'triple_number'=>'required',
        'address'=>'required',
        'birth_address'=>'required',
        'phone_1'=>'required',
        'national_id_date'=>'required',
        'national_id_place'=>'required',
        'registeration_date'=>'required',
        'parent_name'=>'required',
        'parent_national_id'=>'required',
        'parent_address'=>'required',
        'parent_phone'=>'required',
        'registration_status_id'=>'required',
        'registration_method_id'=>'required',
        'recommendation_card'=>'required',
        'qualification_certificate'=>'required',
        'birth_certificate'=>'required',
        'personal_identification_photo'=>'required',
        'personal_photo'=>'required',
        'model_2_jund'=>'required',
        'model_6_jund'=>'required',
        'receipt_letter'=>'required',
        'estimates_statement'=>'required',
        'case_status'=>'required',
        'degree_status'=>'required',
        'egyptians_lab_speechs'=>'required'
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
