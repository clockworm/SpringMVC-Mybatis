<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Page Not Found :(</title>
<style>
body {
	text-align: center;
}

h1 {
	font-size: 50px;
	text-align: center
}

span[frown] {
	transform: rotate(90deg);
	display: inline-block;
	color: #bbb;
}

body {
	font: 20px Constantia, 'Hoefler Text', "Adobe Caslon Pro", Baskerville,
		Georgia, Times, serif;
	color: #999;
	text-shadow: 2px 2px 2px rgba(200, 200, 200, 0.5);
}

::-moz-selection {
	background: #FF5E99;
	color: #fff;
}

::selection {
	background: #FF5E99;
	color: #fff;
}

article {
	display: block;
	text-align: left;
	width: 500px;
	margin: 0 auto;
}

a {
	color: rgb(36, 109, 56);
	text-decoration: none;
}

a:hover {
	color: rgb(96, 73, 141);
	text-shadow: 2px 2px 2px rgba(36, 109, 56, 0.5);
}
</style>
</head>
<body>
	<article>
	<h1>
		没有相应页面<span> :(</span>
	</h1>
	<div>
		<p>抱歉,您访问的页面不存在</p>
		<p>出现这样的结果:</p>
		<ul>
			<li>错误的地址</li>
			<li>过时的链接</li>
		</ul>
	</div>

	<script>
		var GOOG_FIXURL_LANG = (navigator.language || '').slice(0, 2), GOOG_FIXURL_SITE = location.host;
	</script> <script
		src="http://linkhelp.clients.google.com/tbproxy/lh/wm/fixurl.js"></script>
	</article>
</body>
</html>
