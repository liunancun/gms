function add() {
	$('#add_username').val('');
	$('#add_nickname').val('');
	$('#add_password').val('');
	$('#add_confirm').val('');
	$('#add_desc').val('');
	$('#add_admin').attr("checked", false);
	$('#add').modal();
}

function view(username, nickname, desc, admin) {
	$('#view_username').html(username);
	$('#view_nickname').html(nickname);
	$('#view_desc').html(desc);
	if (admin) {
		$('#view_admin').html('管理员');
	} else {
		$('#view_admin').html('');
	}
	$('#view').modal();
}

function edit(id, username, nickname, desc, admin) {
	$('#edit_id').val(id);
	$('#edit_username').html(username);
	$('#edit_nickname').val(nickname);
	$('#edit_desc').val(desc);
	$('#edit_admin').attr("checked", admin);
	$('#edit').modal();
}
