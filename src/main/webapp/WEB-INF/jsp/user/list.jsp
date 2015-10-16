<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户列表</title>
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
			<div class="panel-heading">搜索条件</div>
			<div class="panel-body">
				<form class="form-horizontal" method="post"
					action="<%=request.getContextPath()%>/user/list.action">
					<div class="form-group">
						<label class="col-md-1 control-label">用户名</label>
						<div class="col-md-11">
							<input type="text" class="form-control" name="username"
								value="${param.username }" placeholder="请输入用户名">
						</div>
					</div>
					<div class="pull-right">
						<button class="btn btn-primary" type="submit">搜索</button>
						<button class="btn btn-primary" type="reset">重置</button>
					</div>
				</form>
			</div>
		</div>
		<div class="mt10f pb10">
			<a href="initAdd.action">
				<button class="btn btn-primary" type="button">添加</button>
			</a>
			<a href="initAdd.action">
				<button class="btn btn-primary" type="button">导入</button>
			</a>
		</div>
		<div class="panel panel-primary">
			<div class="panel-heading">搜索结果</div>
			<table class="table  table-bordered">
				<thead>
					<tr class="active">
						<th width="15%">编号</th>
						<th width="20%">用户名</th>
						<th width="20%">创建时间</th>
						<th>描述</th>
						<th width="15%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${not empty users }">
							<c:forEach items="${users }" var="user">
								<tr>
									<td>${user.id }</td>
									<td>${user.username }</td>
									<td>
										<fmt:formatDate value="${user.createTime }" type="both" />
									</td>
									<td>${user.desc }</td>
									<td>
										<a href="initEdit.action">
											<button class="btn btn-primary btn-xs" type="button">编辑</button>
										</a>
										<a href="delete.action">
											<button class="btn btn-primary btn-xs" type="button">删除</button>
										</a>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4" align="center">没有数据</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		<nav class="mt20f pull-right">
			<ul class="pagination">
				<li>
					<span>100条记录1/10页</span>
				</li>
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">上一页</a>
				</li>
				<li>
					<a href="#">下一页</a>
				</li>
				<li>
					<a href="#">尾页</a>
				</li>
			</ul>
		</nav>
	</div>

	<script src="../js/jquery-1.11.3.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>