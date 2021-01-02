<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="rtl">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>المعهد العالى للعلوم الادارية/ @yield('title')</title>
    <link rel="apple-touch-icon" href="{{ url('/') }}/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="{{ url('/') }}/app-assets/images/login/159101941365801.png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/vendors/css/vendors-rtl.min.css">
    <!-- END: Vendor CSS-->
    <script
			  src="https://code.jquery.com/jquery-3.5.1.js"
			  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
			  crossorigin="anonymous"></script>
    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --}}

    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/main.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/colors.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/components.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/themes/semi-dark-layout.css">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/vendors-rtl.min.css">
    
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/tables/datatable/datatables.min.css">
  <!--
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/datatable/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/datatable/buttons.dataTables.min.css">
     -->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/js/jquery/jquery.min.js">
    <!-- END: Vendor CSS-->
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/plugins/forms/validation/form-validation.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css-rtl/custom-rtl.css">
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/assets/css/style-rtl.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- END: Custom CSS-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.min.css">
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    @include('layouts.custom_css')
    
    @yield('custom-style')
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu 2-columns  navbar-floating footer-static  {{ Theme::isDark()? 'dark-layout' : '' }}" data-open="hover" data-menu="horizontal-menu" data-col="2-columns">
    @include('sweetalert::alert')

    <!-- BEGIN: Header-->
    @include('includes.nav')

    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
    @include('includes.sidebar')
    <!-- END: Main Menu-->
 <!-- BEGIN: Content-->
 <div class="app-content content">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">

        <div class="content-header row">
            @yield('breadcrumbs')
        </div>
        <div class="content-body">
            <!-- Dashboard Analytics Start -->
            <section id="dashboard-analytics">
                @yield('content')
            </section>
            <!-- Dashboard Analytics end -->

        </div>
    </div>
</div>
<!-- END: Content-->

    <!-- BEGIN: Content-->
    {{-- <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                @yield('breadcrumbs')
                </div>
            </div>
            <div class="content-body">
                <section id="dashboard-analytics">
                    @yield('content')
                </section>

                <div class="row" id="table-striped">
                    <div class="col-12">


                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
   @include('includes.footer')
   
   {{--@include('layouts.bottom_sheet')--}}
    <!-- END: Footer-->


    <!-- BEGIN: Vendor JS-->
    <script src="{{ url('/') }}/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="{{ url('/') }}/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="{{ url('/') }}/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"></script>
    <!-- END: Page Vendor JS-->
    <!-- BEGIN: Page Vendor JS-->
        <script src="../../../app-assets/vendors/js/ui/jquery.sticky.js"></script>
        <script src="../../../app-assets/vendors/js/pickers/pickadate/picker.js"></script>
        <script src="../../../app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
        <script src="../../../app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
        <script src="../../../app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
        <script src="../../../app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
    <!-- END: Page Vendor JS-->
    <!-- BEGIN: Theme JS-->
    <script src="{{ url('/') }}/app-assets/js/core/app-menu.js"></script>
    <script src="{{ url('/') }}/app-assets/js/core/app.js"></script>
    <script src="{{ url('/') }}/app-assets/js/scripts/components.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="{{ url('/') }}/app-assets/js/scripts/forms/validation/form-validation.js"></script>
    <!-- END: Page JS-->

    <script>
        (function(b, o, i, l, e, r) {
            b.GoogleAnalyticsObject = l;
            b[l] || (b[l] =
                function() {
                    (b[l].q = b[l].q || []).push(arguments)
                });
            b[l].l = +new Date;
            e = o.createElement(i);
            r = o.getElementsByTagName(i)[0];
            e.src = 'https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e, r)
        }(window, document, 'script', 'ga'));
        ga('create', 'UA-XXXXX-X', 'auto');
        ga('send', 'pageview');
    </script>
     <script>
        function Delete(id){
            Swal.fire({
                title: 'هل انت متاكد؟',
                text: "عند الحذف لا يمكن استرجاع البيانات",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'نعم احذف'
            }).then((result) => {
                if (result.value) {
                $(id).submit();
            }
        })
        }
    </script>
     <!-- BEGIN: Page Vendor JS-->
     <script src="../../../app-assets/vendors/js/ui/jquery.sticky.js"></script>
   
     <script src="../../../app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/datatables.bootstrap4.min.js"></script>
    
     <!-- DataTables -->  <!--
    <script src="{{ url('/') }}/app-assets/datatable/jquery.dataTables.min.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/dataTables.bootstrap.min.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/dataTables.buttons.min.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/buttons.flash.min.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/jszip.min.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/pdfmake.min.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/vfs_fonts.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/buttons.html5.min.js"></script>
    <script src="{{ url('/') }}/app-assets/datatable/buttons.print.min.js"></script> 
      -->
     <!-- END: Page Vendor JS-->
        <!-- BEGIN: Page JS-->
    <script src="../../../app-assets/js/scripts/datatables/datatable.js"></script>
    <!-- END: Page JS-->



     <script src="{{ url('/') }}/app-assets/js/vue.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.default-datatable').each(function(){
                $(this).DataTable({
                    "pageLength": 10,
                    dom: 'Bfrtip',
                    "sorting": false,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Arabic.json"
                    },
                    buttons: [
                        'copyHtml5',
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5'
                    ]
                });
            });
            $('#defaultDatatable').DataTable({
               "pageLength": 10,
               dom: 'Bfrtip',
               "sorting": false,
               buttons: [
                   'copyHtml5',
                   'excelHtml5',
                   'csvHtml5',
                   'pdfHtml5'
               ]
            });
        });
        function datatable(id) { 
            $('#'+id).DataTable({
               "pageLength": 10,
               dom: 'Bfrtip',
               "sorting": false,
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Arabic.json"
                },
               buttons: [
                   'copyHtml5',
                   'excelHtml5',
                   'csvHtml5',
                   'pdfHtml5'
               ]
            });
        }
    </script>
    @yield('more_scripts')
    @include('vendor.lara-izitoast.toast')

</body>
<!-- END: Body-->

</html>
