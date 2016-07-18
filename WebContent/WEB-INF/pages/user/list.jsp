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
					<li><a href="${path }/employee/list"><i
							class="fa fa-bar-chart fa-fw"></i>员工管理</a></li>
					<li><a href="${path }/customer/list?currentPage=1"><i
							class="fa fa-database fa-fw"></i>客户管理</a></li>
					<li><a href="${path }/customer/count"><i
							class="fa fa-database fa-fw"></i>数据统计</a></li>
					<li><a href="#" class="active"><i
							class="fa fa-users fa-fw"></i>用户管理</a></li>
					<li><a href="${path}/role/list"><i
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
							<li class="active"><h2>用户列表</h2></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget no-padding">
					<div class="panel panel-default table-responsive">
						<table
							class="table table-striped table-bordered templatemo-user-table">
							<thead>
								<tr>
									<td><c:choose>
											<c:when test="${sort==0 }">
												<a
													href="${path}/user/list?sort=1&currentPage=${page.currentPage}"
													id="sort" class="white-text templatemo-sort-by">#编号 <span
													class="caret"></span>
												</a>
											</c:when>
											<c:otherwise>
												<a
													href="${path}/user/list?sort=0&currentPage=${page.currentPage}"
													id="sort" class="white-text templatemo-sort-by">#编号 <span
													class="caret"></span>
												</a>
											</c:otherwise>
										</c:choose></td>
									<td><a href="#" class="white-text templatemo-sort-by">姓名
									</a></td>
									<td><a href="#" class="white-text templatemo-sort-by">电话号码
									</a></td>
									<td><a href="#" class="white-text templatemo-sort-by">邮箱
									</a></td>
									<td><a href="#" class="white-text templatemo-sort-by">所属角色
									</a></td>
									<td><a href="#" class="white-text templatemo-sort-by">注册时间
									</a></td>
									<td>修改角色</td>
									<td>查看</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.recodeList }" var="user"
									varStatus="status">
									<tr>
										<c:if test="${sort==0}">
											<td>${(page.currentPage-1)*page.pageSize+status.index+1}</td>
										</c:if>
										<c:if test="${sort==1}">
											<td>${page.count - (page.currentPage-1)*page.pageSize - status.index}</td>
										</c:if>
										<td>${user.username }</td>
										<td>${user.phone eq null ? '暂无' : user.phone }</td>
										<td>${user.email }</td>
										<td><c:forEach items="${user.roles }" var="role">
											${role.name } &nbsp;
										</c:forEach></td>
										<td><fmt:formatDate value="${user.createTime }"
												pattern="yyyy年MM月dd日HH点mm分ss秒" /></td>
										<td><a href="${path }/user/updatePage?id=${user.id}"
											class="templatemo-edit-btn">修改</a></td>
										<td><a href="" class="templatemo-link">查看</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<!-- Second row ends -->
				<div class="pagination-wrap">
					<ul class="pagination">
						<c:forEach begin="1" end="${page.totalPage }" var="number">
							<c:choose>
								<c:when test="${number==page.currentPage }">
									<li class="active"><a href="#">${number } <span
											class="sr-only">(current)</span></a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${path}/user/list?sort=${sort}&currentPage=${number}">${number }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${page.currentPage==page.totalPage}">
								<li><a href="#" aria-label="Next"><span
										aria-hidden="true"><i class="fa fa-play"></i></span> </a></li>
							</c:when>
							<c:otherwise>
								<li><a
									href="${path}/user/list?sort=${sort}&currentPage=${page.currentPage+1}"
									aria-label="Next"><span aria-hidden="true"><i
											class="fa fa-play"></i></span> </a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script type="text/javascript" src="${path }/js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="${path }/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
	<script>
		$(document).ready(
				function() {
					// Content widget with background image
					var imageUrl = $('img.content-bg-img').attr('src');
					$('.templatemo-content-img-bg').css('background-image',
							'url(' + imageUrl + ')');
					$('img.content-bg-img').hide();
				});
	</script>
</body>
</html>