function add() {
	$('#add_username').val('');
	$('#add_password').val('');
	$('#add_confirm').val('');
	$('#add_desc').val('');
	$('#add_admin').bootstrapSwitch('state', false);
	$('#add').modal();
}

function view(username, desc, admin) {
	$('#view_username').val(username);
	$('#view_desc').val(desc);
	$('#view_admin').bootstrapSwitch('state', admin);
	$('#view').modal();
}

function edit(id, username, desc, admin) {
	$('#edit_id').val(id);
	$('#edit_username').val(username);
	$('#edit_desc').val(desc);
	$('#edit_admin').bootstrapSwitch('state', admin);
	$('#edit').modal();
}

$(function(argument) {
	$('[type="checkbox"]').bootstrapSwitch();
});