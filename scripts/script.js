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

	/* open gallery*/
	$('#gallery').on('click', function() {
		$('#gallery-dialog').fadeTo(400, 1);
	});

	/* close gallery */
	$('#close-control').on('click', function() {
		$('#gallery-dialog').fadeTo(200, 0, function() {
			$('#gallery-dialog').hide();
		});
	});
	 /* gallery buttons fading */
	$('.controls').on('mouseenter', function() {
		$(this).fadeTo(200, .8);
	});

	$('.controls').on('mouseleave', function() {
		$(this).fadeTo(200, .5);
	});
});

var imgElement = document.getElementById('gallery-image');
var imgWidth;
var imgHeight;

// verifiva dimensiunile imaginii urmatoare
function getSize(url){   
    	var img = new Image();
    	img.onload = function(){
        	imgWidth = this.width;
        	imgHeight = this.height;
    	};
    	img.src = url;
}

// vectorul de imagini
var imagesArray = ["images/slideshow/1.jpg", "images/slideshow/2.jpg", "images/slideshow/3.jpg"];
var i = 0;

// schimba imaginea
function slide(x) {
	i += x;

	if (i === imagesArray.length)
		i = 0;
	if (i === -1)
		i = 2;

	getSize(imagesArray[i]);

	if (imgWidth > imgElement.width || imgHeight > imgElement.height)
		imgElement.className += " contain-bg";
	else
		imgElement.className -= " contain-bg";

	imgElement.style.backgroundImage = "url(" + imagesArray[i] + ")";
}

var rightButton = document.getElementById("right-control");
rightButton.addEventListener("click", function() {slide(1);});

var leftButton = document.getElementById("left-control");
leftButton.addEventListener("click", function() {slide(-1);});