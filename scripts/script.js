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

	var aboutDialog = true;
	$('#about').on('click', function() {
		if (aboutDialog === true) {
			$('#about-dialog').fadeTo(200, 1);
			aboutDialog = false;
		} else {
			$('#about-dialog').fadeTo(200, 0);
			aboutDialog = true;
		}
	});

	$('#gallery').on('click', function() {
		$('#gallery-dialog').fadeTo(400, 1);
	});

	$('#close-control').on('click', function() {
		$('#gallery-dialog').fadeTo(200, 0, function() {
			$('#gallery-dialog').hide();
		});
	});

	$('.controls').on('mouseenter', function() {
		$(this).fadeTo(200, .7);
	});

	$('.controls').on('mouseleave', function() {
		$(this).fadeTo(200, .3);
	});
});