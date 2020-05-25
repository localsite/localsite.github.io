/**
 * Geolocation Test on iPhone 3.0 with Twitter API
 * @author tomomi
 */

if (navigator.geolocation) {  
	navigator.geolocation.getCurrentPosition(function(position) {  
		callbackGeoSearch(position.coords.latitude, position.coords.longitude);  
	});
} else {
    //This is not as accurate at the lat lon.  Returned Greenville, SC when in Anderson, SC.
    loadFromIP();
}

function loadFromIP() {
    var ip = "";
    jQuery.get('ip.aspx', function (data) {
        ip = data + "";
        //alert(ip);

        // ip for browsers not supporting lat & lon
        // http://dev.twitter.com/doc/get/geo/search

        //var geocode = "&rpp=100&ip=" + ip;
        //var fullUrl = url + geocode;

        var fullUrl = "http://api.twitter.com/1/geo/search.json?callback=getPlaces&max_results=100&granularity=poi&ip=" + ip;

        var head = document.getElementsByTagName('head');
        var script = document.createElement('script');

        script.src = fullUrl;
        head[0].appendChild(script);

        //alert(fullUrl);
    });
    //alert("ip " + ip);
}

function callbackGeoSearch(lat, lon) {

	//print(lat,lon);
    //var geocode = "&rpp=100&geocode=" + lat + "%2C" + lon + "%2C5mi"; 
	//var fullUrl = url + geocode; 
	var head = document.getElementsByTagName('head');
	var script = document.createElement('script');

	// Twitter geo/seach - returns places nearby
	// http://dev.twitter.com/doc/get/geo/search

	// Useful
	// http://www.findlatitudeandlongitude.com

	// Fetch places
	fullUrl = "http://api.twitter.com/1/geo/search.json?callback=getPlaces&max_results=100&granularity=poi&lat=" + lat + "&long=" + lon;

	// http://api.twitter.com/1/geo/search.json?lat=34.5121395&long=-82.6379576&max_results=100&granularity=poi
	//alert(placeUrl);
	
	script.src = fullUrl; 
	head[0].appendChild(script); 
}

function getPlaces(json) {
    var q; 
	var parent = document.getElementById('placeList'); 
	parent.innerHTML = ''; 
	var child;

	for (var i = 0; i < json.result.places.length; i++) {
	    q = json.result.places[i]; 
	   child = document.createElement("div"); 
	   child.setAttribute("class","tweet");
	   //child.innerHTML = '<div class="avatar"><img src="'+q.profile_image_url+'" alt="avatar" width="48" height="48" /></div>';
	   //child.innerHTML += '<div class="content"><a href="http://m.twitter.com/' + q.from_user + '">' + q.from_user + '</a> ' + q.text + '<div class="extra">' + q.location + ' (' + q.created_at + ')</div></div>';

	   // Stopped working:
	   //child.innerHTML += '<div><a href="http://twitter.com/#!/places/' + q.id + '">' + q.full_name + '</a></div>';
	   child.innerHTML += '<div><a href="http://twitter.com/search?q=place%3A' + q.id + '">' + q.full_name + '</a></div>';

	   //child.innerHTML += '<div><a href="' + q.url + '">feed</a></div>';


	   //child.innerHTML += '<div class="content">query: ' + q.query.url + '</div>';
	   //child.innerHTML += '<div class="content">Location: ' + q.location + '</div>';

	   parent.appendChild(child); 
	}
}


function print(lat,lon){
	document.getElementById("location").innerHTML = "Lat: "+lat+ " Lon: " +lon;
}
