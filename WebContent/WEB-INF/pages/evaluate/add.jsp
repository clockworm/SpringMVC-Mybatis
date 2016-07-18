<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>添加评语</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="${path }/css/font-awesome.min.css" rel="stylesheet">
<link href="${path }/css/bootstrap.min.css" rel="stylesheet">
<link href="${path }/css/templatemo-style.css" rel="stylesheet">
</head>
<body>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<div class="templatemo-site-header">
				<div class="square"></div>
				<h1>客户关系管理</h1>
			</div>
			<div class="profile-photo-container">
				<div class="profile-photo-overlay"></div>
			</div>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<div class="templatemo-left-nav">
				<ul>
					<li><a href="index.jsp"><i class="fa fa-home fa-fw"></i>首页</a></li>
					<li><a href="${path }/employee/list"><i
							class="fa fa-bar-chart fa-fw"></i>员工管理</a></li>
					<li><a href="${path }/customer/list?currentPage=1"
						class="active"><i class="fa fa-database fa-fw"></i>客户管理</a></li>
					<li><a href="${path }/customer/count"><i
							class="fa fa-database fa-fw"></i>数据统计</a></li>
					<li><a href="${path }/user/list?currentPage=1"><i
							class="fa fa-users fa-fw"></i>用户管理</a></li>
					<li><a href="${path }/role/list"><i
							class="fa fa-sliders fa-fw"></i>角色管理</a></li>
					<li><a href="${path}/user/quit"><i
							class="fa fa-eject fa-fw"></i>切换用户</a></li>
				</ul>
			</div>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<c:if test="${evaluate.desc eq null }">
						<h2 class="margin-bottom-10">添加评语</h2>
						<form action="${path }/evaluate/insert" method="post">
					</c:if>
					<c:if test="${evaluate.desc ne null }">
						<h2 class="margin-bottom-10">修改评语</h2>
						<form action="${path }/evaluate/update" method="post">
					</c:if>
					<input type="hidden" name="employee_id"
						value="${evaluate.employee_id }"> <input type="hidden"
						name="customer_id" value="${evaluate.customer_id }">
					<div class="row form-group">
						<div class="col-lg-6 col-md-6 form-group">
							<label for="employeeName">员工名字</label> <input type="text"
								class="form-control" value="${employeeName}" readonly="readonly">
						</div>
						<div class="col-lg-6 col-md-6 form-group">
							<label for="employeePhone">评语</label> <input type="text"
								class="form-control" maxlength="11" name="desc"
								value="${evaluate.desc }" placeholder="评语内容">
						</div>
					</div>
					${msg }
					<div class="form-group text-right">
						<button type="submit" class="templatemo-blue-button">确定</button>
						<button type="button" onclick="history.go(-1)"
							class="templatemo-blue-button">返回</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${path}/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript"
		src="${path}/js/bootstrap-filestyle.min.js"></script>
	<script type="text/javascript" src="${path}/js/templatemo-script.js"></script>
</body>
</html>
