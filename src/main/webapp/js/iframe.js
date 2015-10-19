function reset() {
	$("iframe").load(function() {
		var height = $(this).contents().height();
		$(this).height(height);
	});
}

$(reset);