$(function(){
	$('#flickr').click(search_flickr);
	$('#clear').click(clear);
});

var timer;
var index;
var photos;
var page = 1;

function results(data)
{
	var sec = parseInt($('#duration').val());
	var msec = sec * 1000;
	index = 0;
	timer = setInterval(display_photo, msec);
	photos = data.photos.photo;
}

	function display_photo()
{
	photo = photos[index];
	var url = "url(http://farm"+ photo.farm +".static.flickr.com/"+ photo.server +"/"+ photo.id +"_"+ photo.secret +"_m.jpg)";
	var image = $('<div>');
	var width = $('#width').val();
	var height = $('#height').val();
	var duration = $('#duration').val();
	image.addClass('image');
	image.css({'width' : width, 'height' : height, 'background-image' : url})
	$('#images').prepend(image);
	index++;
	if (index==10){
		clearInterval(timer)
		index=0;
		page+=1;
		search_flickr();
	}

}

function clear()
{
 $('#images').empty();
}

function search_flickr()
{
	// this pulls out the search term info.
	var search = $('#search').val();
// returns an obj with an array of info from site and then runs the "result" func
	$.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=9dfcd7638ef15070fda78662a6e796c2&text=' + search + '&per_page=20&page=' + page + '&format=json&jsoncallback=?', results);
}
// the "result" from getJSON pass onto the variable data.


// Simon -function results(data)
// { // a for loop is created to loop out the info and used as an i variable for a counter
//   // _.each
//   var width = $('#width').val();
//   var height = $('#height').val();
//   for (var i = 0; i < data.photos.photo.length; i++)
//   { // var i sets the counter at 0, while i is loop for the length of the array, then each time increment
//   // for loop
//   // the var i is available inside
//   // this gives you the photo object
//   // var item is each photo obj in the loop
//   var item = data.photos.photo[i]
//   // now we need the photo object's .farm, .server, .id, .secret
//   // var image_src is variable that holds all the extracted concatented into an url
//   var image_src = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
//   // creates a new image tag that assigns to image_tag variable
//   var image_tag = $('<img>');
//   image_tag.css({'width' : width, 'height' : height});
//   // gives the attributes source to the new image_tag and sets it to the new img url
//   image_tag.attr('src', image_src);
//   // plugs in the image_tag into the image div id.
//   $('#images').append(image_tag);
//   }
// }
