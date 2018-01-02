<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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


				<c:if test="${not empty msg}">
					<div class="row">
						<div class="col-md-6">
							<div class="alert alert-danger alert-dismissable">
								<a href="#" class="close" data-dismiss="alert"
									aria-label="close">&times;</a>${msg}
							</div>
						</div>
					</div>
				</c:if>


				<div class="row">
					<div class="col-md-6">
						<div class="white-box">
							<h3 class="box-title m-b-0">Sample Basic Forms</h3>
							<p class="text-muted m-b-30 font-13">Bootstrap Elements</p>
							<div class="row">
								<div class="col-sm-12 col-xs-12">

									<form:form method="post" modelAttribute="question" action="">
										<div class="form-group">
											<label for="" class="control-label">Quiz Name</label>
											<form:input path="quizId" type="text" class="form-control"
												id="" placeholder="Quiz Name" readonly="true" />
										</div>


										<div class="form-group">
											<label class="control-label">Quiz Section</label>
											<form:select path="sectionId" items="${sectionList}"
												class="form-control select2"
												data-placeholder="Choose a Category" tabindex="1">
											</form:select>
											<span class="help-block"></span>
										</div>

										<div class="form-group">
											<label class="control-label">Question Type</label>
											<form:select path="questionTypeId" id="questionTypeSelect"
												class="form-control" data-placeholder="Choose a Category"
												tabindex="1">
												<option value="1">Multi Choice Radio</option>
												<option value="2">Multi Choice Check</option>
												<option value="3">True or False</option>
											</form:select>
										</div>

										<div class="form-group">
											<label for="" class="control-label">Reference</label>
											<form:input path="questionReference" class="form-control"
												id="" placeholder="Question Reference" />
										</div>

										<div class="form-group">
											<label class="control-label">Question</label>
											<form:textarea path="questionName" class="form-control"
												rows="1" placeholder="Question"></form:textarea>
										</div>

										<div id="questionTypeMultiBox">
											<div class="form-group">
												<label class="control-label">Option A</label>
												<form:textarea path="optionA" class="form-control" rows="1"
													placeholder="First Option"></form:textarea>
												<form:radiobutton path="optionValue" value="1"
													class="qTypeMultiRadio" />
												<form:checkbox path="optionAAnswer" class="qTypeMultiCheck" />
												<label for=""> Check if Option A is correct </label>
											</div>

											<div class="form-group">
												<label class="control-label">Option B</label>
												<form:textarea path="optionB" class="form-control" rows="1"
													placeholder="Second Option"></form:textarea>
												<form:radiobutton path="optionValue" value="2"
													class="qTypeMultiRadio" />
												<form:checkbox path="optionBAnswer" class="qTypeMultiCheck" />
												<label for=""> Check if Option B is correct </label>
											</div>

											<div class="form-group">
												<label class="control-label">Option C</label>
												<form:textarea path="optionC" class="form-control" rows="1"
													placeholder="Third Option"></form:textarea>
												<form:radiobutton path="optionValue" value="3"
													class="qTypeMultiRadio" />
												<form:checkbox path="optionCAnswer" class="qTypeMultiCheck" />
												<label for="radio4"> Check if Option C is correct </label>
											</div>

											<div class="form-group">
												<label class="control-label">Option D</label>
												<form:textarea path="optionD" class="form-control" rows="1"
													placeholder="Fourth Option"></form:textarea>
												<form:radiobutton path="optionValue" value="4"
													class="qTypeMultiRadio" />
												<form:checkbox path="optionDAnswer" class="qTypeMultiCheck" />
												<label for=""> Check if Option D is correct </label>
											</div>

											<div class="form-group">
												<label class="control-label">Option E</label>
												<form:textarea path="optionE" class="form-control" rows="1"
													placeholder="Fifth Option"></form:textarea>
												<form:radiobutton path="optionValue" value="5"
													class="qTypeMultiRadio" />
												<form:checkbox path="optionEAnswer" class="qTypeMultiCheck" />
												<label for=""> Check if Option E is correct </label>
											</div>

										</div>

										<%--
										<div class="questionTypeBox" style="display: none;">
											<div class="form-group">
												<label class="control-label">Option A</label>
												<form:textarea path="optionA" class="form-control" rows="1"></form:textarea>
												<form:checkbox path="optionAStatus" />
												<label for="">Check if Option A is correct</label>
											</div>

											<div class="form-group">
												<label class="control-label">Option B</label>
												<form:textarea path="optionB" class="form-control" rows="1"></form:textarea>
												<div class="">
													<form:checkbox path="optionBStatus" />
													<label for="">Check if Option B is correct</label>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label">Option C</label>
												<form:textarea path="optionC" class="form-control" rows="1"></form:textarea>
												<form:checkbox path="optionCStatus" />
												<label for="">Check if Option C is correct</label>
											</div>

											<div class="form-group">
												<label class="control-label">Option D</label>
												<form:textarea path="optionD" class="form-control" rows="1"></form:textarea>
												<form:checkbox path="optionDStatus" />
												<label for="">Check if Option D is correct</label>
											</div>

											<div class="form-group">
												<label class="control-label">Option E</label>
												<form:textarea path="optionE" class="form-control" rows="1"></form:textarea>
												<form:checkbox path="optionEStatus" />
												<label for="">Check if Option E is correct</label>
											</div>
										</div>
										--%>

										<div id="questionTypeTruthBox" style="display: none;">
											<div class="form-group">
												<label class="control-label">Check the correct
													option</label>
												<div class="radio-list">
													<label class="radio-inline"> <form:radiobutton
															path="optionCorrect" value="1" />False
													</label> <label class="radio-inline"> <form:radiobutton
															path="optionCorrect" value="2" />True
													</label>
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label">Difficulty Level</label>
											<form:select path="difficultyLevelId" class="form-control"
												data-placeholder="Choose a Category" tabindex="1">
												<form:option value="1">General</form:option>
												<form:option value="2">Beginner</form:option>
												<form:option value="3">Intermediate</form:option>
												<form:option value="4">Advanced</form:option>
											</form:select>
										</div>

										<div class="form-group">
											<label class="control-label">Mark(s)</label>
											<form:input path="questionMarks" class="vertical-spin"
												type="text"
												data-bts-button-down-class="btn btn-default btn-outline"
												data-bts-button-up-class="btn btn-default btn-outline"
												value="1" name="vertical-spin" />
										</div>

										<div class="form-group">
											<form:checkbox path="statusId" checked="true" />
											<label for="">Active</label>
										</div>

										<div class="form-group">
											<label class="control-label">Comment</label>
											<form:textarea path="makerComment" class="form-control"
												rows="1" placeholder="Comment"></form:textarea>
										</div>

										<c:choose>
											<c:when test="${not empty question.questionName}">
												<button type="submit"
													class="btn btn-success waves-effect waves-light m-r-10">Update</button>
											</c:when>
											<c:otherwise>
												<button type="submit"
													class="btn btn-success waves-effect waves-light m-r-10">Submit</button>
											</c:otherwise>
										</c:choose>
										<a href="${contextPath}/questions"
											class="btn btn-inverse waves-effect waves-light">Cancel</a>
									</form:form>
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

			
			if(${not empty question.questionName}){
				
				alert(${question.questionTypeId});
				
				$('#questionTypeSelect').val(${question.questionTypeId});
				showQuestionType(${question.questionTypeId});
				
			}else{
				$('#questionTypeTruthBox').fadeOut();
				$('.qTypeMultiCheck').fadeOut();
			}

			$('#questionTypeSelect').change(function() {

				var selectedVal = $('#questionTypeSelect').val();
				showQuestionType(selectedVal);
				//var selectedIndex = $(this).get(0).selectedIndex;
				//$('.questionTypeBox').fadeOut();
				//$('.questionTypeBox').eq(selectedIndex).fadeIn();

			});
		});

		function showQuestionType(selectedVal) {

			$('#questionTypeMultiBox').fadeOut();
			$('#questionTypeTruthBox').fadeOut();
			$('.qTypeMultiRadio').fadeOut();
			$('.qTypeMultiCheck').fadeOut();

			if (selectedVal == 1) {

				$('#questionTypeMultiBox').fadeIn();
				$('.qTypeMultiRadio').fadeIn();

			} else if (selectedVal == 2) {

				$('#questionTypeMultiBox').fadeIn();
				$('.qTypeMultiCheck').fadeIn();

			} else {

				$('#questionTypeTruthBox').fadeIn();
			}
		}
	</script>
</body>
</html>