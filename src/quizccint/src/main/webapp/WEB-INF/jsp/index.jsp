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
						<h4 class="page-title">${quizTitle}QUIZ</h4>
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
				<!-- .Row -->

				<!-- /.Row -->
				<!-- .Row -->

				<%-- <%@include file="quiz-content.jsp" %>--%>
				<form:form method="post" modelAttribute="answer">
					<div class="row">
						<div class="col-md-12">
							<div class="white-box">
								<!--  <h3 class="box-title">Both Scroll</h3> -->
								<input type="hidden" name="quesId"
									value="${question.questionId}">
								<form:input type="hidden" path="questionId" />
								<input type="hidden" name="currQuestion"
									value="${currentQuestion}"> <input type="hidden"
									name="totQuestions" value="${totalQuestions}">
								<div class="row" style="">
									<div class="form-group">
										<div class="col-sm-9">

											<form:checkbox path="marked" />
											<label for="">Mark</label>

										</div>
										<!--  <label for="inputEmail3" class="col-sm-1 control-label">Username*</label>-->
										<div class="col-sm-3">
											<input type="email" class="form-control text-right"
												id="inputEmail3" placeholder="Username"
												value="Time Remaining: 00:00:00" readonly>
										</div>
									</div>
								</div>
								<hr>
								<div id="slimtest2">
									<div class="row">
										<div class="form-group">
											<div class="col-sm-2">
												<input type="email" class="form-control" id="inputEmail3"
													placeholder=""
													value="Item ${currentQuestion} of ${totalQuestions}"
													readonly>
											</div>
											<div class="col-sm-10 text-right">
												<button type="button" id="showAnswerBtn"
													class="btn btn-success waves-effect waves-light m-r-10">Show
													Answer</button>
												<button type="button"
													class="btn btn-inverse waves-effect waves-light">Calculator</button>
											</div>
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-12">
											<h4>${question.questionName}</h4>
										</div>
									</div>


									<c:choose>
										<c:when test="${question.questionTypeId == 1}">
											<c:if test="${not empty question.optionA}">
												<div class="row">
												<div class="optionContent col-md-12"
													style="background-color: #e1e1e1;">
													<div class="form-group">
														<div class="radio">
															<form:radiobutton path="optionValue" value="1"
																class="optionRadio" name="radio" id="radio1" />
															<label for="radio1" class="col-sm-1" style="width: 0;">
																A.</label> <span class="col-sm-11">${question.optionA}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionB}">
												<div class="row">
												<div class="optionContent col-md-12"
													style="background-color: #e1e1e1;">
													<div class="form-group">
														<div class="radio">
															<form:radiobutton path="optionValue" value="2"
																class="optionRadio" name="radio" id="radio2" />
															<label for="radio2" class="col-sm-1" style="width: 0;">
																B.</label> <span class="col-sm-11">${question.optionB}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionC}">
												<div class="row">
												<div class="optionContent col-md-12"
													style="background-color: #e1e1e1;">
													<div class="form-group">
														<div class="radio">
															<form:radiobutton path="optionValue" value="3"
																class="optionRadio" name="radio" id="radio3" />
															<label for="radio3" class="col-sm-1" style="width: 0;">
																C.</label> <span class="col-sm-11">${question.optionC}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionD}">
												<div class="row">
												<div class="optionContent col-md-12"
													style="background-color: #e1e1e1;">
													<div class="form-group">
														<div class="radio">
															<form:radiobutton path="optionValue" value="4"
																class="optionRadio" name="radio" id="radio4" />
															<label for="radio4" class="col-sm-1" style="width: 0;">
																D.</label> <span class="col-sm-11">${question.optionD}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionE}">
												<!-- <div class="row" style="display:none;"> -->
												<div class="row">
												<div class="optionContent col-md-12"
													style="background-color: #e1e1e1;">
													<div class="form-group">
														<div class="radio">
															<form:radiobutton path="optionValue" value="5"
																class="optionRadio" name="radio" id="radio5" />
															<label for="radio5" class="col-sm-1" style="width: 0;">
																E.</label> <span class="col-sm-11">${question.optionE}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
										</c:when>
										<c:when test="${question.questionTypeId == 2}">
											
											<c:if test="${not empty question.optionA}">
												<div class="row">
												<div class="optionContent col-md-12">
													<div class="form-group">
														<div>
															<label for="checkbox1" class="col-sm-1"
																style="padding: 0px; width: 3%;"> <form:checkbox
																	path="optionAAnswer" id="checkbox1"
																	class="optionCheckBox" /> A.
															</label> <span class="col-sm-11">${question.optionA}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionB}">
												<div class="row">
												<div class="optionContent col-md-12">
													<div class="form-group">
														<div>
															<label for="checkbox2" class="col-sm-1"
																style="padding: 0px; width: 3%;"><form:checkbox
																	path="optionBAnswer" id="checkbox2"
																	class="optionCheckBox" /> B.</label> <span class="col-sm-11">${question.optionB}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionC}">
												<div class="row">
												<div class="optionContent col-md-12">
													<div class="form-group">
														<div>
															<label for="checkbox3" class="col-sm-1"
																style="padding: 0px; width: 3%;"><form:checkbox
																	path="optionCAnswer" id="checkbox3"
																	class="optionCheckBox" /> C.</label> <span class="col-sm-11">${question.optionC}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionD}">
												<div class="row">
												<div class="optionContent col-md-12">
													<div class="form-group">
														<div>
															<label for="checkbox4" class="col-sm-1"
																style="padding: 0px; width: 3%;"><form:checkbox
																	path="optionDAnswer" id="checkbox4"
																	class="optionCheckBox" /> D.</label> <span class="col-sm-11">${question.optionD}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											
											<c:if test="${not empty question.optionE}">
												<!-- <div class="row" style="display:none;"> -->
												<div class="row">
												<div class="optionContent col-md-12">
													<div class="form-group">
														<div>
															<label for="checkbox5" class="col-sm-1"
																style="padding: 0px; width: 3%;"><form:checkbox
																	path="optionEAnswer" id="checkbox5"
																	class="optionCheckBox" /> E.</label> <span class="col-sm-11">${question.optionE}</span>
														</div>
													</div>
												</div>
											</div>
											</c:if>

										</c:when>
										<c:otherwise>

											<div class="row">
												<div class="optionContent col-md-12"
													style="background-color: #e1e1e1;">
													<div class="form-group">
														<div class="radio">
															<form:radiobutton path="optionCorrect" value="1"
																class="optionRadio" name="radio" id="radio1" />
															<label for="radio1" class="col-sm-1" style="width: 0;">
																A.</label> <span class="col-sm-11">False</span>
														</div>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="optionContent col-md-12"
													style="background-color: #e1e1e1;">
													<div class="form-group">
														<div class="radio">
															<form:radiobutton path="optionCorrect" value="2"
																class="optionRadio" name="radio" id="radio2" />
															<label for="radio2" class="col-sm-1" style="width: 0;">
																B.</label> <span class="col-sm-11">True</span>
														</div>
													</div>
												</div>
											</div>

										</c:otherwise>
									</c:choose>

									<!--
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="checkbox">
													<input type="checkbox" id="checkbox1"> <label
														for="checkbox1" class="col-sm-1" style="width: 0;">
														A.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="checkbox">
													<input type="checkbox" id="checkbox2"> <label
														for="checkbox2" class="col-sm-1" style="width: 0;">
														B.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group Bootstrap allows you to group a series of
														buttons together (on a single line) in a button group</span>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="checkbox">
													<input type="checkbox" id="checkbox3"> <label
														for="checkbox3" class="col-sm-1" style="width: 0;">
														C.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>



									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="checkbox">
													<input type="checkbox" id="checkbox4"> <label
														for="checkbox4" class="col-sm-1" style="width: 0;">
														D.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="checkbox">
													<input type="checkbox" id="checkbox5"> <label
														for="checkbox5" class="col-sm-1" style="width: 0;">
														E.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>
									-->

									<!--
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="radio">
													<input type="radio" name="radio" id="radio1"> <label
														for="radio1" class="col-sm-1" style="width: 0;">
														A.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="radio">
													<input type="radio" name="radio" id="radio2"> <label
														for="radio2" class="col-sm-1" style="width: 0;">
														B.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group Bootstrap allows you to group a series of
														buttons together (on a single line) in a button group</span>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="radio">
													<input type="radio" name="radio" id="radio3"> <label
														for="radio3" class="col-sm-1" style="width: 0;">
														C.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>



									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="radio">
													<input type="radio" name="radio" id="radio4"> <label
														for="radio4" class="col-sm-1" style="width: 0;">
														D.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="radio">
													<input type="radio" name="radio" id="radio5"> <label
														for="radio5" class="col-sm-1" style="width: 0;">
														E.</label> <span class="col-sm-11">Bootstrap allows you to
														group a series of buttons together (on a single line) in a
														button group</span>
												</div>
											</div>
										</div>
									</div>
									-->

									<hr>
									<div class="row">
										<div class="col-sm-12">${questionSection}</div>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="form-group">
										<div class="col-sm-6">
											<button type="submit" name="questionNavBtn" value="Previous"
												class="btn btn-success waves-effect waves-light m-r-10">Previous</button>
											<button type="submit" name="questionNavBtn" value="Next"
												class="btn btn-inverse waves-effect waves-light">
												Next</button>
											<select class="selectpicker" data-style="form-control">
												<option>Review</option>
												<option>Review All</option>
												<option>Review Incomplete</option>
												<option>Review Marked</option>
											</select>
										</div>
										<div class="col-sm-6 text-right">
											<button type="button"
												class="btn btn-success waves-effect waves-light m-r-10">Start
												Exam</button>
											<button type="button"
												class="btn btn-inverse waves-effect waves-light">End
												Exam</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form:form>
				<!-- /.Row -->
				<!-- .Row -->
				<!-- /.Row -->
				<!-- .Row -->
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
		src="<c:url value="/plugins/bower_components/bootstrap-select/bootstrap-select.min.js" />"
		type="text/javascript"></script>
	<script type="text/javascript">
		$('#slimtest1').slimScroll({
			height : '500px'
		});
		$('#slimtest2').slimScroll({
			height : '310px'
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
	</script>
	<!--Wave Effects -->
	<script src="<c:url value="/js/waves.js" />"></script>
	<!-- Custom Theme JavaScript -->
	<script src="<c:url value="/js/custom.min.js" />"></script>
	<!--Style Switcher -->
	<script
		src="<c:url value="/plugins/bower_components/styleswitcher/jQuery.style.switcher.js" />"></script>
	<script>
		$(document).ready(function(){
			
				var x = 0;

				$("#showAnswerBtn").click(function(){
					
					if(${question.questionTypeId} == 2){
						
						if(x == 0){
							
							$('.optionContent').css('color','#F00');
							
							if(${question.optionAAnswer} == 1){
								$('.optionContent').eq(0).css('color','#00F');
							}
							
							if(${question.optionBAnswer} == 1){
								$('.optionContent').eq(1).css('color','#00F');
							}
							
							if(${question.optionCAnswer} == 1){
								$('.optionContent').eq(2).css('color','#00F');
							}
							
							if(${question.optionDAnswer} == 1){
								$('.optionContent').eq(3).css('color','#00F');
							}
							
							if(${question.optionEAnswer} == 1){
								$('.optionContent').eq(4).css('color','#00F');
							}
							
							x = 1;
							$("#showAnswerBtn").text('Hide Answer');
							
						}else{
							
							$('.optionContent').css('color','#000');
							x = 0;
							$("#showAnswerBtn").text('Show Answer');
						}
						
					}else{
						
						
						if(x == 0){
							
							$('.optionContent').css('color','#F00');
							
							$('.optionRadio').each(function(i){
								
								if(${question.questionTypeId == 1}){
									
									if($(this).val() == ${question.optionValue}){
										
										$('.optionContent').eq(i).css('color','#00F');
									}
									
								}else if(${question.questionTypeId == 2}){
									
									
									
								}else{
									
									if($(this).val() == ${question.optionCorrect}){
										
										$('.optionContent').eq(i).css('color','#00F');
									}
								}
								
								
							});
							
							x = 1;
							
							$("#showAnswerBtn").text('Hide Answer');
							
						}else{
							
							$('.optionContent').css('color','#000');
							
							x = 0;
							
							$("#showAnswerBtn").text('Show Answer');
						}
						
					}
				});
		});
	</script>
</body>

</html>