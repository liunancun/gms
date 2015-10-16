<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑用户</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand"
					href="<%=request.getContextPath()%>/main.action">管理系统</a>
			</div>
			<ul class="nav navbar-nav">
				<li>
					<a href="<%=request.getContextPath()%>/main.action">主页</a>
				</li>
				<li class="active">
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
		<div class="panel panel-primary">
			<div class="panel-heading">编辑用户</div>
			<div class="panel-body">
				<form method="post"
					action="<%=request.getContextPath()%>/user/edit.action">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label>用户名</label>
						<input class="form-control" type="text" value="${user.username }"
							readonly="readonly" />
					</div>
					<div class="form-group">
						<label>密码</label>
						<input class="form-control" type="password" name="password" />
					</div>
					<div class="form-group">
						<label>确认密码</label>
						<input class="form-control" type="password" name="confirm" />
					</div>
					<div class="form-group">
						<label>描述</label>
						<textarea class="form-control" rows="5" name="desc">${user.desc }</textarea>
					</div>
					<div class="pull-right">
						<button class="btn btn-primary" type="submit">提交</button>
						<a href="<%=request.getContextPath()%>/user/list.action">
							<button class="btn btn-primary" type="button">取消</button>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="../js/jquery-1.11.3.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>