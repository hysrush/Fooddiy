<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<title>Marker Clustering</title>
<style>
/* Always set the map height explicitly to define the size of the div
* element that contains the map. */
#map {
width : 1000px;
height: 500px;
}
/* Optional: Makes the sample page fill the window. */
html, body {
height: 100%;
margin: 0;
padding: 0;
}
</style>

</head>
<body>
<div id="map"></div>
	<script>
	window.onload = function() {
		
		function getLocation() {
			  if (navigator.geolocation) { // GPS를 지원하면
			    navigator.geolocation.getCurrentPosition(function(position) {
			      alert(position.coords.latitude + ' ' + position.coords.longitude);
			    }, function(error) {
			      console.error(error);
			    }, {
			      enableHighAccuracy: false,
			      maximumAge: 0,
			      timeout: Infinity
			    });
			  } else {
			    alert('GPS를 지원하지 않습니다');
			  }
			}
			getLocation();
	}
	
	
	
	
	</script>

	<script>
	
	function initMap() {
	
	var map = new google.maps.Map(document.getElementById('map'), {
	zoom: 8,
	center: {lat: 35.024, lng: 129.887}
	});
	
	var infoWindow = new google.maps.InfoWindow({map: map});
	
	// Try HTML5 geolocation.
	if (navigator.geolocation) {
	navigator.geolocation.getCurrentPosition(function(position) {
	var pos = {
	lat: position.coords.latitude,
	lng: position.coords.longitude
	};
	
	infoWindow.setPosition(pos);
	infoWindow.setContent('현재위치 !');
	map.setCenter(pos);
	}, function() {
	//alert("Location not found.");
	});
	} else {
	//alert("Browser doesn't support Geolocation");
	}
	
	// Create an array of alphabetical characters used to label the markers.
	var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	
	// Add some markers to the map.
	// Note: The code uses the JavaScript Array.prototype.map() method to
	// create an array of markers based on a given "locations" array.
	// The map() method here has nothing to do with the Google Maps API.
	var markers = locations.map(function(location, i) {
	return new google.maps.Marker({
	position: location,
	label: labels[i % labels.length]
	});
	});
	
	// Add a marker clusterer to manage the markers.
	var markerCluster = new MarkerClusterer(map, markers,
	{imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
	}
	var locations = [
	{lat: 35.137879, lng: 129.067383},
	{lat: 35.541166, lng: 129.265137},
	{lat: 35.505400, lng: 128.814697},
	{lat: 36.191092, lng: 128.633423},
	{lat: 36.035774, lng: 128.441162},
	{lat: 35.277016, lng: 129.133301},
	{lat: 35.188400, lng: 129.134674},
	{lat: 35.449484, lng: 128.817444}
	]
	</script>
	
	<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
	</script>
	<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyArHE1hXsBVVHAr1W1eUjLOp34W6hcybIU&callback=initMap">
	</script>
</body>


</html>