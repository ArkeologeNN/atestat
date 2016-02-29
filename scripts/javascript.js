var imgElement = document.getElementById('gallery-image');

// vectorul de imagini
var imagesArray = ["images/slideshow/1.jpg", "images/slideshow/2.jpg", "images/slideshow/3.jpg"];
var i = 0;

// schimba imaginea
function slide(x) {
	i = i + x;

	if (i === imagesArray.length)
		i = 0;
	if (i === -1)
	    i = imagesArray.length - 1;

	imgElement.style.backgroundImage = "url(" + imagesArray[i] + ")";
}

var rightButton = document.getElementById("right-control");
rightButton.addEventListener("click", function() {slide(1);});

var leftButton = document.getElementById("left-control");
leftButton.addEventListener("click", function() {slide(-1);});