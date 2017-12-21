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
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value="/plugins/images/favicon.png" />">
<title>Ample Admin Template - The Ultimate Multipurpose admin
	template</title>
<!-- Bootstrap Core CSS -->
<link href="<c:url value="/bootstrap/dist/css/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Menu CSS -->
<link
	href="<c:url value="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/plugins/bower_components/custom-select/custom-select.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/plugins/bower_components/bootstrap-select/bootstrap-select.min.css" />"
	rel="stylesheet" />
<link
	href="<c:url value="/plugins/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" />"
	rel="stylesheet" />
<!-- animation CSS -->
<link href="<c:url value="/css/animate.css" />" rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="/css/style.css" />" rel="stylesheet">
<!-- color CSS -->
<link href="<c:url value="/css/colors/megna-dark.css" />" id="theme"
	rel="stylesheet">
<link
	href="<c:url value="/plugins/bower_components/bootstrap-select/bootstrap-select.min.css" />"
	rel="stylesheet" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="<c:url value="/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" />"></script>
    <script src="<c:url value="/https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" />"></script>
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

		<%@include file="tmp-top-nav.jsp"%>

		<!-- End Top Navigation -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<%@include file="tmp-left-sidebar.jsp"%>
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
						<h4 class="page-title">Quiz Page</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<button
							class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20">
							<i class="ti-settings text-white"></i>
						</button>
						<!--
						<a href="javascript: void(0);" target="_blank"
							class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">Buy
							Admin Now</a>
							-->
						<ol class="breadcrumb">
							<li><a href="#">Dashboard</a></li>
							<li class="active">Starter Page</li>
						</ol>
					</div>
					<!-- /.col-lg-12 -->
				</div>


				<div class="row">
					<div class="col-md-6">
						<div class="white-box">
							<h3 class="box-title m-b-0">Sample Basic Forms</h3>
							<p class="text-muted m-b-30 font-13">Bootstrap Elements</p>
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<form>

										<div class="form-group">
											<label for="inputEmail3" class="control-label">Quiz
												Name</label> <input type="text" class="form-control"
												id="inputEmail3" placeholder="Quiz Name" readonly>
										</div>


										<div class="form-group">
											<label class="control-label">Quiz Section</label> <select
												class="form-control select2"
												data-placeholder="Choose a Category" tabindex="1">
												<option>Select</option>
												<optgroup label="Alaskan/Hawaiian Time Zone">
													<option value="AK">Alaska</option>
													<option value="HI">Hawaii</option>
												</optgroup>
												<optgroup label="Pacific Time Zone">
													<option value="CA">California</option>
													<option value="NV">Nevada</option>
													<option value="OR">Oregon</option>
													<option value="WA">Washington</option>
												</optgroup>
												<optgroup label="Mountain Time Zone">
													<option value="AZ">Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="MT">Montana</option>
													<option value="NE">Nebraska</option>
													<option value="NM">New Mexico</option>
													<option value="ND">North Dakota</option>
													<option value="UT">Utah</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="AR">Arkansas</option>
													<option value="IL">Illinois</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
													<option value="LA">Louisiana</option>
													<option value="MN">Minnesota</option>
													<option value="MS">Mississippi</option>
													<option value="MO">Missouri</option>
													<option value="OK">Oklahoma</option>
													<option value="SD">South Dakota</option>
													<option value="TX">Texas</option>
													<option value="TN">Tennessee</option>
													<option value="WI">Wisconsin</option>
												</optgroup>
												<optgroup label="Eastern Time Zone">
													<option value="CT">Connecticut</option>
													<option value="DE">Delaware</option>
													<option value="FL">Florida</option>
													<option value="GA">Georgia</option>
													<option value="IN">Indiana</option>
													<option value="ME">Maine</option>
													<option value="MD">Maryland</option>
													<option value="MA">Massachusetts</option>
													<option value="MI">Michigan</option>
													<option value="NH">New Hampshire</option>
													<option value="NJ">New Jersey</option>
													<option value="NY">New York</option>
													<option value="NC">North Carolina</option>
													<option value="OH">Ohio</option>
													<option value="PA">Pennsylvania</option>
													<option value="RI">Rhode Island</option>
													<option value="SC">South Carolina</option>
													<option value="VT">Vermont</option>
													<option value="VA">Virginia</option>
													<option value="WV">West Virginia</option>
												</optgroup>
											</select>
										</div>


										<!--
										<div class="form-group">
											<label class="control-label">Quiz Section</label> <select
												class="form-control" data-placeholder="Choose a Category"
												tabindex="1">
												<option value="Category 3">Section 1</option>
												<option value="Category 2">Section 1</option>
												<option value="Category 3">Section 1</option>
											</select>
										</div>
										-->

										<div class="form-group">
											<label class="control-label">Question Type</label> <select
												id="questionTypeSelect" class="form-control"
												data-placeholder="Choose a Category" tabindex="1">
												<!--<option value="Category 1">-- Question Type --</option>  -->
												<option value="Category 3">Multi Choice Radio</option>
												<option value="Category 2">Multi Choice Check</option>
												<option value="Category 3">True or False</option>
											</select>
										</div>

										<div class="form-group">
											<label class="control-label">Question</label>
											<textarea class="form-control" rows="1"></textarea>
										</div>



										<div class="questionTypeBox">
											<div class="form-group">
												<label class="control-label">Option A</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="radio radio-success">
													<input type="radio" name="radio" id="radio4"
														value="option4"> <label for="radio4">
														Check if Option A is correct </label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option B</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="radio radio-success">
													<input type="radio" name="radio" id="radio4"
														value="option4"> <label for="radio4">
														Check if Option B is correct </label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option C</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="radio radio-success">
													<input type="radio" name="radio" id="radio4"
														value="option4"> <label for="radio4">
														Check if Option C is correct </label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option D</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="radio radio-success">
													<input type="radio" name="radio" id="radio4"
														value="option4"> <label for="radio4">
														Check if Option D is correct </label>
												</div>
											</div>

											<div class="form-group ">
												<label class="control-label">Option E</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="radio radio-success">
													<input type="radio" name="radio" id="radio4"
														value="option4"> <label for="radio4">
														Check if Option E is correct </label>
												</div>
											</div>
										</div>

										<div class="questionTypeBox" style="display: none;">
											<div class="form-group">
												<label class="control-label">Option A</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="checkbox checkbox-success">
													<input id="checkbox33" type="checkbox"> <label
														for="checkbox33">Check if Option A is correct</label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option B</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="checkbox checkbox-success">
													<input id="checkbox33" type="checkbox"> <label
														for="checkbox33">Check if Option B is correct</label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option C</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="checkbox checkbox-success">
													<input id="checkbox33" type="checkbox"> <label
														for="checkbox33">Check if Option C is correct</label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option D</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="checkbox checkbox-success">
													<input id="checkbox33" type="checkbox"> <label
														for="checkbox33">Check if Option D is correct</label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option E</label>
												<textarea class="form-control" rows="1"></textarea>
												<div class="checkbox checkbox-success">
													<input id="checkbox33" type="checkbox"> <label
														for="checkbox33">Check if Option E is correct</label>
												</div>
											</div>
										</div>

										<div class="questionTypeBox" style="display: none;">
											<div class="form-group">
												<label class="control-label">Check the correct
													option</label>
												<div class="radio-list">
													<label class="radio-inline"> <input type="radio"
														name="optionsRadios2" value="option1"> True
													</label> <label class="radio-inline"> <input type="radio"
														name="optionsRadios2" value="option2"> False
													</label>
												</div>
											</div>
										</div>

										<div class="form-group">
											<label for="inputEmail3" class="control-label">Additional
												Information</label> <input type="email" class="form-control"
												id="inputEmail3" placeholder="Additional information">
										</div>

										<div class="form-group">
											<label class="control-label">Difficulty Level</label> <select
												class="form-control" data-placeholder="Choose a Category"
												tabindex="1">
												<!--<option value="Category 1">-- Difficulty Level --</option>  -->
												<option value="Category 2">General</option>
												<option value="Category 2">Beginner</option>
												<option value="Category 3">Intermediate</option>
												<option value="Category 3">Advanced</option>
											</select>
										</div>

										<div class="form-group">
											<label class="control-label">Mark(s)</label> <input
												class="vertical-spin" type="text"
												data-bts-button-down-class="btn btn-default btn-outline"
												data-bts-button-up-class="btn btn-default btn-outline"
												value="1" name="vertical-spin">
										</div>

										<div class="form-group">
											<div class="checkbox checkbox-success">
												<input id="checkbox1" type="checkbox" checked> <label
													for="checkbox1"> Active</label>
											</div>
										</div>

										<button type="submit"
											class="btn btn-success waves-effect waves-light m-r-10">Submit</button>
										<button type="submit"
											class="btn btn-inverse waves-effect waves-light">Cancel</button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!--
					<div class="col-sm-6">
						<div class="white-box">
							<h3 class="box-title m-b-0">Sample Horizontal form</h3>
							<p class="text-muted m-b-30 font-13">Use Bootstrap's
								predefined grid classes for horizontal form</p>
							<form class="form-horizontal">



								<div class="form-group">
									<label for="inputEmail3" class="col-sm-3 control-label">Name*</label>
									<div class="col-sm-9">
										<input type="email" class="form-control" id="inputEmail3"
											placeholder="Quiz Name">
									</div>
								</div>

								<div class="form-group">
									<label for="" class="col-sm-3 control-label">Description</label>
									<div class="col-sm-9">
										<input type="email" class="form-control" id=""
											placeholder="Quiz Description">
									</div>
								</div>


								<div class="form-group">
									<label class="control-label col-md-3">Visibility</label>
									<div class="col-md-9">
										<select class="form-control"
											data-placeholder="Choose a Category" tabindex="1">
											<option value="Category 1">-- Select Quiz Visibility
												--</option>
											<option value="Category 2">Private</option>
											<option value="Category 3">Public</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3">Display</label>
									<div class="col-md-9">
										<select class="form-control"
											data-placeholder="Choose a Category" tabindex="1">
											<option value="Category 1">-- Select Quiz Format --</option>
											<option value="Category 2">Horizontal</option>
											<option value="Category 3">Vertical</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3">Status</label>
									<div class="col-md-9">
										<select class="form-control"
											data-placeholder="Choose a Category" tabindex="1">
											<option value="Category 1">-- Select Quiz Status --</option>
											<option value="Category 2">Active</option>
											<option value="Category 3">Inactive</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3">Selection</label>
									<div class="col-md-9">
										<select class="form-control"
											data-placeholder="Choose a Category" tabindex="1">
											<option value="Category 1">-- Select Question
												Pattern --</option>
											<option value="Category 2">Sequential</option>
											<option value="Category 3">Random</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-3 control-label">Start
										Date</label>
									<div class="col-sm-9">
										<input type="email" class="form-control" id="inputEmail3"
											placeholder="Quiz Start Date">
									</div>
								</div>

								<div class="form-group">
									<label for="" class="col-sm-3 control-label">End Date</label>
									<div class="col-sm-9">
										<input type="email" class="form-control" id=""
											placeholder="Quiz End Date">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<div class="checkbox checkbox-success">
											<input id="checkbox33" type="checkbox"> <label
												for="checkbox33">Check me out !</label>
										</div>
									</div>
								</div>

								<div class="form-group m-b-0">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit"
											class="btn btn-success waves-effect waves-light m-r-10">Submit</button>
										<button type="submit"
											class="btn btn-inverse waves-effect waves-light">Cancel</button>
									</div>
								</div>
  
								<div class="form-group m-b-0">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit"
											class="btn btn-info waves-effect waves-light m-t-10">Sign
											in</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					-->

				</div>

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
										src="<c:url value="/plugins/images/users/varun.jpg" />"
										alt="user-img" class="img-circle"> <span>Varun
											Dhavan <small class="text-success">online</small>
									</span></a></li>
								<li><a href="javascript:void(0)"><img
										src="<c:url value="/plugins/images/users/genu.jpg" />"
										alt="user-img" class="img-circle"> <span>Genelia
											Deshmukh <small class="text-warning">Away</small>
									</span></a></li>
								<li><a href="javascript:void(0)"><img
										src="<c:url value="/plugins/images/users/ritesh.jpg" />"
										alt="user-img" class="img-circle"> <span>Ritesh
											Deshmukh <small class="text-danger">Busy</small>
									</span></a></li>
								<li><a href="javascript:void(0)"><img
										src="<c:url value="/plugins/images/users/arijit.jpg" />"
										alt="user-img" class="img-circle"> <span>Arijit
											Sinh <small class="text-muted">Offline</small>
									</span></a></li>
								<li><a href="javascript:void(0)"><img
										src="<c:url value="/plugins/images/users/govinda.jpg" />"
										alt="user-img" class="img-circle"> <span>Govinda
											Star <small class="text-success">online</small>
									</span></a></li>
								<li><a href="javascript:void(0)"><img
										src="<c:url value="/plugins/images/users/hritik.jpg" />"
										alt="user-img" class="img-circle"> <span>John
											Abraham<small class="text-success">online</small>
									</span></a></li>
								<li><a href="javascript:void(0)"><img
										src="<c:url value="/plugins/images/users/john.jpg" />"
										alt="user-img" class="img-circle"> <span>Hritik
											Roshan<small class="text-success">online</small>
									</span></a></li>
								<li><a href="javascript:void(0)"><img
										src="<c:url value="/plugins/images/users/pawandeep.jpg" />"
										alt="user-img" class="img-circle"> <span>Pwandeep
											rajan <small class="text-success">online</small>
									</span></a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End Right sidebar -->
				<!-- ============================================================== -->
			</div>
			<!-- /.container-fluid -->
			<%@include file="tmp-footer.jsp"%>
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
	<script
		src="<c:url value="/plugins/bower_components/custom-select/custom-select.min.js" />"
		type="text/javascript"></script>
	<script
		src="<c:url value="/plugins/bower_components/bootstrap-select/bootstrap-select.min.js" />"
		type="text/javascript"></script>
	<script
		src="<c:url value="/plugins/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" />"
		type="text/javascript"></script>
	<script
		src="<c:url value="/plugins/bower_components/bootstrap-select/bootstrap-select.min.js" />"
		type="text/javascript"></script>
	<script type="text/javascript">
		$('#slimtest1').slimScroll({
			height : '500px'
		});
		$('#slimtest2').slimScroll({
			height : '250px'
		});
		$('#slimtest3').slimScroll({
			position : 'left',
			height : '250px',
			railVisible : true,
			alwaysVisible : true
		});
		$('#slimtest4').slimScroll({
			color : '#00f',
			size : '10px',
			height : '250px',
			alwaysVisible : true
		});
		// For select 2
		$(".select2").select2();
		//Bootstrap-TouchSpin
		$(".vertical-spin").TouchSpin({
			verticalbuttons : true,
			verticalupclass : 'ti-plus',
			verticaldownclass : 'ti-minus'
		});
		var vspinTrue = $(".vertical-spin").TouchSpin({
			verticalbuttons : true
		});
		if (vspinTrue) {
			$('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
		}
	</script>
	<!--Wave Effects -->
	<script src="<c:url value="/js/waves.js" />"></script>
	<!-- Custom Theme JavaScript -->
	<script src="<c:url value="/js/custom.min.js" />"></script>
	<!--Style Switcher -->
	<script
		src="<c:url value="/plugins/bower_components/styleswitcher/jQuery.style.switcher.js" />"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			$('#questionTypeSelect').change(function() {

				var selectedIndex = $(this).get(0).selectedIndex;
				$('.questionTypeBox').fadeOut();
				$('.questionTypeBox').eq(selectedIndex).fadeIn();
			});
		});
	</script>
</body>

</html>