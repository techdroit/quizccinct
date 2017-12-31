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
						<h4 class="page-title">Options Page</h4>
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
				<form method="post">
					<div class="row">
						<div class="col-md-12">
							<div class="white-box">
							   <c:set var="hasSections" value="${not empty quizSectionList}" />
							   
								<div class="row">
									<div class="form-group">
										<div class="col-sm-6">
											<select name="quizId" id="quizDropDown" class="selectpicker"
												data-style="form-control">
												<option value="0">-- Select Quiz --</option>
												<c:forEach var="quizInfo" items="${quizInfoList}">
													<option value="${quizInfo.quizId}">${quizInfo.quizName}</option>
												</c:forEach>
											</select>
											<button type="submit" id=""
												class="btn btn-inverse waves-effect waves-light">Load Sections</button>
										</div>
									</div>
								</div>
								<hr>
								
								
								
								<div id="slimtest2">
								
									<c:if test="${hasSections}">
								
									<div class="row">
										<div class="col-sm-12">
											<h4>Take questions from selected sections only:</h4>
										</div>
									</div>
									
									<div class="row">
										<div id="sectionBox" class="col-sm-12">
											
												<c:set var="totalQuestions" value="${0}" />
												<c:forEach var="quizSection" items="${quizSectionList}" varStatus="status">
													<div class="checkbox"><input value="${quizSection.numberOfQuestions}" class="sectionCheckBoxes" type="checkbox" checked><label for="">${quizSection.sectionDescription}</label> <a href="#"><span class="badge badge-success">${quizSection.numberOfQuestions}</span></a></div>
													<c:set var="totalQuestions" value="${totalQuestions + quizSection.numberOfQuestions}" />
												</c:forEach>
										</div>
									</div>
									
									<div class="row">
										<div class="form-group">
											<div class="col-sm-12">
												<button id="selectAllBtn" type="button"
													class="btn waves-effect waves-light m-r-10">Select
													All</button>
												<button id="deselectAllBtn" type="button" class="btn waves-effect waves-light">Deselect
													All</button>
											</div>
										</div>
									</div>
									</c:if>
									
									
								</div>
								<hr>
								<div class="row">
									<div class="form-group">
										<div class="col-sm-3">
											<input type="text" class="form-control" id="totalQuestions"
												placeholder="" value="Total Questions Selected: ${totalQuestions}" readonly>
										</div>
										<div class="col-sm-9 text-right">
											<button type="button" id="continueBtn" 
												class="btn btn-success waves-effect waves-light m-r-10"  <c:if test="${!hasSections}">disabled</c:if>>Continue</button>
										</div>
									</div>
								</div>
								
								
							</div>
						</div>
						</div>
				</form>
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
		$("input[name='tch3']").TouchSpin();
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
			
			$("#quizDropDown").val(${quizId});
			
			$("#quizDropDown").change(function() {

				//alert($("#quizDropDown").val());
				
				var selectedVal = $("#quizDropDown").val();
				
				$("#slimtest2").fadeOut();
				
				if(selectedVal > 0){
					
				}else{
					
				}
				
				/*if(selectedVal > 0){
					
					var totalQuestions = 0;
					
					$.getJSON("sections/" + selectedVal).done(function(json) {
						$("#sectionBox").empty();
						for(var i = 0; i < json.length; i++){
							$("#selectAllBtn").prop('disabled',false);
							$("#deselectAllBtn").prop('disabled',false);
							$("#sectionBox").append('<div class="checkbox"><input class="" type="checkbox" checked><label class="sectionCheckBoxes" for=""> ' + json[i].sectionDescription + ' </label> <a href="#"><span class="badge badge-success">' + json[i].numberOfQuestions + '</span></a></div>');
							totalQuestions += json[i].numberOfQuestions;
						}
						
						$("#totalQuestions").val('Total Questions Selected: ' + totalQuestions);
						
					}).fail(function(jqxhr, textStatus, error) {
						var err = textStatus + ", " + error;
						alert("Request Failed: " + err);
					});
					
				}else{
					
					$("#sectionBox").empty();
					$("#selectAllBtn").prop('disabled',true);
					$("#deselectAllBtn").prop('disabled',true);
					$("#totalQuestions").val('');
				}*/
				
			});
			
			$('#selectAllBtn').click(function(){
				
				$('.sectionCheckBoxes').prop('checked',true);
				sumNumberOfQuestions();
				
			});
			
			$('#deselectAllBtn').click(function(){
				
				$('.sectionCheckBoxes').prop('checked',false);
				sumNumberOfQuestions();
			});
			
			$(".sectionCheckBoxes").click(function(){
				sumNumberOfQuestions();
			});
		//var 
		
		function sumNumberOfQuestions(){
				
				var total = 0;
				var x = 0;
				
				$(".sectionCheckBoxes").each(function(i){
					
					if($(this).prop("checked") == true){
						//alert($(this).val());
						x = parseInt($(this).val());
						total = total + x;
					}else{
						//totalQuestions = 0;
					}
				});
				
				if(total > 0){
					$('#continueBtn').prop('disabled',false);
				}else{
					$('#continueBtn').prop('disabled',true);
				}
				$('#totalQuestions').val('Total Questions Selected: ' + total);
			}
			
		});
	</script>
</body>

</html>