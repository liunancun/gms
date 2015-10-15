<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>管理系统</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 50px;
}

.carousel .item img {
	width: 100%;
	height: 500px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand"
					href="<%=request.getContextPath()%>/main.action">管理系统</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="<%=request.getContextPath()%>/main.action">主页</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/user/list.action">用户管理</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/data/list.action">数据管理</a>
				</li>
			</ul>
			<form class="navbar-form navbar-right"
				action="<%=request.getContextPath()%>/logout.action">
				<button type="submit" class="btn btn-danger btn-sm">登出</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<div id="ad" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#ad" data-slide-to="0" class="active"></li>
				<li data-target="#ad" data-slide-to="1"></li>
				<li data-target="#ad" data-slide-to="2"></li>
				<li data-target="#ad" data-slide-to="3"></li>
				<li data-target="#ad" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="img/1.jpg" alt="1">
				</div>
				<div class="item">
					<img src="img/2.jpg" alt="2">
				</div>
				<div class="item">
					<img src="img/3.jpg" alt="3">
				</div>
				<div class="item">
					<img src="img/4.jpg" alt="4">
				</div>
				<div class="item">
					<img src="img/5.jpg" alt="5">
				</div>
			</div>
			<a class="left carousel-control" href="#ad" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a>
			<a class="right carousel-control" href="#ad" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</a>
		</div>
	</div>

	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>