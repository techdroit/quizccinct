<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value="/plugins/images/favicon.png" />">
<title>Quiz List</title>
<!-- Bootstrap Core CSS -->
<link href="<c:url value="/bootstrap/dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/plugins/bower_components/datatables/jquery.dataTables.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- Menu CSS -->
<link
	href="<c:url value="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" />"
	rel="stylesheet">
<!-- animation CSS -->
<link href="<c:url value="/css/animate.css" />" rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="/css/style.css" />" rel="stylesheet">
<!-- color CSS -->
<link href="<c:url value="/css/colors/megna-dark.css" />" id="theme"
	rel="stylesheet">
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
            <circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="2" stroke-miterlimit="10" />
        </svg>
	</div>
	<!-- ============================================================== -->
	<!-- Wrapper -->
	<!-- ============================================================== -->
	<div id="wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<nav class="navbar navbar-default navbar-static-top m-b-0">
			<div class="navbar-header">
				<div class="top-left-part">
					<!-- Logo -->
					<a class="logo" href="index.html"> <!-- Logo icon image, you can use font-icon also -->
						<b> <!--This is dark logo icon--> <img
							src="../plugins/images/admin-logo.png" alt="home"
							class="dark-logo" /> <!--This is light logo icon--> <img
							src="../plugins/images/admin-logo-dark.png" alt="home"
							class="light-logo" />
					</b> <!-- Logo text image you can use text also --> <span
						class="hidden-xs"> <!--This is dark logo text--> <img
							src="../plugins/images/admin-text.png" alt="home"
							class="dark-logo" /> <!--This is light logo text--> <img
							src="../plugins/images/admin-text-dark.png" alt="home"
							class="light-logo" />
					</span>
					</a>
				</div>
				<!-- /Logo -->
				<!-- Search input and Toggle icon -->
				<ul class="nav navbar-top-links navbar-left">
					<li><a href="javascript:void(0)"
						class="open-close waves-effect waves-light"><i class="ti-menu"></i></a></li>
					<li class="dropdown"><a
						class="dropdown-toggle waves-effect waves-light"
						data-toggle="dropdown" href="#"> <i class="mdi mdi-gmail"></i>
							<div class="notify">
								<span class="heartbit"></span> <span class="point"></span>
							</div>
					</a>
						<ul class="dropdown-menu mailbox animated bounceInDown">
							<li>
								<div class="drop-title">You have 4 new messages</div>
							</li>
							<li>
								<div class="message-center">
									<a href="#">
										<div class="user-img">
											<img src="../plugins/images/users/pawandeep.jpg" alt="user"
												class="img-circle"> <span
												class="profile-status online pull-right"></span>
										</div>
										<div class="mail-contnet">
											<h5>Pavan kumar</h5>
											<span class="mail-desc">Just see the my admin!</span> <span
												class="time">9:30 AM</span>
										</div>
									</a> <a href="#">
										<div class="user-img">
											<img src="../plugins/images/users/sonu.jpg" alt="user"
												class="img-circle"> <span
												class="profile-status busy pull-right"></span>
										</div>
										<div class="mail-contnet">
											<h5>Sonu Nigam</h5>
											<span class="mail-desc">I've sung a song! See you at</span> <span
												class="time">9:10 AM</span>
										</div>
									</a> <a href="#">
										<div class="user-img">
											<img src="../plugins/images/users/arijit.jpg" alt="user"
												class="img-circle"> <span
												class="profile-status away pull-right"></span>
										</div>
										<div class="mail-contnet">
											<h5>Arijit Sinh</h5>
											<span class="mail-desc">I am a singer!</span> <span
												class="time">9:08 AM</span>
										</div>
									</a> <a href="#">
										<div class="user-img">
											<img src="../plugins/images/users/pawandeep.jpg" alt="user"
												class="img-circle"> <span
												class="profile-status offline pull-right"></span>
										</div>
										<div class="mail-contnet">
											<h5>Pavan kumar</h5>
											<span class="mail-desc">Just see the my admin!</span> <span
												class="time">9:02 AM</span>
										</div>
									</a>
								</div>
							</li>
							<li><a class="text-center" href="javascript:void(0);"> <strong>See
										all notifications</strong> <i class="fa fa-angle-right"></i>
							</a></li>
						</ul> <!-- /.dropdown-messages --></li>
					<!-- .Task dropdown -->
					<li class="dropdown"><a
						class="dropdown-toggle waves-effect waves-light"
						data-toggle="dropdown" href="#"> <i
							class="mdi mdi-check-circle"></i>
							<div class="notify">
								<span class="heartbit"></span><span class="point"></span>
							</div>
					</a>
						<ul class="dropdown-menu dropdown-tasks animated slideInUp">
							<li><a href="#">
									<div>
										<p>
											<strong>Task 1</strong> <span class="pull-right text-muted">40%
												Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">
												<span class="sr-only">40% Complete (success)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>Task 2</strong> <span class="pull-right text-muted">20%
												Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 20%">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>Task 3</strong> <span class="pull-right text-muted">60%
												Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-warning"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 60%">
												<span class="sr-only">60% Complete (warning)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>Task 4</strong> <span class="pull-right text-muted">80%
												Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-danger"
												role="progressbar" aria-valuenow="80" aria-valuemin="0"
												aria-valuemax="100" style="width: 80%">
												<span class="sr-only">80% Complete (danger)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>See
										All Tasks</strong> <i class="fa fa-angle-right"></i>
							</a></li>
						</ul></li>
					<!-- .Megamenu -->
					<li class="mega-dropdown"><a
						class="dropdown-toggle waves-effect waves-light"
						data-toggle="dropdown" href="#"><span class="hidden-xs">Mega</span>
							<i class="icon-options-vertical"></i></a>
						<ul class="dropdown-menu mega-dropdown-menu animated bounceInDown">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Forms Elements</li>
									<li><a href="form-basic.html">Basic Forms</a></li>
									<li><a href="form-layout.html">Form Layout</a></li>
									<li><a href="form-advanced.html">Form Addons</a></li>
									<li><a href="form-material-elements.html">Form
											Material</a></li>
									<li><a href="form-float-input.html">Form Float Input</a></li>
									<li><a href="form-upload.html">File Upload</a></li>
									<li><a href="form-mask.html">Form Mask</a></li>
									<li><a href="form-img-cropper.html">Image Cropping</a></li>
									<li><a href="form-validation.html">Form Validation</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Advance Forms</li>
									<li><a href="form-dropzone.html">File Dropzone</a></li>
									<li><a href="form-pickers.html">Form-pickers</a></li>
									<li><a href="form-wizard.html">Form-wizards</a></li>
									<li><a href="form-typehead.html">Typehead</a></li>
									<li><a href="form-xeditable.html">X-editable</a></li>
									<li><a href="form-summernote.html">Summernote</a></li>
									<li><a href="form-bootstrap-wysihtml5.html">Bootstrap
											wysihtml5</a></li>
									<li><a href="form-tinymce-wysihtml5.html">Tinymce
											wysihtml5</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Table Example</li>
									<li><a href="basic-table.html">Basic Tables</a></li>
									<li><a href="table-layouts.html">Table Layouts</a></li>
									<li><a href="data-table.html">Data Table</a></li>
									<li><a href="bootstrap-tables.html">Bootstrap Tables</a></li>
									<li><a href="responsive-tables.html">Responsive Tables</a></li>
									<li><a href="editable-tables.html">Editable Tables</a></li>
									<li><a href="foo-tables.html">FooTables</a></li>
									<li><a href="jsgrid.html">JsGrid Tables</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Charts</li>
									<li><a href="flot.html">Flot Charts</a></li>
									<li><a href="morris-chart.html">Morris Chart</a></li>
									<li><a href="chart-js.html">Chart-js</a></li>
									<li><a href="peity-chart.html">Peity Charts</a></li>
									<li><a href="knob-chart.html">Knob Charts</a></li>
									<li><a href="sparkline-chart.html">Sparkline charts</a></li>
									<li><a href="extra-charts.html">Extra Charts</a></li>
								</ul>
							</li>
						</ul></li>
					<!-- /.Megamenu -->
				</ul>
				<ul class="nav navbar-top-links navbar-right pull-right">
					<li>
						<form role="search" class="app-search hidden-sm hidden-xs m-r-10">
							<input type="text" placeholder="Search..." class="form-control">
							<a href=""><i class="fa fa-search"></i></a>
						</form>
					</li>
					<li class="dropdown"><a class="dropdown-toggle profile-pic"
						data-toggle="dropdown" href="#"> <img
							src="../plugins/images/users/varun.jpg" alt="user-img" width="36"
							class="img-circle"><b class="hidden-xs">Steave</b><span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu dropdown-user animated flipInY">
							<li>
								<div class="dw-user-box">
									<div class="u-img">
										<img src="../plugins/images/users/varun.jpg" alt="user" />
									</div>
									<div class="u-text">
										<h4>Steave Jobs</h4>
										<p class="text-muted">varun@gmail.com</p>
										<a href="profile.html"
											class="btn btn-rounded btn-danger btn-sm">View Profile</a>
									</div>
								</div>
							</li>
							<li role="separator" class="divider"></li>
							<li><a href="#"><i class="ti-user"></i> My Profile</a></li>
							<li><a href="#"><i class="ti-wallet"></i> My Balance</a></li>
							<li><a href="#"><i class="ti-email"></i> Inbox</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#"><i class="ti-settings"></i> Account
									Setting</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#"><i class="fa fa-power-off"></i> Logout</a></li>
						</ul> <!-- /.dropdown-user --></li>
					<!-- /.dropdown -->
				</ul>
			</div>
			<!-- /.navbar-header -->
			<!-- /.navbar-top-links -->
			<!-- /.navbar-static-side -->
		</nav>
		<!-- End Top Navigation -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav slimscrollsidebar">
				<div class="sidebar-head">
					<h3>
						<span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span>
						<span class="hide-menu">Navigation</span>
					</h3>
				</div>
				<ul class="nav" id="side-menu">
					<li class="user-pro"><a href="#" class="waves-effect"><img
							src="../plugins/images/users/varun.jpg" alt="user-img"
							class="img-circle"> <span class="hide-menu"> Steve
								Gection<span class="fa arrow"></span>
						</span> </a>
						<ul class="nav nav-second-level collapse" aria-expanded="false"
							style="height: 0px;">
							<li><a href="javascript:void(0)"><i class="ti-user"></i>
									<span class="hide-menu">My Profile</span></a></li>
							<li><a href="javascript:void(0)"><i class="ti-wallet"></i>
									<span class="hide-menu">My Balance</span></a></li>
							<li><a href="javascript:void(0)"><i class="ti-email"></i>
									<span class="hide-menu">Inbox</span></a></li>
							<li><a href="javascript:void(0)"><i class="ti-settings"></i>
									<span class="hide-menu">Account Setting</span></a></li>
							<li><a href="javascript:void(0)"><i
									class="fa fa-power-off"></i> <span class="hide-menu">Logout</span></a></li>
						</ul></li>
					<li><a href="index.html" class="waves-effect"><i
							class="mdi mdi-av-timer fa-fw" data-icon="v"></i> <span
							class="hide-menu"> Dashboard <span class="fa arrow"></span>
								<span class="label label-rouded label-inverse pull-right">4</span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="index.html"><i class=" fa-fw">1</i><span
									class="hide-menu">Dashboard 1</span></a></li>
							<li><a href="index2.html"><i class=" fa-fw">2</i><span
									class="hide-menu">Dashboard 2</span></a></li>
							<li><a href="index3.html"><i class=" fa-fw">3</i><span
									class="hide-menu">Dashboard 3</span></a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="waves-effect"><i
							class="mdi mdi-cart-outline fa-fw" data-icon="v"></i> <span
							class="hide-menu"> eCommerce <span class="fa arrow"></span>
						</span></a>
						<ul class="nav nav-second-level">
							<li><a href="products.html"><i class="fa-fw">P</i><span
									class="hide-menu">Products</span></a></li>
							<li><a href="product-orders.html"><i class="fa-fw">PO</i><span
									class="hide-menu">Product Orders</span></a></li>
							<li><a href="product-details.html"><i class="fa-fw">PD</i><span
									class="hide-menu">Product Details</span></a></li>
							<li><a href="product-edit.html"><i class="fa-fw">PE</i><span
									class="hide-menu">Product Edit</span></a></li>
							<li><a href="product-cart.html"><i class="fa-fw">PC</i><span
									class="hide-menu">Product Cart</span></a></li>
							<li><a href="product-checkout.html"><i class="fa-fw">PC</i><span
									class="hide-menu">Product Checkout</span></a></li>
						</ul></li>
					<li><a href="#" class="waves-effect"><i
							class="mdi mdi-format-color-fill fa-fw"></i> <span
							class="hide-menu">UI Elements<span class="fa arrow"></span>
								<span class="label label-rouded label-info pull-right">20</span>
						</span></a>
						<ul class="nav nav-second-level">
							<li><a href="panels-wells.html"><i data-icon="&#xe026;"
									class="linea-icon linea-basic fa-fw"></i> <span
									class="hide-menu">Panels and Wells</span></a></li>
							<li><a href="panel-ui-block.html"><i
									data-icon="&#xe025;" class="linea-icon linea-basic fa-fw"></i>
									<span class="hide-menu">Panels With BlockUI</span></a></li>
							<li><a href="buttons.html"><i
									class="ti-layout-menu fa-fw"></i> <span class="hide-menu">Buttons</span></a></li>
							<li><a href="sweatalert.html"><i class="ti-alert fa-fw"></i>
									<span class="hide-menu">Sweat alert</span></a></li>
							<li><a href="typography.html"><i data-icon="k"
									class="linea-icon linea-software fa-fw"></i> <span
									class="hide-menu">Typography</span></a></li>
							<li><a href="grid.html"><i data-icon="&#xe009;"
									class="linea-icon linea-basic fa-fw"></i> <span
									class="hide-menu">Grid</span></a></li>
							<li><a href="tabs.html"><i class="ti-layers fa-fw"></i>
									<span class="hide-menu">Tabs</span></a></li>
							<li><a href="tab-stylish.html"><i
									class=" ti-layers-alt fa-fw"></i> <span class="hide-menu">Stylish
										Tabs</span></a></li>
							<li><a href="modals.html"><i data-icon="&#xe026;"
									class="linea-icon linea-basic fa-fw"></i> <span
									class="hide-menu">Modals</span></a></li>
							<li><a href="progressbars.html"><i
									class="ti-line-double fa-fw"></i> <span class="hide-menu">Progress
										Bars</span></a></li>
							<li><a href="notification.html"><i
									class="ti-info-alt fa-fw"></i> <span class="hide-menu">Notifications</span></a></li>
							<li><a href="carousel.html"><i
									class="ti-layout-slider fa-fw"></i> <span class="hide-menu">Carousel</span></a></li>
							<li><a href="list-style.html"><i data-icon="&#xe00b;"
									class="linea-icon linea-basic fa-fw"></i> <span
									class="hide-menu">List & Media object</span></a></li>
							<li><a href="user-cards.html"><i class="ti-user fa-fw"></i>
									<span class="hide-menu">User Cards</span></a></li>
							<li><a href="timeline.html"><i data-icon="/"
									class="linea-icon linea-basic fa-fw"></i> <span
									class="hide-menu">Timeline</span></a></li>
							<li><a href="timeline-horizontal.html"><i
									class="ti-layout-list-thumb fa-fw"></i> <span class="hide-menu">Horizontal
										Timeline</span></a></li>
							<li><a href="nestable.html"><i
									class="ti-layout-accordion-separated fa-fw"></i> <span
									class="hide-menu">Nesteble</span></a></li>
							<li><a href="range-slider.html"><i
									class=" ti-layout-slider-alt fa-fw"></i> <span
									class="hide-menu">Range Slider</span></a></li>
							<li><a href="tooltip-stylish.html"><i
									class="ti-comments-smiley fa-fw"></i> <span class="hide-menu">Stylish
										Tooltip</span></a></li>
							<li><a href="bootstrap.html"><i class="ti-rocket fa-fw"></i>
									<span class="hide-menu">Bootstrap UI</span></a></li>
						</ul></li>
					<li><a href="#" class="waves-effect"><i
							class="mdi mdi-content-copy fa-fw"></i> <span class="hide-menu">Sample
								Pages<span class="fa arrow"></span><span
								class="label label-rouded label-warning pull-right">30</span>
						</span></a>
						<ul class="nav nav-second-level">
							<li><a href="starter-page.html"><i
									class="ti-layout-width-default fa-fw"></i> <span
									class="hide-menu">Starter Page</span></a></li>
							<li><a href="blank.html"><i
									class="ti-layout-sidebar-left fa-fw"></i> <span
									class="hide-menu">Blank Page</span></a></li>
							<li><a href="javascript:void(0)" class="waves-effect"><i
									class="ti-email fa-fw"></i> <span class="hide-menu">Email
										Templates</span><span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="../email-templates/basic.html"><i
											class="fa-fw">B</i> <span class="hide-menu">Basic</span></a></li>
									<li><a href="../email-templates/alert.html"><i
											class="ti-alert fa-fw"></i> <span class="hide-menu">Alert</span></a></li>
									<li><a href="../email-templates/billing.html"><i
											class="ti-wallet fa-fw"></i> <span class="hide-menu">Billing</span></a></li>
									<li><a href="../email-templates/password-reset.html"><i
											class="ti-more fa-fw"></i> <span class="hide-menu">Reset
												Pwd</span></a></li>
								</ul></li>
							<li><a href="javascript:void(0)" class="waves-effect"><i
									class="ti-lock fa-fw"></i><span class="hide-menu">Authentication</span><span
									class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="login.html"><i class="fa-fw">L</i> <span
											class="hide-menu">Login Page</span></a></li>
									<li><a href="login2.html"><i class="fa-fw">L</i> <span
											class="hide-menu">Login v2</span></a></li>
									<li><a href="register.html"><i class="fa-fw">R</i> <span
											class="hide-menu">Register</span></a></li>
									<li><a href="register2.html"><i class="fa-fw">R</i> <span
											class="hide-menu">Register v2</span></a></li>
									<li><a href="register3.html"><i class="fa-fw">3</i> <span
											class="hide-menu">3 Step Registration</span></a></li>
									<li><a href="recoverpw.html"><i class="fa-fw">R</i> <span
											class="hide-menu">Recover Password</span></a></li>
									<li><a href="lock-screen.html"><i class="fa-fw">L</i>
											<span class="hide-menu">Lock Screen</span></a></li>
								</ul></li>
							<li><a href="javascript:void(0)" class="waves-effect"><i
									class="ti-info-alt fa-fw"></i><span class="hide-menu">Error
										Pages</span><span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="400.html"><i class="ti-info-alt fa-fw"></i>
											<span class="hide-menu">Error 400</span></a></li>
									<li><a href="403.html"><i class="ti-info-alt fa-fw"></i>
											<span class="hide-menu">Error 403</span></a></li>
									<li><a href="404.html"><i class="ti-info-alt fa-fw"></i>
											<span class="hide-menu">Error 404</span></a></li>
									<li><a href="500.html"><i class="ti-info-alt fa-fw"></i>
											<span class="hide-menu">Error 500</span></a></li>
									<li><a href="503.html"><i class="ti-info-alt fa-fw"></i>
											<span class="hide-menu">Error 503</span></a></li>
								</ul></li>
							<li><a href="lightbox.html"><i class="fa-fw">L</i> <span
									class="hide-menu">Lightbox Popup</span></a></li>
							<li><a href="treeview.html"><i class="fa-fw">T</i> <span
									class="hide-menu">Treeview</span></a></li>
							<li><a href="search-result.html"><i class="fa-fw">S</i>
									<span class="hide-menu">Search Result</span></a></li>
							<li><a href="utility-classes.html"><i class="fa-fw">U</i>
									<span class="hide-menu">Utility Classes</span></a></li>
							<li><a href="custom-scroll.html"><i class="fa-fw">C</i>
									<span class="hide-menu">Custom Scrolls</span></a></li>
							<li><a href="animation.html"><i class="fa-fw">A</i> <span
									class="hide-menu">Animations</span></a></li>
							<li><a href="profile.html"><i class="fa-fw">P</i> <span
									class="hide-menu">Profile</span></a></li>
							<li><a href="invoice.html"><i class="fa-fw">I</i> <span
									class="hide-menu">Invoice</span></a></li>
							<li><a href="faq.html"><i class="fa-fw">F</i> <span
									class="hide-menu">FAQ</span></a></li>
							<li><a href="gallery.html"><i class="fa-fw">G</i> <span
									class="hide-menu">Gallery</span></a></li>
							<li><a href="pricing.html"><i class="fa-fw">P</i> <span
									class="hide-menu">Pricing</span></a></li>
						</ul></li>
					<li><a href="inbox.html" class="waves-effect"><i
							class="mdi mdi-apps fa-fw"></i> <span class="hide-menu">Apps<span
								class="fa arrow"></span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="chat.html"><i
									class="ti-comments-smiley fa-fw"></i><span class="hide-menu">Chat-message</span></a></li>
							<li><a href="javascript:void(0)" class="waves-effect"><i
									class="ti-desktop fa-fw"></i><span class="hide-menu">Inbox</span><span
									class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="inbox.html"><i class="ti-email fa-fw"></i><span
											class="hide-menu">Mail box</span></a></li>
									<li><a href="inbox-detail.html"><i
											class="ti-layout-media-left-alt fa-fw"></i><span
											class="hide-menu">Inbox detail</span></a></li>
									<li><a href="compose.html"><i
											class="ti-layout-media-center-alt fa-fw"></i><span
											class="hide-menu">Compose mail</span></a></li>
								</ul></li>
							<li><a href="javascript:void(0)" class="waves-effect"><i
									class="ti-user fa-fw"></i><span class="hide-menu">Contacts</span><span
									class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="contact.html"><i
											class="icon-people fa-fw"></i><span class="hide-menu">Contact1</span></a></li>
									<li><a href="contact2.html"><i
											class="icon-user-follow fa-fw"></i><span class="hide-menu">Contact2</span></a></li>
									<li><a href="contact-detail.html"><i
											class="icon-user-following fa-fw"></i><span class="hide-menu">Contact
												Detail</span></a></li>
								</ul></li>
						</ul></li>
					<li class="devider"></li>
					<li><a href="forms.html" class="waves-effect"><i
							class="mdi mdi-clipboard-text fa-fw"></i> <span class="hide-menu">Forms<span
								class="fa arrow"></span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="form-basic.html"><i class="fa-fw">B</i><span
									class="hide-menu">Basic Forms</span></a></li>
							<li><a href="form-layout.html"><i class="fa-fw">L</i><span
									class="hide-menu">Form Layout</span></a></li>
							<li><a href="form-advanced.html"><i class="fa-fw">A</i><span
									class="hide-menu">Form Addons</span></a></li>
							<li><a href="form-material-elements.html"><i
									class="fa-fw">M</i><span class="hide-menu">Form Material</span></a></li>
							<li><a href="form-float-input.html"><i class="fa-fw">F</i><span
									class="hide-menu">Form Float Input</span></a></li>
							<li><a href="form-upload.html"><i class="fa-fw">U</i><span
									class="hide-menu">File Upload</span></a></li>
							<li><a href="form-mask.html"><i class="fa-fw">M</i><span
									class="hide-menu">Form Mask</span></a></li>
							<li><a href="form-img-cropper.html"><i class="fa-fw">C</i><span
									class="hide-menu">Image Cropping</span></a></li>
							<li><a href="form-validation.html"><i class="fa-fw">V</i><span
									class="hide-menu">Form Validation</span></a></li>
							<li><a href="form-dropzone.html"><i class="fa-fw">D</i><span
									class="hide-menu">File Dropzone</span></a></li>
							<li><a href="form-pickers.html"><i class="fa-fw">P</i><span
									class="hide-menu">Form-pickers</span></a></li>
							<li><a href="form-wizard.html"><i class="fa-fw">W</i><span
									class="hide-menu">Form-wizards</span></a></li>
							<li><a href="form-typehead.html"><i class="fa-fw">T</i><span
									class="hide-menu">Typehead</span></a></li>
							<li><a href="form-xeditable.html"><i class="fa-fw">X</i><span
									class="hide-menu">X-editable</span></a></li>
							<li><a href="form-summernote.html"><i class="fa-fw">S</i><span
									class="hide-menu">Summernote</span></a></li>
							<li><a href="form-bootstrap-wysihtml5.html"><i
									class=" fa-fw">W</i><span class="hide-menu">Bootstrap
										wysihtml5</span></a></li>
							<li><a href="form-tinymce-wysihtml5.html"><i
									class="fa-fw">T</i><span class="hide-menu">Tinymce
										wysihtml5</span></a></li>
						</ul></li>
					<li><a href="tables.html" class="waves-effect active"><i
							class="mdi mdi-table fa-fw"></i> <span class="hide-menu">Tables<span
								class="fa arrow"></span><span
								class="label label-rouded label-danger pull-right">9</span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="basic-table.html"><i class="fa-fw">B</i><span
									class="hide-menu">Basic Tables</span></a></li>
							<li><a href="table-layouts.html"><i class="fa-fw">L</i><span
									class="hide-menu">Table Layouts</span></a></li>
							<li><a href="data-table.html"><i class="fa-fw">D</i><span
									class="hide-menu">Data Table</span></a></li>
							<li><a href="bootstrap-tables.html"><i class="fa-fw">B</i><span
									class="hide-menu">Bootstrap Tables</span></a></li>
							<li><a href="responsive-tables.html"><i class="fa-fw">R</i><span
									class="hide-menu">Responsive Tables</span></a></li>
							<li><a href="editable-tables.html"><i class="fa-fw">E</i><span
									class="hide-menu">Editable Tables</span></a></li>
							<li><a href="foo-tables.html"><i class="fa-fw">F</i><span
									class="hide-menu">FooTables</span></a></li>
							<li><a href="jsgrid.html"><i class="fa-fw">J</i><span
									class="hide-menu">JsGrid Tables</span></a></li>
						</ul></li>
					<li><a href="#" class="waves-effect"><i
							class="mdi mdi-chart-bar fa-fw"></i> <span class="hide-menu">Charts<span
								class="fa arrow"></span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="flot.html"><i class="fa-fw">F</i><span
									class="hide-menu">Flot Charts</span></a></li>
							<li><a href="morris-chart.html"><i class="fa-fw">M</i><span
									class="hide-menu">Morris Chart</span></a></li>
							<li><a href="chart-js.html"><i class="fa-fw">P</i><span
									class="hide-menu">Chart-js</span></a></li>
							<li><a href="peity-chart.html"><i class="fa-fw">P</i><span
									class="hide-menu">Peity Charts</span></a></li>
							<li><a href="chartist-js.html"><i class="fa-fw">C</i><span
									class="hide-menu">Chartist-js</span></a></li>
							<li><a href="knob-chart.html"><i class="fa-fw">K</i><span
									class="hide-menu">Knob Charts</span></a></li>
							<li><a href="sparkline-chart.html"><i class="fa-fw">S</i><span
									class="hide-menu">Sparkline charts</span></a></li>
							<li><a href="extra-charts.html"><i class="fa-fw">E</i><span
									class="hide-menu">Extra Charts</span></a></li>
						</ul></li>
					<li class="devider"></li>
					<li><a href="widgets.html" class="waves-effect"><i
							class="mdi mdi-settings fa-fw"></i> <span class="hide-menu">Widgets</span></a>
					</li>
					<li><a href="#" class="waves-effect"><i
							class="mdi mdi-emoticon fa-fw"></i> <span class="hide-menu">Icons<span
								class="fa arrow"></span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="fontawesome.html"><i class="fa-fw">F</i><span
									class="hide-menu">Font awesome</span></a></li>
							<li><a href="themifyicon.html"><i class="fa-fw">T</i><span
									class="hide-menu">Themify Icons</span></a></li>
							<li><a href="simple-line.html"><i class="fa-fw">S</i><span
									class="hide-menu">Simple line Icons</span></a></li>
							<li><a href="material-icons.html"><i class="fa-fw">M</i><span
									class="hide-menu">Material Icons</span></a></li>
							<li><a href="linea-icon.html"><i class="fa-fw">L</i><span
									class="hide-menu">Linea Icons</span></a></li>
							<li><a href="weather.html"><i class="fa-fw">W</i><span
									class="hide-menu">Weather Icons</span></a></li>
						</ul></li>
					<li><a href="map-google.html" class="waves-effect"><i
							class="mdi mdi-google-maps fa-fw"></i><span class="hide-menu">Google
								Map</span></a></li>
					<li><a href="map-vector.html" class="waves-effect"><i
							class="mdi mdi-map-marker fa-fw"></i><span class="hide-menu">Vector
								Map</span></a></li>
					<li><a href="calendar.html" class="waves-effect"><i
							class="mdi mdi-calendar-check fa-fw"></i> <span class="hide-menu">Calendar</span></a></li>
					<li><a href="javascript:void(0)" class="waves-effect"><i
							class="mdi mdi-checkbox-multiple-marked-outline fa-fw"></i> <span
							class="hide-menu">Multi-Level Dropdown<span
								class="fa arrow"></span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="javascript:void(0)"><i data-icon="/"
									class="linea-icon linea-basic fa-fw"></i><span
									class="hide-menu">Second Level Item</span></a></li>
							<li><a href="javascript:void(0)"><i data-icon="7"
									class="linea-icon linea-basic fa-fw"></i><span
									class="hide-menu">Second Level Item</span></a></li>
							<li><a href="javascript:void(0)" class="waves-effect"><i
									data-icon="&#xe008;" class="linea-icon linea-basic fa-fw"></i><span
									class="hide-menu">Third Level </span><span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="javascript:void(0)"><i class=" fa-fw">T</i><span
											class="hide-menu">Third Level Item</span></a></li>
									<li><a href="javascript:void(0)"><i class=" fa-fw">M</i><span
											class="hide-menu">Third Level Item</span></a></li>
									<li><a href="javascript:void(0)"><i class=" fa-fw">R</i><span
											class="hide-menu">Third Level Item</span></a></li>
									<li><a href="javascript:void(0)"><i class=" fa-fw">G</i><span
											class="hide-menu">Third Level Item</span></a></li>
								</ul></li>
						</ul></li>
					<li><a href="login.html" class="waves-effect"><i
							class="mdi mdi-logout fa-fw"></i> <span class="hide-menu">Log
								out</span></a></li>
					<li class="devider"></li>
					<li><a href="documentation.html" class="waves-effect"><i
							class="fa fa-circle-o text-danger"></i> <span class="hide-menu">Documentation</span></a></li>
					<li><a href="gallery.html" class="waves-effect"><i
							class="fa fa-circle-o text-info"></i> <span class="hide-menu">Gallery</span></a></li>
					<li><a href="faq.html" class="waves-effect"><i
							class="fa fa-circle-o text-success"></i> <span class="hide-menu">Faqs</span></a></li>
				</ul>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Left Sidebar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page Content -->
		<!-- ============================================================== -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">QUIZ RESULT</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<button
							class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20">
							<i class="ti-settings text-white"></i>
						</button>
						<a href="javascript: void(0);" target="_blank"
							class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">Buy
							Admin Now</a>
						<ol class="breadcrumb">
							<li><a href="#">Dashboard</a></li>
							<li><a href="#">Table</a></li>
							<li class="active">Data Table</li>
						</ol>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<!-- <h3 class="box-title m-b-0">Data Table</h3>
							<p class="text-muted m-b-30">Data table example</p> -->

							<div class="table-responsive">
								<table id="myTable" class="table table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>Total Question</th>
											<th>Total Marks</th>
											<th>Correct</th>
											<th>Incorrect</th>
											<th>Marks Obtained</th>
											<th>Percentage Score</th>
											<th>Start Date</th>
											<th>End Date</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="userScore" items="${userScoreList}"
											varStatus="status">
												<tr style="<c:if test="${status.count == 1}">color:#00F;</c:if>">
													<td>${status.count}</td>
													<td>${userScore.totalQuestions}</td>
													<td>${userScore.totalMarks}</td>
													<td>${userScore.numOfCorrectAnswers}</td>
													<td>${userScore.numOfIncorrectAnswers}</td>
													<td>${userScore.marksObtained}</td>
													<td>${userScore.percentScore}</td>
													<td>${userScore.startDate}</td>
													<td>${userScore.endDate}</td>
												</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
				<!-- ============================================================== -->
				<!-- Right sidebar -->
				<!-- ============================================================== -->
				<!-- .right-sidebar -->
				<div class="right-sidebar">
					<div class="slimscrollright">
						<div class="rpanel-title">
							Service Panel <span><i class="ti-close right-side-toggle"></i></span>
						</div>
						<div class="r-panel-body">
							<ul id="themecolors" class="m-t-20">
								<li><b>With Light sidebar</b></li>
								<li><a href="javascript:void(0)" data-theme="default"
									class="default-theme">1</a></li>
								<li><a href="javascript:void(0)" data-theme="green"
									class="green-theme">2</a></li>
								<li><a href="javascript:void(0)" data-theme="gray"
									class="yellow-theme">3</a></li>
								<li><a href="javascript:void(0)" data-theme="blue"
									class="blue-theme">4</a></li>
								<li><a href="javascript:void(0)" data-theme="purple"
									class="purple-theme">5</a></li>
								<li><a href="javascript:void(0)" data-theme="megna"
									class="megna-theme">6</a></li>
								<li><b>With Dark sidebar</b></li>
								<br />
								<li><a href="javascript:void(0)" data-theme="default-dark"
									class="default-dark-theme">7</a></li>
								<li><a href="javascript:void(0)" data-theme="green-dark"
									class="green-dark-theme">8</a></li>
								<li><a href="javascript:void(0)" data-theme="gray-dark"
									class="yellow-dark-theme">9</a></li>
								<li><a href="javascript:void(0)" data-theme="blue-dark"
									class="blue-dark-theme">10</a></li>
								<li><a href="javascript:void(0)" data-theme="purple-dark"
									class="purple-dark-theme">11</a></li>
								<li><a href="javascript:void(0)" data-theme="megna-dark"
									class="megna-dark-theme working">12</a></li>
							</ul>
							<ul class="m-t-20 all-demos">
								<li><b>Choose other demos</b></li>
							</ul>
							<ul class="m-t-20 chatonline">
								<li><b>Chat option</b></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/varun.jpg" alt="user-img"
										class="img-circle"> <span>Varun Dhavan <small
											class="text-success">online</small></span></a></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/genu.jpg" alt="user-img"
										class="img-circle"> <span>Genelia Deshmukh <small
											class="text-warning">Away</small></span></a></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/ritesh.jpg" alt="user-img"
										class="img-circle"> <span>Ritesh Deshmukh <small
											class="text-danger">Busy</small></span></a></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/arijit.jpg" alt="user-img"
										class="img-circle"> <span>Arijit Sinh <small
											class="text-muted">Offline</small></span></a></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/govinda.jpg" alt="user-img"
										class="img-circle"> <span>Govinda Star <small
											class="text-success">online</small></span></a></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/hritik.jpg" alt="user-img"
										class="img-circle"> <span>John Abraham<small
											class="text-success">online</small></span></a></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/john.jpg" alt="user-img"
										class="img-circle"> <span>Hritik Roshan<small
											class="text-success">online</small></span></a></li>
								<li><a href="javascript:void(0)"><img
										src="../plugins/images/users/pawandeep.jpg" alt="user-img"
										class="img-circle"> <span>Pwandeep rajan <small
											class="text-success">online</small></span></a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End Right sidebar -->
				<!-- ============================================================== -->
			</div>
			<!-- /.container-fluid -->
			<footer class="footer text-center"> 2017 &copy; Ample Admin
				brought to you by themedesigner.in </footer>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- jQuery -->
	<script
		src="<c:url value="/plugins/bower_components/jquery/dist/jquery.min.js" />"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="/bootstrap/dist/js/bootstrap.min.js" />"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="<c:url value="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js" />"></script>
	<!--slimscroll JavaScript -->
	<script src="<c:url value="/js/jquery.slimscroll.js" />"></script>
	<!--Wave Effects -->
	<script src="<c:url value="/js/waves.js" />"></script>
	<!-- Custom Theme JavaScript -->
	<script src="<c:url value="/js/custom.min.js" />"></script>
	<script
		src="<c:url value="/plugins/bower_components/datatables/jquery.dataTables.min.js" />"></script>
	<!-- start - This is for export functionality only -->
	<script
		src="<c:url value="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js" />"></script>
	<script
		src="<c:url value="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js" />"></script>
	<script
		src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js" />"></script>
	<script
		src="<c:url value="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js" />"></script>
	<script
		src="<c:url value="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js" />"></script>
	<script
		src="<c:url value="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js" />"></script>
	<script
		src="<c:url value="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js" />"></script>
	<!-- end - This is for export functionality only -->
	<script>
		$(document)
				.ready(
						function() {
							$('#myTable').DataTable();
							$(document)
									.ready(
											function() {
												var table = $('#example')
														.DataTable(
																{
																	"columnDefs" : [ {
																		"visible" : false,
																		"targets" : 2
																	} ],
																	"order" : [ [
																			2,
																			'asc' ] ],
																	"displayLength" : 25,
																	"drawCallback" : function(
																			settings) {
																		var api = this
																				.api();
																		var rows = api
																				.rows(
																						{
																							page : 'current'
																						})
																				.nodes();
																		var last = null;
																		api
																				.column(
																						2,
																						{
																							page : 'current'
																						})
																				.data()
																				.each(
																						function(
																								group,
																								i) {
																							if (last !== group) {
																								$(
																										rows)
																										.eq(
																												i)
																										.before(
																												'<tr class="group"><td colspan="5">'
																														+ group
																														+ '</td></tr>');
																								last = group;
																							}
																						});
																	}
																});
												// Order by the grouping
												$('#example tbody')
														.on(
																'click',
																'tr.group',
																function() {
																	var currentOrder = table
																			.order()[0];
																	if (currentOrder[0] === 2
																			&& currentOrder[1] === 'asc') {
																		table
																				.order(
																						[
																								2,
																								'desc' ])
																				.draw();
																	} else {
																		table
																				.order(
																						[
																								2,
																								'asc' ])
																				.draw();
																	}
																});
											});
						});
		$('#example23').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
		});
	</script>
	<!--Style Switcher -->
	<script
		src="<c:url value="/plugins/bower_components/styleswitcher/jQuery.style.switcher.js" />"></script>
</body>

</html>