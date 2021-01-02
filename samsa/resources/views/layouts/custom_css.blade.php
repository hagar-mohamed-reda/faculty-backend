<!-- google fonts -->
<link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">

<!-- custom css  -->
<link rel="stylesheet" type="text/css" href="{{ url('/') }}/app-assets/css/custom-css.css">

<style> 
    html {
        overflow: hidden;
    }
    *, h1, h2, h3, h4, h5, h6 {
        font-family: 'Cairo', sans-serif;
    }
    
    .card, .dropdown-menu, .shadow {
        box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24) !important;
    }
    
    .horizontal-menu-wrapper .navbar-container .dropdown-menu li {
        border-bottom: 1px solid lightgray;
        max-height: 40px; 
        font-size: 14px;
    } 
    
    td, th {
        padding: 5px!important;
    }
    
    .light-gray {
        background-color: #fafafa;
    }
    
    .dataTables_filter {
        float: right;
        padding: 10px;
    }
    .dt-buttons { 
        float: right;
        padding: 10px;
    }
    
    .btn {
        height: 35px!important;
        padding-top: 10px!important;
    }
    
    .card-header {
        padding: 10px!important;
    }
    
    .dt-buttons .btn {
        margin: 3px!important;
        display: inline-block!important;
        padding: 6px 12px!important;
        margin-bottom: 0!important;
        font-size: 14px!important;
        font-weight: 400!important;
        line-height: 1.42857143!important;
        text-align: center!important;
        white-space: nowrap!important;
        vertical-align: middle!important;
        -ms-touch-action: manipulation!important;
        touch-action: manipulation!important;
        cursor: pointer!important;
        -webkit-user-select: none!important;
        -moz-user-select: none!important;
        -ms-user-select: none!important;
        user-select: none!important;
        background-image: none!important;
        border: 1px solid transparent!important;
        border-radius: 4px!important;
        color: #333!important;
        background-color: #fff!important;
        border-color: #ccc!important;
    }
    
    th, td, label, table {
        text-align: right;
    }
</style>