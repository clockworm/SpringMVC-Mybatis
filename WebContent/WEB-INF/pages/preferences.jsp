<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>增加客户</title>
<meta name="description" content="">
<meta name="author" content="templatemo">

<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="${path }/css/font-awesome.min.css" rel="stylesheet">
<link href="${path }css/bootstrap.min.css" rel="stylesheet">
<link href="${path }css/templatemo-style.css" rel="stylesheet">
</head>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
			<div class="square"></div>
			<h1>客户关系管理</h1>
			</header>
			<div class="profile-photo-container">
				<div class="profile-photo-overlay"></div>
			</div>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
			<ul>
				<li><a href="index.jsp"><i class="fa fa-home fa-fw"></i>首页</a></li>
				<li><a href="data-visualization.jsp"><i
						class="fa fa-bar-chart fa-fw"></i>图表</a></li>
				<li><a href="data-visualization.jsp"><i
						class="fa fa-database fa-fw"></i>数据分析</a></li>
				<li><a href="${path }/user/list"><i class="fa fa-users fa-fw"></i>客户管理</a></li>
				<li><a href="preferences.jsp" class="active"><i
						class="fa fa-sliders fa-fw"></i>增加客户</a></li>
				<li><a href="${path}/user/quit"><i class="fa fa-eject fa-fw"></i>切换用户</a></li>
			</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
					<ul class="text-uppercase">
						<li><a href="" class="active">Admin panel</a></li>
						<li><a href="">Dashboard</a></li>
						<li><a href="">Overview</a></li>
						<li><a href="login.html">Sign in form</a></li>
					</ul>
					</nav>
				</div>
			</div>
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">Preferences</h2>
					<p>Here goes another form and form controls.</p>
					<form action="index.html" class="templatemo-login-form"
						method="post" enctype="multipart/form-data">
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputFirstName">First Name</label> <input
									type="text" class="form-control" id="inputFirstName"
									placeholder="John">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputLastName">Last Name</label> <input type="text"
									class="form-control" id="inputLastName" placeholder="Smith">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputUsername">Username</label> <input type="text"
									class="form-control" id="inputUsername" placeholder="Admin">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputEmail">Email</label> <input type="email"
									class="form-control" id="inputEmail"
									placeholder="admin@company.com">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputCurrentPassword">Current Password</label> <input
									type="password" class="form-control highlight"
									id="inputCurrentPassword" placeholder="*********************">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputNewPassword">New Password</label> <input
									type="password" class="form-control" id="inputNewPassword">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputConfirmNewPassword">Confirm New
									Password</label> <input type="password" class="form-control"
									id="inputConfirmNewPassword">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 has-success form-group">
								<label class="control-label" for="inputWithSuccess">Input
									with success</label> <input type="text" class="form-control"
									id="inputWithSuccess">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 has-warning form-group">
								<label class="control-label" for="inputWithWarning">Input
									with warning</label> <input type="text" class="form-control"
									id="inputWithWarning">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 has-error form-group">
								<label class="control-label" for="inputWithError">Input
									with error</label> <input type="text" class="form-control"
									id="inputWithError">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 form-group">
								<label class="control-label" for="inputNote">Note</label>
								<textarea class="form-control" id="inputNote" rows="3"></textarea>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">Single
									Selection Control</label> <select class="form-control">
									<option value="html">HTML</option>
									<option value="plain">Plain Text</option>
								</select>
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<div class="templatemo-block margin-bottom-5">
									<input type="checkbox" name="emailOptions" id="c1" value="new"
										checked> <label for="c1" class="font-weight-400"><span></span>Email
										me when new member sign up.</label>
								</div>
								<div class="templatemo-block margin-bottom-5">
									<input type="checkbox" name="emailOptions" id="c2"
										value="weekly"> <label for="c2"
										class="font-weight-400"><span></span>Weekly summary
										email</label>
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">Multiple
									Selection Control</label> <select multiple
									class="templatemo-multi-select form-control"
									style="overflow-y: scroll;">
									<option value="">Charts</option>
									<option value="">Graphs</option>
									<option value="">Icons</option>
									<option value="">Repsonsive</option>
									<option value="">HTML5</option>
									<option value="">CSS3</option>
									<option value="">jQuery</option>
								</select>
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<div>
									<label class="control-label templatemo-block">Email
										Option</label>
									<div class="templatemo-block margin-bottom-5">
										<input type="radio" name="emailOptions" id="r1" value="html"
											checked> <label for="r1" class="font-weight-400"><span></span>HTML
											Format</label>
									</div>
									<div class="templatemo-block margin-bottom-5">
										<input type="radio" name="emailOptions" id="r2" value="plain">
										<label for="r2" class="font-weight-400"><span></span>Plain
											Text</label>
									</div>
									<div class="templatemo-block margin-bottom-5">
										<input type="radio" name="emailOptions" id="r3" value="rich">
										<label for="r3" class="font-weight-400"><span></span>Rich
											Text</label>
									</div>
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 form-group">
								<div class="margin-right-15 templatemo-inline-block">
									<input type="checkbox" name="server" id="c3" value="" checked>
									<label for="c3" class="font-weight-400"><span></span>Server
										Status</label>
								</div>
								<div class="margin-right-15 templatemo-inline-block">
									<input type="checkbox" name="member" id="c4" value="">
									<label for="c4" class="font-weight-400"><span></span>Member
										Status</label>
								</div>
								<div class="margin-right-15 templatemo-inline-block">
									<input type="checkbox" name="expired" id="c5" value="">
									<label for="c5" class="font-weight-400"><span></span>Expired
										Members</label>
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 form-group">
								<div class="margin-right-15 templatemo-inline-block">
									<input type="radio" name="radio" id="r4" value=""> <label
										for="r4" class="font-weight-400"><span></span>Bootstrap</label>
								</div>
								<div class="margin-right-15 templatemo-inline-block">
									<input type="radio" name="radio" id="r5" value="" checked>
									<label for="r5" class="font-weight-400"><span></span>Foundation</label>
								</div>
								<div class="margin-right-15 templatemo-inline-block">
									<input type="radio" name="radio" id="r6" value=""> <label
										for="r6" class="font-weight-400"><span></span>Skeleton</label>
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12">
								<label class="control-label templatemo-block">File Input</label>
								<!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
								<input type="file" name="fileToUpload" id="fileToUpload"
									class="filestyle" data-buttonName="btn-primary"
									data-buttonBefore="true" data-icon="false">
								<p>Maximum upload size is 5 MB.</p>
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">Update</button>
							<button type="reset" class="templatemo-white-button">Reset</button>
						</div>
					</form>
				</div>
				<footer class="text-right">
				<p>
					Copyright &copy; 2084 Company Name | More Templates <a
						href="http://www.cssmoban.com/" target="_blank"
						title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a
						href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿"
						target="_blank">ç½é¡µæ¨¡æ¿</a>
				</p>
				</footer>
			</div>
		</div>
	</div>

	<!-- JS -->
	<script type="text/javascript" src="${path }/js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="${path }/js/bootstrap-filestyle.min.js"></script>
	<!-- http://markusslima.github.io/bootstrap-filestyle/ -->
	<script type="text/javascript" src="${path }/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
</body>
</html>
