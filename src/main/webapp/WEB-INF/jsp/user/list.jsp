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
<title>用户管理</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-switch.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/menu.css" rel="stylesheet">
</head>
<body>
	<%-- 引入页头文件 --%>
	<%@ include file="../brand.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<%-- 引入菜单文件 --%>
			<%@ include file="../menu.jsp"%>

			<div class="col-md-10 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">搜索条件</div>
					<div class="panel-body">
						<form id="search" method="post"
							action="<%=request.getContextPath()%>/user/list.action">
							<div class="row">
								<div class="form-group col-md-6">
									<label>用户名</label>
									<input type="text" class="form-control" name="usernamelike"
										value="${param.usernamelike }" />
								</div>
								<div class="form-group col-md-6">
									<label>创建时间</label>
									<input type="text" class="form-control" name="createTime"
										value="${param.createTime }" />
								</div>
							</div>
							<div class="pull-right">
								<button class="btn btn-primary" type="submit">搜索</button>
								<button class="btn btn-primary" type="button"
									onclick="clean(this)">重置</button>
							</div>
						</form>
					</div>
				</div>
				<div class="mt10f pb10">
					<button class="btn btn-primary" type="button" onclick="add()">添加</button>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">结果列表</div>
					<table class="table table-bordered table-hover table-condensed">
						<thead>
							<tr class="active">
								<th width="10%">编号</th>
								<th width="15%">用户名</th>
								<th width="10%">管理员</th>
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
											<td>${user.admin ? '是' : '否' }</td>
											<td>
												<fmt:formatDate value="${user.createTime }" type="both" />
											</td>
											<td>${user.desc }</td>
											<td>
												<img class="png18" alt="edit" src="../img/view.png"
													onclick="view('${user.username }','${user.desc }', ${user.admin })" />
												<img class="png18" alt="edit" src="../img/edit.png"
													onclick="edit('${user.id }','${user.username }','${user.desc }', ${user.admin })" />
												<a href="delete.action?id=${user.id }">
													<img class="png18" alt="edit" src="../img/delete.png" />
												</a>
											</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="6" align="center">没有数据</td>
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
		</div>
	</div>

	<%@ include file="add.jsp"%>
	<%@ include file="edit.jsp"%>
	<%@ include file="view.jsp"%>

	<script src="../js/jquery-1.11.3.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bootstrap-switch.js"></script>
	<script src="../js/main.js"></script>
	<script src="../js/user.js"></script>
</body>
</html>