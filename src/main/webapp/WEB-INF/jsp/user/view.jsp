<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						<p id="view_username" class="form-control-static"></p>
					</div>
					<div class="form-group col-md-6">
						<label>昵称</label>
						<p id="view_nickname" class="form-control-static"></p>
					</div>
				</div>
				<div class="form-group">
					<label>描述</label>
					<p id="view_desc" class="form-control-static"></p>
				</div>
			</div>
			<div class="modal-footer">
				<div class="row">
					<div class="col-md-8">
						<label id="view_admin" class="pull-left"></label>
					</div>
					<div class="col-md-4">
						<button class="btn btn-default" type="button" data-dismiss="modal">取消</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>