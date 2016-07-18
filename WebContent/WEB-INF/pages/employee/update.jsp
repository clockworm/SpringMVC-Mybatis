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
<title>修改员工信息</title>
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
			</div>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">${employee.employeeName}员工信息</h2>
					<p>请作实修改相关的信息.</p>
					<form action="${path }/employee/update"
						class="templatemo-login-form" method="post">
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeName">员工名字</label> <input type="text"
									class="form-control" id="employeeName"
									value="${employee.employeeName}" name="employeeName"
									placeholder="Name">
							</div>
							<input type="hidden" name="id" value="${employee.id}">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeePhone">电话号码</label> <input type="text"
									class="form-control" maxlength="11"
									value="${employee.employeePhone}" id="employeePhone"
									name="employeePhone" placeholder="Phone">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeAddress">家庭地址</label> <input type="text"
									class="form-control" id="employeeAddress"
									name="employeeAddress" value="${employee.employeeAddress}"
									placeholder="Adress">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeEmail">邮箱</label> <input type="text"
									class="form-control" id="employeeEmail"
									value="${employee.employeeEmail}" name="employeeEmail"
									placeholder="xx@xx.com">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 form-group">
								<div class="margin-right-15 templatemo-inline-block">
									<c:choose>
										<c:when test="${employee.employeeSex=='男'}">
											<input type="radio" name="employeeSex" id="r4"
												checked="checked" value="男">
											<label for="r4" class="font-weight-400"><span></span>男</label>
										</c:when>
										<c:otherwise>
											<input type="radio" name="employeeSex" id="r4" value="男">
											<label for="r4" class="font-weight-400"><span></span>男</label>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="margin-right-15 templatemo-inline-block">
									<c:choose>
										<c:when test="${employee.employeeSex=='女'}">
											<input type="radio" name="employeeSex" id="r5"
												checked="checked" value="女">
											<label for="r5" class="font-weight-400"><span></span>女</label>
										</c:when>
										<c:otherwise>
											<input type="radio" name="employeeSex" id="r5" value="女">
											<label for="r5" class="font-weight-400"><span></span>女</label>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">年龄</label> <select
									class="form-control" name="employeeAge">
									<c:forEach begin="18" end="50" var="age">
										<c:if test="${employee.employeeAge==age}">
											<option value="${age }" selected="selected">${age }</option>
										</c:if>
										<option value="${age }">${age }</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeSchool">毕业院校</label> <input type="text"
									class="form-control" id="employeeSchool"
									value="${employee.employeeSchool}" name="employeeSchool"
									placeholder="SchoolName">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeCode">员工编号</label> <input type="text"
									class="form-control" value="${employee.employeeCode}"
									id="employeeCode" name="employeeCode" placeholder="Code">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">学历</label> <select
									class="form-control" name="employeeEducatio">
									<c:choose>
										<c:when test="${employee.employeeEducatio=='高中'}">
											<option value="高中" selected="selected">高中</option>
										</c:when>
										<c:otherwise>
											<option value="高中">高中</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeeEducatio=='大专'}">
											<option value="大专" selected="selected">大专</option>
										</c:when>
										<c:otherwise>
											<option value="大专">大专</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeeEducatio=='本科'}">
											<option value="本科" selected="selected">本科</option>
										</c:when>
										<c:otherwise>
											<option value="本科">本科</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeeEducatio=='博士'}">
											<option value="博士" selected="selected">博士</option>
										</c:when>
										<c:otherwise>
											<option value="博士">博士</option>
										</c:otherwise>
									</c:choose>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="employeeCard">身份证号码</label> <input type="text"
									class="form-control highlight" id="employeeCard"
									name="employeeCard" value="${employee.employeeCard}"
									placeholder="居民身份证" maxlength="18">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">职位安排</label> <select
									multiple class="templatemo-multi-select form-control"
									name="employeePosition" style="overflow-y: scroll;">
									<c:choose>
										<c:when test="${employee.employeePosition=='前台接待'}">
											<option value="前台接待" selected="selected">前台接待</option>
										</c:when>
										<c:otherwise>
											<option value="前台接待">前台接待</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeePosition=='业务人员'}">
											<option value="业务人员" selected="selected">业务人员</option>
										</c:when>
										<c:otherwise>
											<option value="业务人员">业务人员</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeePosition=='程序开发'}">
											<option value="程序开发" selected="selected">程序开发</option>
										</c:when>
										<c:otherwise>
											<option value="程序开发">程序开发</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeePosition=='Web前端'}">
											<option value="Web前端" selected="selected">Web前端</option>
										</c:when>
										<c:otherwise>
											<option value="Web前端">Web前端</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeePosition=='需求分析'}">
											<option value="需求分析" selected="selected">需求分析</option>
										</c:when>
										<c:otherwise>
											<option value="需求分析">需求分析</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeePosition=='架构师'}">
											<option value="架构师" selected="selected">架构师</option>
										</c:when>
										<c:otherwise>
											<option value="架构师">架构师</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeePosition=='数据库DBA'}">
											<option value="数据库DBA" selected="selected">数据库DBA</option>
										</c:when>
										<c:otherwise>
											<option value="数据库DBA">数据库DBA</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${employee.employeePosition=='项目经理'}">
											<option value="项目经理" selected="selected">项目经理</option>
										</c:when>
										<c:otherwise>
											<option value="项目经理">项目经理</option>
										</c:otherwise>
									</c:choose>
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
