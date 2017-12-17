<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/plugins/images/favicon.png" />">
    <title>Ample Admin Template - The Ultimate Multipurpose admin template</title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="<c:url value="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" />" rel="stylesheet">
    <!-- toast CSS -->
    <link href="<c:url value="/plugins/bower_components/toast-master/css/jquery.toast.css" />" rel="stylesheet">
    <!-- morris CSS -->
    <link href="<c:url value="/plugins/bower_components/morrisjs/morris.css" />" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="<c:url value="/plugins/bower_components/chartist-js/dist/chartist.min.css" />" rel="stylesheet">
    <link href="<c:url value="/plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" />" rel="stylesheet">
    <!-- Calendar CSS -->
    <link href="<c:url value="/plugins/bower_components/calendar/dist/fullcalendar.css" />" rel="stylesheet" />" />
    <!-- animation CSS -->
    <link href="<c:url value="/css/animate.css" />" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/css/style.css" />" rel="stylesheet">
    <!-- color CSS -->
    <link href="<c:url value="/css/colors/megna-dark.css" />" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="<c:url value="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" />"></script>
    <script src="<c:url value="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" />"></script>
<![endif]-->
</head>

<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        
        <%@include file="tmp-top-nav.jsp" %>
        
        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        
        <%@include file="tmp-left-sidebar.jsp" %>
        
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->
        
        <%@include file="tmp-page-content.jsp" %>
        
        <!-- ============================================================== -->
        <!-- End Page Content -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<c:url value="/plugins/bower_components/jquery/dist/jquery.min.js" />"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/bootstrap/dist/js/bootstrap.min.js" />"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="<c:url value="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js" />"></script>
    <!--slimscroll JavaScript -->
    <script src="<c:url value="/js/jquery.slimscroll.js" />"></script>
    <!--Wave Effects -->
    <script src="<c:url value="/js/waves.js" />"></script>
    <!--Counter js -->
    <script src="<c:url value="/plugins/bower_components/waypoints/lib/jquery.waypoints.js" />"></script>
    <script src="<c:url value="/plugins/bower_components/counterup/jquery.counterup.min.js" />"></script>
    <!--Morris JavaScript -->
    <script src="<c:url value="/plugins/bower_components/raphael/raphael-min.js" />"></script>
    <script src="<c:url value="/plugins/bower_components/morrisjs/morris.js" />"></script>
    <!-- chartist chart -->
    <script src="<c:url value="/plugins/bower_components/chartist-js/dist/chartist.min.js" />"></script>
    <script src="<c:url value="/plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js" />"></script>
    <!-- Calendar JavaScript -->
    <script src="<c:url value="/plugins/bower_components/moment/moment.js" />"></script>
    <script src='<c:url value="/plugins/bower_components/calendar/dist/fullcalendar.min.js" />'></script>
    <script src="<c:url value="/plugins/bower_components/calendar/dist/cal-init.js" />"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<c:url value="/js/custom.min.js" />"></script>
    <script src="<c:url value="/js/dashboard1.js" />"></script>
    <!-- Custom tab JavaScript -->
    <script src="<c:url value="/js/cbpFWTabs.js" />"></script>
    <script type="text/javascript">
    (function() {
        [].slice.call(document.querySelectorAll('.sttabs')).forEach(function(el) {
            new CBPFWTabs(el);
        });
    })();
    </script>
    <script src="<c:url value="/plugins/bower_components/toast-master/js/jquery.toast.js" />"></script>
    <!--Style Switcher -->
    <script src="<c:url value="/plugins/bower_components/styleswitcher/jQuery.style.switcher.js" />"></script>
</body>

</html>