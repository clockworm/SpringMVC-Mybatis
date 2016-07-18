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
<title>增加员工</title>
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
				<li><a href="${path }/employee/list" class="active"><i
						class="fa fa-bar-chart fa-fw"></i>员工管理</a></li>
				<li><a href="${path }/customer/list?currentPage=1"><i
						class="fa fa-database fa-fw"></i>客户管理</a></li>
				<li><a href="${path }/customer/count"><i
						class="fa fa-database fa-fw"></i>数据统计</a></li>
				<li><a href="${path }/user/list?currentPage=1"><i
						class="fa fa-users fa-fw"></i>用户管理</a></li>
				<li><a href="${path }/role/list"><i
						class="fa fa-sliders fa-fw"></i>角色管理</a></li>
				<li><a href="${path}/user/quit"><i
						class="fa fa-eject fa-fw"></i>切换用户</a></li>
			</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">填写员工信息</h2>
					<p>请作实填写相关真实信息.</p>
					<form action="${path }/employee/insert"
						class="templatemo-login-form" method="post">
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeName">员工名字</label> <input type="text"
									class="form-control" id="employeeName" name="employeeName"
									placeholder="Name">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeePhone">电话号码</label> <input type="text"
									class="form-control" maxlength="11" id="employeePhone"
									name="employeePhone" placeholder="Phone">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeAddress">家庭地址</label> <input type="text"
									class="form-control" id="employeeAddress"
									name="employeeAddress" placeholder="Adress">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeEmail">邮箱</label> <input type="text"
									class="form-control" id="employeeEmail" name="employeeEmail"
									placeholder="xx@xx.com">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 form-group">
								<div class="margin-right-15 templatemo-inline-block">
									<input type="radio" name="employeeSex" id="r4" value="男"
										checked> <label for="r4" class="font-weight-400"><span></span>男</label>
								</div>
								<div class="margin-right-15 templatemo-inline-block">
									<input type="radio" name="employeeSex" id="r5" value="女">
									<label for="r5" class="font-weight-400"><span></span>女</label>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeSchool">毕业院校</label> <input type="text"
									class="form-control" id="employeeSchool" name="employeeSchool"
									placeholder="SchoolName">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">年龄</label> <select
									class="form-control" name="employeeAge">
									<c:forEach begin="18" end="50" var="age">
										<option value="${age }">${age }</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeCard">身份证号码</label> <input type="text"
									class="form-control highlight" id="employeeCard"
									name="employeeCard" placeholder="居民身份证" maxlength="18">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeCode">员工编号</label> <input type="text"
									class="form-control" id="employeeCode" name="employeeCode"
									placeholder="Code">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">学历</label> <select
									class="form-control" name="employeeEducatio">
									<option value="高中">高中</option>
									<option value="大专">大专</option>
									<option value="本科">本科</option>
									<option value="博士">博士</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">职位安排</label> <select
									multiple class="templatemo-multi-select form-control"
									name="employeePosition" style="overflow-y: scroll;">
									<option value="前台接待">前台接待</option>
									<option value="业务人员">业务人员</option>
									<option value="程序开发">程序开发</option>
									<option value="Web前端">Web前端</option>
									<option value="需求分析">需求分析</option>
									<option value="架构师">架构师</option>
									<option value="数据库DBA">数据库DBA</option>
									<option value="项目经理">项目经理</option>
								</select>
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">提交</button>
							<button type="reset" class="templatemo-white-button">重置</button>
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
