<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.net.URLEncoder"%>

<!DOCTYPE html>
<html lang="zh">
<link rel="preconnect" href="https://srv.carbonads.net/" crossorigin>
<link rel="preconnect" href="https://cdn4.buysellads.net/" crossorigin>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>欢迎来到洗衣房管理系统</title>
<link rel="stylesheet" type="text/css" href="./css/loading.css">
<link rel="stylesheet" type="text/css" href="./css/main.css">
<style type="text/css">
@font-face {
	font-family: 'Electrolize';
	font-style: normal;
	font-weight: 400;
	font-display: swap;
}

.ml1 {  
    color:white;
	font-weight: 900;
	font-size: 3.5em;
}

.ml1 .letter {
	display: inline-block;
	line-height: 1em;
}

.ml1 .text-wrapper {
	position: relative;
	display: inline-block;
	padding-top: 0.1em;
	padding-right: 0.05em;
	padding-bottom: 0.15em;
}

.ml1 .line {
	opacity: 0;
	position: absolute;
	left: 0;
	height: 3px;
	width: 100%;
	background-color: #fff;
	transform-origin: 0 0;
}

.ml1 .line1 {
	top: 0;
}

.ml1 .line2 {
	bottom: 0;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
<head>

</head>
<body space-top-bot="50px" onclick="window.location.href='JLogin.jsp'">
	<div class="page-loading__icon"></div>

	<div class="frosted-panel" panel-dimensions="80% 60%"
		breakpoint-type="min-width"
		breakpoints="500px 50% 50%, 500px 60% 500px">
		<svg>
			<filter id="blurMe" filterRes="1200"
				color-interpolation-filters="sRGB">
				<feGaussianBlur in="SourceGraphic" stdDeviation="7" />
			</filter>
			<image xlink:href="./image/bg1.jpg" x="0" y="0" width="1680"
				height="800" filter="url(#blurMe)" />
		</svg>

		<div class="content" content-margin="5px">
			<div class="flex-container">
				<h1 class="ml1">
					<span class="text-wrapper"> <span class="line line1"></span>
						<span class="letters">欢迎来到洗衣房管理系统</span> <span class="line line2"></span>
					</span>
				</h1>


			</div>
		</div>
	</div>

	<script>
// Wrap every letter in a span

var textWrapper = document.querySelector('.ml1 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml1 .letter',
    scale: [0.3,1],
    opacity: [0,1],
    translateZ: 0,
    easing: "easeOutExpo",
    duration: 600,
    delay: (el, i) => 70 * (i+1)
  }).add({
    targets: '.ml1 .line',
    scaleX: [0,1],
    opacity: [0.5,1],
    easing: "easeOutExpo",
    duration: 700,
    offset: '-=875',
    delay: (el, i, l) => 80 * (l - i)
  }).add({
    targets: '.ml1',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });
</script>
	<script src="./js/app.js"></script>


</body>
</html>