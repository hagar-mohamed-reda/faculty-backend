<div class="horizontal-menu-wrapper">
    <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-without-dd-arrow navbar-shadow menu-border" role="navigation" data-menu="menu-wrapper">
        <div class="navbar-header">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item mr-auto"><a class="navbar-brand" href="../../../html/rtl/horizontal-menu-template/index.html">
                        <img src="{{ asset('/app-assets/images/login/159101941365801.png')}}" alt="" style="width: 40px !important;">
                        <h2 class="brand-text mb-0">{{ getSetting(2) }}</h2>
                    </a></li>
                <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="feather icon-x d-block d-xl-none font-medium-4 primary toggle-icon"></i><i class="toggle-icon feather icon-disc font-medium-4 d-none d-xl-block collapse-toggle-icon primary" data-ticon="icon-disc"></i></a></li>
            </ul>
        </div>
        <!-- Horizontal menu content-->
        <div class="navbar-container main-menu-content " data-menu="menu-container">
            <!-- include ../../../includes/mixins-->
            <ul class="nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation">


                <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link" href="index.html" data-toggle="dropdown"><i class="feather icon-home"></i><span data-i18n="Dashboard">{{ __('main') }}</span></a>
                    <ul class="dropdown-menu">

                        <li class="{{ (request()->is('/')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('/') }}" data-i18n="Analytics"><i class="feather icon-home"></i>{{ __('main') }}</a>
                        </li>
                        <li class="{{ (request()->is('translation')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('translation') }}" data-i18n="Analytics"><i class="feather icon-type"></i>{{ __('translation') }}</a>
                        </li>
                        @permission('settings_read')
                        <li class="{{ (request()->is('settings')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('settings') }}" data-i18n="Analytics"><i class="feather icon-settings"></i>{{ __('main settings') }}</a>
                        </li>
                        @endpermission
                        @permission('academic-years_read')
                        <li class="{{ (request()->is('academic-years')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('academic-years') }}" data-i18n="Analytics"><i class="feather icon-clock"></i>{{ __('Academic year') }}</a>
                        </li>
                        @endpermission


                        <li class="dropdown dropdown-submenu" data-menu="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#" data-toggle="dropdown" data-i18n="Ecommerce"><i class="feather icon-file"></i> {{ __('adminsion status') }}</a>
                            <ul class="dropdown-menu">
                                @permission('registeration-status_read')
                                <li class="{{ (request()->is('registeration-status')) ? 'active' : '' }}" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('registeration-status') }}" data-i18n="Analytics"><i class="feather icon-file"></i>{{ __('adminsion status') }} </a>
                                </li>
                                @endpermission

                                @permission('registeration-methods_read')
                                <li class="{{ (request()->is('registeration-methods')) ? 'active' : '' }} w3-border-0" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('registeration-methods') }}" data-i18n="Analytics"><i class="feather icon-file-text"></i>{{ __('adminsion metods') }} </a>
                                </li>
                                @endpermission

                            </ul>
                          </li>


                          {{-- الاقسام الدراسية بالمعهد --}}
                        <li class="dropdown dropdown-submenu" data-menu="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#" data-toggle="dropdown" data-i18n="Ecommerce"><i class="feather icon-trending-up"></i>{{ __('academin sections') }}</a>
                            <ul class="dropdown-menu">
                                @permission('levels_read')
                                <li class="{{ (request()->is('levels')) ? 'active' : '' }}" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('levels') }}" data-i18n="Analytics"><i class="fa fa-level-up"></i> {{ __('levels') }}</a>
                                </li>
                                @endpermission

                                @permission('departments_read')
                                <li class="{{ (request()->is('departments')) ? 'active' : '' }}" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('departments') }}" data-i18n="Analytics"><i class="fa fa-bank"></i> {{ __('departments') }} </a>
                                </li>
                                @endpermission

                                @permission('divisions_read')
                                <li class="{{ (request()->is('divisions')) ? 'active' : '' }} w3-border-0" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('divisions') }}" data-i18n="Analytics"><i class="fa fa-bullseye"></i>{{ __('divisions') }}</a>
                                </li>
                                @endpermission

                            </ul>
                          </li>

                          <li class="dropdown dropdown-submenu" data-menu="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#" data-toggle="dropdown" data-i18n="Ecommerce"><i class="fa fa-file-text-o"></i>{{ __('qualifications') }}</a>
                            <ul class="dropdown-menu">

                                @permission('qualifications_read')
                                <li class="{{ (request()->is('qualifications')) ? 'active' : '' }}" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('qualifications') }}" data-i18n="Analytics"><i class="fa fa-file-text-o"></i>{{ __('qualifications') }}</a>
                                </li>
                                @endpermission

                                @permission('qualification-types_read')
                                <li class="{{ (request()->is('qualification-types')) ? 'active' : '' }} w3-border-0" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('qualification-types') }}" data-i18n="Analytics"><i class="fa fa-file-code-o"></i>{{ __('qualification types') }}</a>
                                </li>
                                @endpermission

                            </ul>
                        </li>
                        @if(auth()->user()->hasPermission('roles_read'))
                        <li class="{{ (request()->is('roles')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('roles') }}" data-i18n="Analytics"><i class="fa fa-bars"></i>{{ __('roles') }}</a>
                        </li>
                        @endif
                        @permission('users_read')
                        <li class="{{ (request()->is('users')) ? 'active' : '' }}" data-menu="">

                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('users') }}" data-i18n="Analytics"><i class="feather icon-users"></i>{{ __('users') }} </a>
                        </li>
                        @endpermission

                        <li class="dropdown dropdown-submenu" data-menu="dropdown-submenu"><a class="dropdown-item dropdown-toggle " href="#" data-toggle="dropdown" data-i18n="Ecommerce"><i class="fa fa-globe"></i>{{ __('countries and cities') }} </a>
                            <ul class="dropdown-menu">
                                @permission('countries_read')
                                <li class="{{ (request()->is('countries')) ? 'active' : '' }}" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('countries') }}" data-i18n="Analytics"><i class="fa fa-globe"></i>{{ __('countries') }} </a>
                                </li>
                                @endpermission

                                @permission('governments_read')
                                <li class="{{ (request()->is('governments')) ? 'active' : '' }}" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('governments') }}" data-i18n="Analytics"><i class="fa fa-globe"></i>{{ __('governments') }} </a>
                                </li>
                                @endpermission

                                @if(auth()->user()->hasPermission('cities_read'))
                                <li class="{{ (request()->is('cities')) ? 'active' : '' }}" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('cities') }}" data-i18n="Analytics"><i class="fa fa-globe"></i>{{ __('cities') }}</a>
                                </li>
                                @endif
                                @permission('nationalities_read')
                                <li class="{{ (request()->is('nationalities')) ? 'active' : '' }} w3-border-0" data-menu="">
                                    <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('nationalities') }}" data-i18n="Analytics"><i class="fa fa-user-circle"></i>{{ __('nationalities') }}</a>
                                </li>
                                @endpermission

                            </ul>
                        </li>
                        @permission('relations_read')
                        <li class="{{ (request()->is('relations')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('relations') }}" data-i18n="Analytics"><i class="fa fa-user-circle"></i>{{ __('relative relations') }}</a>
                        </li>
                        @endpermission
                        @permission('languages_read')
                        <li class="{{ (request()->is('languages')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('languages') }}" data-i18n="Analytics"><i class="fa fa-language "></i> {{ __('languages') }}</a>
                        </li>
                        @endpermission

                        @permission('parent-jobs_read')
                        <li class="{{ (request()->is('parent-jobs')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('parent-jobs') }}" data-i18n="Analytics"><i class="feather icon-users"></i>{{ __('parent jobs') }}</a>
                        </li>
                        @endpermission


                    </ul>
                </li>
                <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown"><i class="feather icon-package"></i><span data-i18n="Apps">{{ __('applications') }}</span></a>
                    <ul class="dropdown-menu">
                        <li class="{{ (request()->is('application-requirments')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('application-requirments') }}" data-i18n="Analytics"><i class="feather icon-activity"></i> {{ __('application requirments') }}</a>
                        </li>

                        <li class="{{ (request()->is('applications')) ? 'active' : '' }} w3-border-0" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('applications') }}" data-i18n="Analytics"><i class="feather icon-activity"></i> {{ __('application files') }}</a>
                        </li>

                        <li class="{{ (request()->is('student-code-series')) ? 'active' : '' }} w3-border-0" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('student-code-series') }}" data-i18n="Analytics"><i class="fa fa-barcode"></i> {{ __('student_code_series') }}</a>
                        </li>
                    </ul>
                </li>

                <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown"><i class="feather icon-package"></i><span data-i18n="Apps">{{ __('military') }}</span></a>
                    <ul class="dropdown-menu">
                        <li class="{{ (request()->is('military-status')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('military-status') }}" data-i18n="Analytics"><i class="feather icon-activity"></i>{{ __('military status') }}</a>
                        </li>
                        <li class="{{ (request()->is('military-areas')) ? 'active' : '' }} w3-border-0" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('military-areas') }}" data-i18n="Analytics"><i class="feather icon-activity"></i>{{ __('military areas') }}</a>
                        </li>
                        <li class="{{ (request()->is('military-area-submission')) ? 'active' : '' }} w3-border-0" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('military-area-submission') }}" data-i18n="Analytics"><i class="feather icon-activity"></i>{{ __('military area submission') }}</a>
                        </li>
                        <li class="{{ (request()->is('military-status-reason')) ? 'active' : '' }} w3-border-0" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('military-status-reason') }}" data-i18n="Analytics"><i class="feather icon-activity"></i>{{ __('military status reason') }}</a>
                        </li>
                        <li class="{{ (request()->is('military-course')) ? 'active' : '' }} w3-border-0" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('military-course') }}" data-i18n="Analytics"><i class="feather icon-activity"></i>{{ __('military course') }}</a>
                        </li>
                        <li class="{{ (request()->is('military-course-collection')) ? 'active' : '' }} w3-border-0" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('military-course-collection') }}" data-i18n="Analytics"><i class="feather icon-activity"></i>{{ __('military course collection') }}</a>
                        </li>
                    </ul>
                </li>


                <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown"><i class="fa fa-line-chart"></i><span data-i18n="Apps">{{ __('reports') }}</span></a>
                    <ul class="dropdown-menu">
                        <li class="{{ (request()->is('report/setting')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ route('reportSetting') }}" data-i18n="Analytics"><i class="fa fa-cogs"></i> {{ __('settings') }}</a>
                        </li>
                        <li class="{{ (request()->is('report/letter_sending_to_institute')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ route('letterSendingToInstituteReport') }}" data-i18n="Analytics"><i class="fa fa-newspaper-o"></i> {{ __('letter_sending_to_institute') }}</a>
                        </li>
                        <li class="{{ (request()->is('report/letter_sending_from_institute')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ route('letterSendingFromInstituteReport') }}" data-i18n="Analytics"><i class="fa fa-newspaper-o"></i> {{ __('letter_sending_from_institute') }}</a>
                        </li>
                    </ul>
                </li>


                <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown"><i class="fa fa-line-chart"></i><span data-i18n="Apps">{{ __('students') }}</span></a>
                    <ul class="dropdown-menu">
                        <li class="{{ (request()->is('students')) ? 'active' : '' }}" data-menu="">
                            <a class="dropdown-item"  data-toggle="dropdown"  href="{{ url('students') }}" data-i18n="Analytics"><i class="fa fa-cogs"></i> {{ __('students') }}</a>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
