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
<title>查看客户</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<style type="text/css">
#follow_win {
	position: absolute;
	top: 50%;
	left: -1%;
	z-index: 99;
}
</style>

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
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<!-- 填写跟进 -->
					<div class="templatemo-content-widget white-bg col-1"
						id="follow_win" style="display: none;">
						<i class="fa fa-times"></i>
						<form action="${path }/follow/add" method="post">
							<input type="hidden" value="${customer.id }" name="id">
							<div class="table-responsive">
								<div class="col-lg-10 col-md-10 form-group">
									<label for="state">跟进状态</label> <input type="text"
										class="form-control" name="state">
								</div>
								<div class="col-lg-10 col-md-10 form-group">
									<label for="message">跟进内容</label> <input type="text"
										class="form-control" name="message">
								</div>
								<div class="col-lg-10 col-md-10 form-group">
									<label for="note">备注</label> <input type="text"
										class="form-control" name="note">
								</div>
								<div class="col-lg-10 col-md-10  form-group text-right">
									<button type="submit" class="templatemo-blue-button">确定</button>
								</div>
							</div>
						</form>
					</div>
					<h2 class="margin-bottom-10">查看客户信息</h2>
					<div class="row form-group">
						<div class="col-lg-6 col-md-6 form-group">
							<label class="control-label templatemo-block">客户性质</label> <select
								class="form-control" disabled="disabled" id="nature"
								name="nature">
								<option>个人</option>
								<option>企业</option>
							</select>
						</div>
						<div class="col-lg-6 col-md-6 form-group">
							<label class="control-label templatemo-block">客户类别</label> <select
								class="form-control" disabled="disabled" id="type" name="type">
								<option>普通客户</option>
								<option>VIP客户</option>
								<option>老客户</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-lg-6 col-md-6 form-group">
							<label class="control-label templatemo-block">客户来源</label> <select
								class="form-control" disabled="disabled" id="source"
								name="source">
								<option>客户挖掘</option>
								<option>客户上门</option>
								<option>内荐</option>
							</select>
						</div>
						<div class="col-lg-6 col-md-6 form-group">
							<label class="control-label templatemo-block">客户状态</label> <select
								class="form-control" disabled="disabled" id="state" name="state">
								<option>潜在客户</option>
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
								class="form-control" disabled="disabled" id="name"
								value="${customer.name }" name="name" placeholder="客户名称">
						</div>
						<div class="col-lg-6 col-md-6 form-group">
							<label for="employeePhone">单位</label> <input type="text"
								class="form-control" disabled="disabled"
								value="${customer.unitName }" id="unitName" maxlength="11"
								name="unitName" placeholder="单位名称">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-lg-6 col-md-6 form-group">
							<label for="employeeEmail">电话号码</label> <input type="text"
								class="form-control" disabled="disabled" maxlength="11"
								id="phone" value="${customer.phone }" name="phone"
								placeholder="联系方式">
						</div>
						<div class="col-lg-6 col-md-6 form-group">
							<label class="control-label templatemo-block">注册资金</label> <select
								class="form-control" id="capital" disabled="disabled"
								name="capital">
								<c:forEach begin="5" end="100" step="5" var="item">
									<c:choose>
										<c:when test="${customer.capital==item }">
											<option value="${item }" selected="selected">${item }万元(单位)</option>
										</c:when>
										<c:otherwise>
											<option value="${item }">${item }万元(单位)</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-lg-6 col-md-6 form-group">
							<label for="employeeEmail">地址</label> <input type="text"
								class="form-control" disabled="disabled" id="address"
								value="${customer.address }" name="address" placeholder="所在地址">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-lg-6 col-md-6 form-group">
							<h2>
								<label for="employeeEmail">跟进记录</label><input type="button"
									onclick="show_follow_win()" value="添加跟进" />
							</h2>
						</div>
						<div class="col-lg-6 col-md-6 form-group">
							<h2>
								<label for="employeeEmail">客户概况</label>
							</h2>
							<h3>跟进次数:${follows.size() }</h3>
							<h3>
								最后跟进时间:
								<fmt:formatDate value="${follows[0].createDate }"
									pattern="yyyy年MM月dd日HH点mm分ss秒"></fmt:formatDate>
							</h3>
						</div>
					</div>
					<!-- 跟进记录 -->
					<c:forEach items="${follows }" var="follow">
						<div class="row form-group">
							<div onclick="show_follow('${follow.id }')" align="left"
								style="border: solid 1px; width: 40%;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="createDate"> <fmt:formatDate
										value="${follow.createDate }" pattern="yyyy年MM月dd日HH点mm分ss秒"></fmt:formatDate>
								</label>
							</div>
							<div class="col-lg-6 col-md-6 form-group" id="${follow.id }"
								style="display: none;">
								<div class="templatemo-content-widget white-bg col-2">
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<td>※跟进内容:</td>
													<td>${follow.message }</td>
												</tr>
												<tr>
													<td>※跟进状态:</td>
													<td>${follow.state }</td>
												</tr>
												<tr>
													<td>※跟进备注:</td>
													<td>${follow.note }</td>
												</tr>
												<tr>
													<td><button type="button"
															onclick="delete_follow('${follow.id}')"
															class="templatemo-blue-button">删除</button></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- 跟进记录结束 -->
					<div class="form-group text-right">
						<button type="button" onclick="history.go(-1)"
							class="templatemo-blue-button">返回</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${path}/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript"
		src="${path}/js/bootstrap-filestyle.min.js"></script>
	<script type="text/javascript" src="${path}/js/templatemo-script.js"></script>
	<script type="text/javascript">
		document.getElementById("nature").value = "${customer.nature}";
		document.getElementById("type").value = "${customer.type}";
		document.getElementById("source").value = "${customer.source}";
		document.getElementById("state").value = "${customer.state}";
		document.getElementById("capital").value = "${customer.capital}";
		function show_follow(num) {
			var nam = document.getElementById(num).style.display;
			if (nam == 'block') {
				document.getElementById(num).style.display = 'none';
			} else {
				document.getElementById(num).style.display = 'block';
			}
		}
		function show_follow_win() {
			var nam = document.getElementById("follow_win").style.display;
			if (nam == 'block') {
				document.getElementById("follow_win").style.display = 'none';
			} else {
				document.getElementById("follow_win").style.display = 'block';
			}
		}
		function delete_follow(follow_id) {
			window.location.href = "${path}/follow/delete?id=" + follow_id
					+ "&customerid=${customer.id }";
		}
	</script>
</body>
</html>
