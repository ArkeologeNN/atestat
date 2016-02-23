$(function() {

	// menu indicators fading
	$('.nav-item a').on('mouseenter', function() {
		var itemID = $(this).attr('data-ind');
		$("#"+itemID).fadeTo(100, 1);
	});

	$('.nav-item a').on('mouseleave', function() {
		var itemID = $(this).attr('data-ind');
		$("#" + itemID).fadeTo(50, 0);
	});
});