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
<title>客户管理</title>
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
			<div class="templatemo-top-nav-container">
				<div class="row">
					<div class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
							<li class="active"><h2>客户列表</h2></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="templatemo-content-container">
				<form action="${path}/customer/search" class="templatemo-login-form"
					method="post">
					<!-- 搜索栏 -->
					<div class="row form-group">
						<div class="col-lg-3 has-warning form-group">
							<input type="text" class="form-control" name="name"
								placeholder="客户姓名" />
						</div>
						<div class="row form-group">
							<div class="col-lg-3 col-md-3 form-group">
								<button type="submit" class="templatemo-blue-button">搜索</button>
							</div>
						</div>
					</div>
				</form>
				<div class="templatemo-content-widget no-padding">
					<div class="panel panel-default table-responsive">
						<table
							class="table table-striped table-bordered templatemo-user-table">
							<thead>
								<tr>
									<td><a href="javascript:void(0)"
										class="white-text templatemo-sort-by">编号</a></td>
									<td><a href="javascript:void(0)"
										class="white-text templatemo-sort-by">客户姓名 </a></td>
									<td><a href="javascript:void(0)"
										class="white-text templatemo-sort-by">客户来源 </a></td>
									<td><a href="javascript:void(0)"
										class="white-text templatemo-sort-by">客户类型</a></td>
									<td><a href="javascript:void(0)"
										class="white-text templatemo-sort-by">跟进人</a></td>
									<td><a href="javascript:void(0)"
										class="white-text templatemo-sort-by">注册资金 </a></td>
									<td><a href="javascript:void(0)"
										class="white-text templatemo-sort-by">联系方式 </a></td>
									<td>修改</td>
									<td>查看</td>
									<td>删除</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.recodeList }" var="customer"
									varStatus="status">
									<tr>
										<td>${(page.currentPage-1)*page.pageSize+status.index+1}</td>
										<td>${customer.name }</td>
										<td>${customer.source }</td>
										<td>${customer.type }</td>
										<td><c:if test="${customer.employee eq null}">
												暂无
											</c:if> <c:if test="${customer.employee ne null}">
												<a
													href="${path }/evaluate/addPage?customer_id=${customer.id}&employee_id=${customer.employee.id}&employeeName=${customer.employee.employeeName}"
													class="templatemo-link" title="查看/添加评语"><font
													color="blue">${customer.employee.employeeName}</font></a>
											</c:if></td>
										<td>${customer.capital }(万元)</td>
										<td>${customer.phone }</td>
										<td><a
											href="${path }/customer/updatePage?id=${customer.id}"
											class="templatemo-link">修改</a></td>
										<td><a href="${path }/customer/select?id=${customer.id}"
											class="templatemo-link">查看</a></td>
										<td><a href="${path }/customer/delete?id=${customer.id}"
											class="templatemo-link">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="templatemo-flex-row flex-content-row">
					<div class="col-1">
						<div class="panel panel-default margin-10">
							<div class="panel-body">
								<div class="form-group">
									<button type="button" onclick="addCustomer()"
										class="templatemo-blue-button">新增客户</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Second row ends -->
				<div class="pagination-wrap">
					<ul class="pagination">
						<c:if test="${search eq 1}">
							<c:forEach begin="1" end="${page.totalPage }" var="number">
								<c:choose>
									<c:when test="${number==page.currentPage }">
										<li class="active"><a href="#">${number } <span
												class="sr-only">(current)</span></a></li>
									</c:when>
									<c:otherwise>
										<li><a
											href="${path}/customer/search?currentPage=${number}&name=${name}">${number }</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${page.currentPage==page.totalPage}">
									<li><a href="#" title="Next"><span><i
												class="fa fa-play"></i></span> </a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${path}/customer/search?currentPage=${page.currentPage+1}&name=${name}"
										title="Next"><span><i class="fa fa-play"></i></span></a></li>
								</c:otherwise>
							</c:choose>
						</c:if>
						<c:if test="${search ne 1}">
							<c:forEach begin="1" end="${page.totalPage }" var="number">
								<c:choose>
									<c:when test="${number==page.currentPage }">
										<li class="active"><a href="#">${number } <span
												class="sr-only">(current)</span></a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${path}/customer/list?currentPage=${number}">${number }</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${page.currentPage==page.totalPage}">
									<li><a href="#" title="Next"><span><i
												class="fa fa-play"></i></span> </a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${path}/customer/list?currentPage=${page.currentPage+1}"
										title="Next"><span><i class="fa fa-play"></i></span></a></li>
								</c:otherwise>
							</c:choose>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script type="text/javascript" src="${path }/js/jquery-3.0.0.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="${path }/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
	<script>
		$(document).ready(
				function() {
					var imageUrl = $('img.content-bg-img').attr('src');
					$('.templatemo-content-img-bg').css('background-image',
							'url(' + imageUrl + ')');
					$('img.content-bg-img').hide();
				});
		function addCustomer() {
			window.location.href = "${path}/customer/addPage";
		}
	</script>
</body>
</html>