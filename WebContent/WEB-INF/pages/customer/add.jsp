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
<title>新增客户</title>
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
					<li><a href="${path }/employee/list?currentPage=1"><i
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
			<form action="${path }/customer/addCustomer"
				class="templatemo-login-form" method="post">
				<div class="templatemo-content-container">
					<div class="templatemo-content-widget white-bg">
						<h2 class="margin-bottom-10">填写客户信息</h2>
						<p>请作实填写相关真实信息.</p>
						<div class="row form-group">
							<div class="col-lg-4 col-md-4 form-group">
								<label class="control-label templatemo-block">客户性质</label> <select
									class="form-control" id="nature" name="nature">
									<option value="个人">个人</option>
									<option>企业</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-4 col-md-4 form-group">
								<label class="control-label templatemo-block">客户类别</label> <select
									class="form-control" id="type" name="type">
									<option value="普通客户">普通客户</option>
									<option value="VIP客户">VIP客户</option>
									<option>老客户</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-4 col-md-4 form-group">
								<label class="control-label templatemo-block">客户来源</label> <select
									class="form-control" id="source" name="source">
									<option value="客户挖掘">客户挖掘</option>
									<option>客户上门</option>
									<option>内荐</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-4 col-md-4 form-group">
								<label class="control-label templatemo-block">客户状态</label> <select
									class="form-control" id="state" name="state">
									<option value="潜在客户">潜在客户</option>
									<option>意向客户</option>
									<option>成功客户</option>
									<option>失败客户</option>
									<option>流失客户</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeName">客户名字</label> <input type="text"
									class="form-control" id="name" name="name" placeholder="客户名称">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeePhone">单位</label> <input type="text"
									class="form-control" id="unitName" maxlength="11"
									name="unitName" placeholder="单位名称">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeEmail">电话号码</label> <input type="text"
									class="form-control" id="phone" name="phone" placeholder="联系方式">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">注册资金</label> <select
									class="form-control" id="capital" name="capital">
									<c:forEach begin="5" end="100" step="5" var="item">
										<option value="${item }">${item }万元(单位)</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeEmail">地址</label> <input type="text"
									class="form-control" id="address" name="address"
									placeholder="所在地址">
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">提交</button>
							<button type="reset" class="templatemo-white-button">重置</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="${path}/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript"
		src="${path}/js/bootstrap-filestyle.min.js"></script>
	<script type="text/javascript" src="${path}/js/templatemo-script.js"></script>
</body>
</html>
