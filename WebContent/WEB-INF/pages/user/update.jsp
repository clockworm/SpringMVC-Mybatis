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
<title>修改角色</title>
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
					<br />
					<form action="${path}/user/update" class="templatemo-login-form"
						method="post">
						<input type="hidden" name="id" value="${user.id }">
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group"></div>
							<div class="col-lg-6 col-md-6 form-group">
								<span style="color: red" id="msg"></span>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="username">用户名</label> <input type="text"
									class="form-control" id="username" value="${user.username }"
									disabled="disabled" name="username">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="email">角色权限</label>
								<div class="row form-group">
									<div class="col-lg-12 form-group">
										<c:forEach items="${roles }" var="role">
											<c:choose>
												<c:when test="${role.mark==1}">
													<div class="margin-right-15 templatemo-inline-block">
														<input type="checkbox" checked="checked" name="roleid" id="${role.id }"
															value="${role.id }"> <label for="${role.id }"
															class="font-weight-400"><span></span>${role.name }</label>
													</div>
												</c:when>
												<c:otherwise>
													<div class="margin-right-15 templatemo-inline-block">
														<input type="checkbox" name="roleid" id="${role.id }"
															value="${role.id }"> <label for="${role.id }"
															class="font-weight-400"><span></span>${role.name }</label>
													</div>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">确定</button>
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
</body>
</html>
