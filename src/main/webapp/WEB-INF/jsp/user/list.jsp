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
				<form method="post"
					action="<%=request.getContextPath()%>/user/list.action">
					<div class="row">
						<div class="form-group col-md-6">
							<label>用户名</label>
							<input type="text" class="form-control" name="username"
								value="${param.username }" />
						</div>
						<div class="form-group col-md-6">
							<label>昵称</label>
							<input type="text" class="form-control" name="nickname"
								value="${param.nickname }" />
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
			<button class="btn btn-primary" type="button" data-toggle="modal"
				data-target="#add">添加</button>
		</div>
		<div class="panel panel-primary">
			<div class="panel-heading">搜索结果</div>
			<table class="table  table-bordered">
				<thead>
					<tr class="active">
						<th width="10%">编号</th>
						<th width="15%">用户名</th>
						<th width="15%">昵称</th>
						<th width="15%">创建时间</th>
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
									<td>${user.nickname }</td>
									<td>
										<fmt:formatDate value="${user.createTime }" type="both" />
									</td>
									<td>${user.desc }</td>
									<td>
										<button class="btn btn-primary btn-xs" type="button"
											onclick="view('${user.username }','${user.nickname }','${user.desc }', ${user.admin })">查看</button>
										<button class="btn btn-primary btn-xs" type="button"
											onclick="edit('${user.id }','${user.username }','${user.nickname }','${user.desc }', ${user.admin })">编辑</button>
										<a href="delete.action?id=${user.id }">
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

	<div class="modal fade" id="add">
		<div class="modal-dialog">
			<form class="modal-content" method="post"
				action="<%=request.getContextPath()%>/user/add.action">
				<div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">添加用户</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="form-group col-md-6">
							<label>用户名</label>
							<input class="form-control" type="text" name="username" required />
						</div>
						<div class="form-group col-md-6">
							<label>昵称</label>
							<input class="form-control" type="text" name="nickname" required />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label>密码</label>
							<input class="form-control" type="password" name="password"
								required />
						</div>
						<div class="form-group col-md-6">
							<label>确认密码</label>
							<input class="form-control" type="password" name="confirm"
								required />
						</div>
					</div>
					<div class="form-group">
						<label>描述</label>
						<textarea class="form-control" rows="5" name="desc"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<div class="row">
						<div class="col-md-8">
							<div class="checkbox pull-left">
								<label>
									<input id="isAdmin" type="checkbox" name="admin" value="true" />
									管理员
								</label>
							</div>
						</div>
						<div class="col-md-4">
							<button class="btn btn-default" type="button"
								data-dismiss="modal">取消</button>
							<button class="btn btn-primary" type="submit">提交</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="modal fade" id="edit">
		<div class="modal-dialog">
			<form class="modal-content" method="post"
				action="<%=request.getContextPath()%>/user/edit.action">
				<input type="hidden" id="edit_id" name="id" />
				<div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">编辑用户</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="form-group col-md-6">
							<label>用户名</label>
							<p class="form-control-static" id="edit_username">admin</p>
						</div>
						<div class="form-group col-md-6">
							<label>昵称</label>
							<input class="form-control" type="text" id="edit_nickname"
								name="nickname" required />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label>密码</label>
							<input class="form-control" type="password" name="password" />
						</div>
						<div class="form-group col-md-6">
							<label>确认密码</label>
							<input class="form-control" type="password" name="confirm" />
						</div>
					</div>
					<div class="form-group">
						<label>描述</label>
						<textarea class="form-control" rows="5" id="edit_desc" name="desc"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<div class="row">
						<div class="col-md-8">
							<div class="checkbox pull-left">
								<label>
									<input type="checkbox" id="edit_admin" name="admin"
										value="true" />
									管理员
								</label>
							</div>
						</div>
						<div class="col-md-4">
							<button class="btn btn-default" type="button"
								data-dismiss="modal">取消</button>
							<button class="btn btn-primary" type="submit">提交</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="modal fade" id="view">
		<div class="modal-dialog">
			<form class="modal-content" method="post"
				action="<%=request.getContextPath()%>/user/edit.action">
				<div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">查看用户</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="form-group col-md-6">
							<label>用户名</label>
							<p id="view_username" class="form-control-static">admin</p>
						</div>
						<div class="form-group col-md-6">
							<label>昵称</label>
							<p id="view_nickname" class="form-control-static">admin</p>
						</div>
					</div>
					<div class="form-group">
						<label>描述</label>
						<p id="view_desc" class="form-control-static">this is admin</p>
					</div>
				</div>
				<div class="modal-footer">
					<div class="row">
						<div class="col-md-8">
							<label id="view_admin" class="pull-left">管理员</label>
						</div>
						<div class="col-md-4">
							<button class="btn btn-default" type="button"
								data-dismiss="modal">取消</button>
							<button class="btn btn-primary" type="button">提交</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script src="../js/jquery-1.11.3.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/user.js"></script>
</body>
</html>