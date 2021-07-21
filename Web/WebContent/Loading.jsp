<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.net.URLEncoder"%>

<html>
<meta charset="utf-8">
<head>
<title>load</title>
</head>
<body>

	<script src="jquery/js/jquery-1.11.0.min.js"></script>
	<link href="jquery/dist/app.min.css" rel="stylesheet">
	<script src="jquery/dist/app.min.js"></script>

	<script>
		$.busyLoadFull("show", {
			background : "#AFA9A9",
			spinner : "cube-grid",
			animate : "slide",
			maxSize : "100px",
			minSize : "100px",
		});
		var time = 0;
		var interval = setInterval(function() {
			time++;
			if (time == 3) {
				clearInterval(interval);
				time = 0;
				window.location.href = "JDisplaying.jsp";
			}
		}, 1000);
	</script>






</body>


</html>