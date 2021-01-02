<?php

use Illuminate\Database\Seeder;
use Modules\Adminsion\Entities\ApplicationRequired;

class ApplicationRequiredSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ApplicationRequired::insert([
            [
                'name' => 'name',
                'required' => '1',
                'display_name' => 'اسم الطالب',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'address',
                'required' => '1',
                'display_name' => 'عنوان الطالب',
                'created_at' => now(),
                'updated_at' => now(),

            ]
            ,[
                'name' => 'birth_address',
                'required' => '1',
                'display_name' => 'محل الولادة',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'national_id',
                'required' => '1',
                'display_name' => ' رقم البطاقة الشخصية ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'national_id_date',
                'required' => '1',
                'display_name' => ' تاريخ اصدار البطاقة الشخصية  ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'national_id_place',
                'required' => '1',
                'display_name' => ' مكان اصدار البطاقة الشخصية',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'triple_number',
                'required' => '1',
                'display_name' => ' الرقم الثلاثى ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'registeration_date',
                'required' => '1',
                'display_name' => ' تاريخ تقديم طلب الالتحاق ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'military_area_id',
                'required' => '1',
                'display_name' => 'جهة التجنيد',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'military_status_id',
                'required' => '1',
                'display_name' => 'حالة التجنيد ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'academic_years_id',
                'required' => '1',
                'display_name' => ' السنة الدراسية ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'password',
                'required' => '1',
                'display_name' => ' كلمة سر التنسيق ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'qualification_types_id',
                'required' => '1',
                'display_name' => ' نوع المؤهل الدراسى الحاصل عليه ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'qualification_date',
                'required' => '1',
                'display_name' => ' تاريخ الحصول على شهادة المؤهل ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'qualification_set_number',
                'required' => '1',
                'display_name' => '  رقم الجلوس  ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'nationality_id',
                'required' => '1',
                'display_name' => 'الجنسية',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'religion',
                'required' => '1',
                'display_name' => 'الديانة',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'gender',
                'required' => '1',
                'display_name' => 'الجنس',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'country_id',
                'required' => '1',
                'display_name' => 'الدولة',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'government_id',
                'required' => '1',
                'display_name' => 'المحافظة',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'city_id',
                'required' => '1',
                'display_name' => 'المدينة',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'language_1_id',
                'required' => '1',
                'display_name' => ' لغة اجنبية اولى ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'language_2_id',
                'required' => '1',
                'display_name' => ' لغة اجنبية ثانية ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'grade',
                'required' => '1',
                'display_name' => ' درجة الحصول على الشهادة ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'phone_1',
                'required' => '1',
                'display_name' => ' تليفون الطالب المتقدم ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'parent_name',
                'required' => '1',
                'display_name' => 'اسم ولى الامر ',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'parent_national_id',
                'required' => '1',
                'display_name' => 'رقم البطاقة الشخصية لولى الامر',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'parent_job_id',
                'required' => '1',
                'display_name' => 'وظيفة ولى الامر',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'parent_address',
                'required' => '1',
                'display_name' => 'عنوان ولى الامر',
                'created_at' => now(),
                'updated_at' => now(),
            ]
            ,[
                'name' => 'parent_phone',
                'required' => '1',
                'display_name' =>' تليفون ولى الامر ',
                'created_at' => now(),
                'updated_at' => now(),
            ]


        ]
        );
    }
}
