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