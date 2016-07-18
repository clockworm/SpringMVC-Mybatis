<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<title>登录页面</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<style type="text/css">
#msg {
	margin-left: -108px;
	margin-top: -160px;
	position: absolute;
	top: 41%;
	left: 58%;
}
</style>
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/templatemo-style.css" rel="stylesheet">
</head>
<body class="light-gray-bg">
	<div class="templatemo-content-widget templatemo-login-widget white-bg">
		<header class="text-center">
		<div class="square"></div>
		<h1>客户关系管理</h1>
		</header>
		<form action="user/login" class="templatemo-login-form"
			onsubmit="return toVaild()" method="post">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-user fa-fw"></i>
					</div>
					<input type="text" class="form-control" name="username"
						id="username" onblur="checkName()" placeholder="用户名">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-key fa-fw"></i>
					</div>
					<input type="password" id="password" name="password"
						class="form-control" placeholder="******">
				</div>
			</div>
			<div class="form-group">
				<div class="checkbox squaredTwo">
					<input type="checkbox" id="c1" name="autologin" value="sure" /> <label
						for="c1"><span></span>自动登录</label>
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="templatemo-blue-button width-100">登录</button>
			</div>
		</form>
	</div>
	<div
		class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
		<p>
			没有账户? <strong><a href="${path}/user/register"
				class="blue-text">注册</a></strong>
		</p>
	</div>
	<input type="hidden" id="error" value='${error }'>
	<div
		class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg"
		id="msg" style="display: none;">
		<span id="spanMsg"></span>
	</div>
	<script>
		$(document).ready(
				function() {
					var imageUrl = $('img.content-bg-img').attr('src');
					$('.templatemo-content-img-bg').css('background-image',
							'url(' + imageUrl + ')');
					$('img.content-bg-img').hide();
				});
		var msg = $("#error").val();
		if (msg == "2") {
			var msg_div = $("#msg");
			var msg = $("#spanMsg");
			msg.html("<font color='red'><b>用户名或密码错误</b></font>");
			msg_div.show();
		}
		if (msg == "3") {
			var msg_div = $("#msg");
			var msg = $("#spanMsg");
			msg.html("<font color='red'><b>激活码不正确</b></font>");
			msg_div.show();
		}
		if (msg == "4") {
			var msg_div = $("#msg");
			var msg = $("#spanMsg");
			msg.html("<font color='green'><b>激活成功,请登录</b></font>");
			msg_div.show();
		}
		if (msg == "5") {
			var msg_div = $("#msg");
			var msg = $("#spanMsg");
			msg.html("<font color='red'><b>激活失败</b></font>");
			msg_div.show();
		}
		if (msg == "6") {
			var msg_div = $("#msg");
			var msg = $("#spanMsg");
			msg.html("<font color='red'><b>权限不足</b></font>");
			msg_div.show();
		}
		function checkName() {
			var name = $.trim($('#username').val());
			var msg_div = $("#msg");
			var msg = $("#spanMsg");
			if (name == "") {
				msg.html("<a class='blue-text'>用户名不能为空</a>");
				msg_div.show();
				return false;
			}
			msg.html("");
			return true;
		}
		function checkPass() {
			var password = $.trim($('#password').val());
			var msg_div = $("#msg");
			var msg = $("#spanMsg");
			if (password == "") {
				msg.html("<a class='blue-text'>密码不能为空</a>");
				msg_div.show();
				return false;
			}
			msg.html("");
			return true;
		}
		function toVaild() {
			if (checkName() == true && checkPass() == true) {
				return true;
			}
			return false;
		}
	</script>
</body>
</html>