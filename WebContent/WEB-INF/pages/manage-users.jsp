<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>客户关系管理</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="${path}/css/font-awesome.min.css" rel="stylesheet">
<link href="${path}/css/bootstrap.min.css " rel="stylesheet">
<link href="${path}/css/templatemo-style.css " rel="stylesheet">

</head>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
			<div class="square"></div>
			<h1>客户关系系统</h1>
			</header>
			<div class="profile-photo-container">
				<div class="profile-photo-overlay"></div>
			</div>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
			<ul>
				<li><a href="#" class="active"><i class="fa fa-home fa-fw"></i>用户管理</a></li>
				<li><a href="data-visualization.jsp"><i
						class="fa fa-bar-chart fa-fw"></i>图表</a></li>
				<li><a href="data-visualization.jsp"><i
						class="fa fa-database fa-fw"></i>数据分析</a></li>
				<li><a href="${path }/user/list"><i class="fa fa-users fa-fw"></i>客户管理</a></li>
				<li><a href="preferences.jsp"><i
						class="fa fa-sliders fa-fw"></i>增加客户</a></li>
				<li><a href="${path}/user/quit"><i class="fa fa-eject fa-fw"></i>切换用户</a></li>
			</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
					<ul class="text-uppercase">
						<li><a href="" class="active">首页</a></li>
					</ul>
					</nav>
				</div>
			</div>
			<div class="templatemo-content-container">
				<div class="templatemo-flex-row flex-content-row">
					<div class="templatemo-content-widget white-bg col-2"
						style="display: none;">
						<i class="fa fa-times"></i>
						<div class="square"></div>
						<h2 class="templatemo-inline-block">Visual Admin Template</h2>
						<hr>
						<p>
							Works on all major browsers. IE 10+. Visual Admin is <a
								href="http://www.cssmoban.com/tag/admin" target="_parent">free
								responsive admin template</a> for everyone. Feel free to use this
							template for your backend user interfaces. Please tell your
							friends about <a href="http://www.templatemo.com"
								target="_parent">templatemo.com</a> website. You may <a
								href="http://www.cssmoban.com/contact" target="_parent">contact
								us</a> if you have anything to say.
						</p>
						<p>Nunc placerat purus eu tincidunt consequat. Lorem ipsum
							dolor sit amet, consectetur adipiscing elit. Phasellus dapibus
							nulla quis risus auctor, non placerat augue consectetur. Fusce mi
							lacus, semper sit amet mattis eu.</p>
					</div>
					<div class="templatemo-content-widget white-bg col-1 text-center"
						style="display: none;">
						<i class="fa fa-times"></i>
						<h2 class="text-uppercase">Maris</h2>
						<h3 class="text-uppercase margin-bottom-10">Design Project</h3>
						<img src="images/bicycle.jpg" alt="Bicycle"
							class="img-circle img-thumbnail">
					</div>
					<div class="templatemo-content-widget white-bg col-1"
						style="display: none;">
						<i class="fa fa-times"></i>
						<h2 class="text-uppercase">Dictum</h2>
						<h3 class="text-uppercase">Sedvel Erat Non</h3>
						<hr>
						<div class="progress">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%;"></div>
						</div>
						<div class="progress">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 50%;"></div>
						</div>
						<div class="progress">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%;"></div>
						</div>
					</div>
				</div>
				<div class="col-1">
					<div
						class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
						<i class="fa fa-times"></i>
						<div class="panel-heading templatemo-position-relative">
							<h2 class="text-uppercase">客户列表</h2>
						</div>
						<div class="table-responsive">
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<td>No.</td>
										<td>First Name</td>
										<td>Last Name</td>
										<td>Username</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1.</td>
										<td>John</td>
										<td>Smith</td>
										<td>@jS</td>
									</tr>
									<tr>
										<td>2.</td>
										<td>Bill</td>
										<td>Jones</td>
										<td>@bJ</td>
									</tr>
									<tr>
										<td>3.</td>
										<td>Mary</td>
										<td>James</td>
										<td>@mJ</td>
									</tr>
									<tr>
										<td>4.</td>
										<td>Steve</td>
										<td>Bride</td>
										<td>@sB</td>
									</tr>
									<tr>
										<td>5.</td>
										<td>Paul</td>
										<td>Richard</td>
										<td>@pR</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- Second row ends -->
			<div class="copyrights" style="display: none;">
				Collect from <a href="http://www.cssmoban.com/">ææºç½ç«æ¨¡æ¿</a>
			</div>
			<div
				class="templatemo-flex-row flex-content-row templatemo-overflow-hidden"
				style="display: none;">
				<!-- overflow hidden for iPad mini landscape view-->
				<div class="col-1 templatemo-overflow-hidden">
					<div
						class="templatemo-content-widget white-bg templatemo-overflow-hidden">
						<i class="fa fa-times"></i>
						<div class="templatemo-flex-row flex-content-row">
							<div class="col-1 col-lg-6 col-md-12">
								<h2 class="text-center">
									Modular<span class="badge">new</span>
								</h2>
								<div id="pie_chart_div" class="templatemo-chart"></div>
								<!-- Pie chart div -->
							</div>
							<div class="col-1 col-lg-6 col-md-12">
								<h2 class="text-center">
									Interactive<span class="badge">new</span>
								</h2>
								<div id="bar_chart_div" class="templatemo-chart"></div>
								<!-- Bar chart div -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="text-right">
			<p style="display: none;">
				Copyright &copy; 2084 Company Name | More Templates <a
					href="http://www.cssmoban.com/" target="_blank"
					title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a
					href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿"
					target="_blank">ç½é¡µæ¨¡æ¿</a>
			</p>
			</footer>
		</div>
	</div>

	<script src=/js/jquery-1.11.2.min.js"></script>
	<script src=/js/jquery-migrate-1.2.1.min.js"></script>
	<script src=/https://www.google.com/jsapi"></script>
	<script>
		google.load('visualization', '1.0', {
			'packages' : [ 'corechart' ]
		});

		google.setOnLoadCallback(drawChart);

		function drawChart() {

			// Create the data table.
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Topping');
			data.addColumn('number', 'Slices');
			data.addRows([ [ 'Mushrooms', 3 ], [ 'Onions', 1 ],
					[ 'Olives', 1 ], [ 'Zucchini', 1 ], [ 'Pepperoni', 2 ] ]);

			// Set chart options
			var options = {
				'title' : 'How Much Pizza I Ate Last Night'
			};

			// Instantiate and draw our chart, passing in some options.
			var pieChart = new google.visualization.PieChart(document
					.getElementById('pie_chart_div'));
			pieChart.draw(data, options);

			var barChart = new google.visualization.BarChart(document
					.getElementById('bar_chart_div'));
			barChart.draw(data, options);
		}

		$(document).ready(function() {
			if ($.browser.mozilla) {
				//refresh page on browser resize
				// http://www.sitepoint.com/jquery-refresh-page-browser-resize/
				$(window).bind('resize', function(e) {
					if (window.RT)
						clearTimeout(window.RT);
					window.RT = setTimeout(function() {
						this.location.reload(false); /* false to get page from cache */
					}, 200);
				});
			} else {
				$(window).resize(function() {
					drawChart();
				});
			}
		});
	</script>
	<script type="text/javascript" src="${path}/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
</body>
</html>