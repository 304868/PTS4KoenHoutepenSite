<%-- 
    Document   : index
    Created on : Mar 11, 2015, 1:35:03 PM
    Author     : rich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script
        src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
        <script>
            var map;
            function initialize() {
                var mapOptions = {
                    zoom: 8,
                    center: new google.maps.LatLng(52.3956301, 5.3041742)
                };
                map = new google.maps.Map(document.getElementById('map-canvas'),
                        mapOptions);
            }

            google.maps.event.addDomListener(window, 'load', initialize);
            </script>
                    </head>
                    <body >
                    <h1> Auto ongeluk </h1>
                    <a> Dit is een auto ongeluk, veel plezier </a>
                    <div id = "map-canvas" style = "height:300px; width:500px" > </div>
                    </body>
                    </html>
