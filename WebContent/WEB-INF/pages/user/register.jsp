<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<html lang="en">
<head>
<script type="text/javascript" src="${path}/js/jquery-3.0.0.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册页面</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="${path}/css/font-awesome.min.css" rel="stylesheet">
<link href="${path}/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/css/templatemo-style.css" rel="stylesheet">
</head>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
					<ul class="text-uppercase">
						<li></li>
						<li></li>
					</ul>
					</nav>
				</div>
			</div>
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">填写注册信息</h2>
					<br />
					<h2 id="msg"></h2>
					<form action="${path}/user/regist" onsubmit="return register()"
						class="templatemo-login-form" method="post">
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group"></div>
							<div class="col-lg-6 col-md-6 form-group">
								<span style="color: red" id="msg"></span>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="username">用户名</label> <input type="text"
									class="form-control" onblur="changeName()" onchange="change()"
									id="username" name="username" placeholder="用户名长度5-20之间">
							</div>
							<div class="col-lg-6 col-md-6 form-group" onclick="checkname()">
								<br />
								<button type="button" class="templatemo-blue-button">
									<b>检查用户名</b>
								</button>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="password">密码</label> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="*******">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="repassword">重复密码</label> <input type="password"
									class="form-control" onblur="checkDoublePassword()"
									id="repassword" name="repassword" placeholder="*******">
							</div>
							<div class="col-lg-6 col-md-6 form-group"></div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="email">邮箱</label> <input type="text"
									class="form-control" onchange="change()" id="email"
									name="email" placeholder="xx@xx.com">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<br />
								<button type="button" onclick="checkEmail()"
									class="templatemo-blue-button">
									<b>检查邮箱</b>
								</button>
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">注册</button>
							<button type="reset" class="templatemo-white-button">重置</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${path}/js/bootstrap-filestyle.min.js"></script>
	<script type="text/javascript" src="${path}/js/templatemo-script.js"></script>
	<script type="text/javascript">
		var stateName = 0;
		var stateEmail = 0;
		var msg = $("#msg");
		var flagName = false;
		var flagEmail = false;
		function change() {
			stateEmail = 0;
		}
		function changeName() {
			stateName = 0;
		}
		function checkname() {
			var username = $.trim($('#username').val());
			if (username == "") {
				msg.html("<font color='red'>用户名不能为空</font>");
				return false;
			} else if (username.length > 20 || username.length < 5) {
				msg.html("<font color='red'>用户名长度不合法</font>");
				return false;
			}
			$.post("${path}/user/checkname", {
				username : username,
				state : stateName
			}, function(data) {
				if (data == "") {
					return flagName;
				} else if (data.flag == true) {
					msg.html("<font color='green'>用户名可以使用</font>");
					flagName = true;
				} else if (data.flag == false) {
					msg.html("<font color='red'>用户名已经注册</font>");
					flagName = false;
				}
			});
			stateName = 1;
			return flagName;
		}
		function checkEmail() {
			var email = $("#email").val();
			var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!filter.test(email)) {
				msg.html("<font color='red'>邮箱格式不合法</font>");
				return false;
			}
			$.post("${path}/user/checkEmail", {
				email : email,
				state : stateEmail
			}, function(data) {
				if (data == "") {
					return flagName;
				} else if (data.flag == true) {
					msg.html("<font color='green'>邮箱可以使用</font>");
					flagEmail = true;
				} else if (data.flag == false) {
					msg.html("<font color='red'>邮箱已经注册</font>");
					flagEmail = false;
				}
			});
			stateEmail = 1;
			return flagEmail;
		}
		function checkDoublePassword() {
			var firstPass = $("#password").val();
			var secondPass = $("#repassword").val();
			if (secondPass.length == 0) {
				msg.html("<font color='red'>密码不能为空</font>");
				return false;
			} else if (secondPass != firstPass) {
				msg.html("<font color='red'>两次密码不一致</font>");
				return false;
			}
			msg.html("");
			checkEmail();
			return true;
		}
		function register() {
			stateName = 0;
			var chename = checkname();
			stateEmai = 0;
			var cemail = checkEmail();
			var cpassword = checkDoublePassword();
			if (chename && cemail && cpassword && true) {
				return true;
			}
			return false;
		}
	</script>
</body>
</html>
