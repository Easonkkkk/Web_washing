<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.net.URLEncoder"%>

<!DOCTYPE html>
<html>

<!-- JS, Popper.js, and jQuery -->
<!-- jQuery引用 -->
<!-- jQuery引用 -->

<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<!-- Bootstrap引用 -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>



<!-- CSS -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<script>
	
</script>

<style>
@font-face {
	font-family: 'Electrolize';
	font-style: normal;
	font-weight: 400;
	font-display: swap;
	src: local('Electrolize'), local('Electrolize-Regular'),
		url(./fonts/Electrolize.woff2) format('woff2'),
		url(./fonts/Electrolize.woff) format('woff');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}

/* 清除默认自带的 padding 和  margin*/
* {
	padding: 0px;
	margin: 0px;
}

/* 用于ul的款对，和显示的边框颜色，颜色为灰色
             在此处只设置了，ul的宽度，没有设置高度
             因为高度是随着li的变化而变化的
             */
ul.topic_show {
	list-style: none;
	width: 100%;
	border: 1px solid #999;
}
/* 用于设置ul中标题大小，背景和颜色，以及字体大小
             */
ul.topic_show  h3 {
	height: 30px;
	width: 249px;
	background: #111155;
	color: #FFFFFF;
	font-size: 14px;
}
/* 利用span和position的relative来设置ul中标题中的字的位置
             */
ul.topic_show  h3 span {
	position: relative;
	left: 10px;
	top: 8px;
}
/* 利用padding来设置，li中字体的位置
             */
ul.topic_show li {
	padding: 5px 20px;
	font-size: 12px;
	color: #555;
	background: url("point.jpg") no-repeat;
	background-position: 10px 7px;
}

.navbar-text {
	font-size: 20px;
	font-weight: bold;
}

//
Use as-is
.masthead {
	background-color: @brand-primary;
}

.alert {
	background-color: @alert-message-background;
}

.rule {
	box-shadow: 0px 0px 30px #333;
	margin-top: 100px;
}

.thumbnail {
	margin-left: 30%;
}

.link {
	display: inline-block;
	position: relative;
	font-size: 20px;
	margin-left: 50%;
}

.link span {
	display: block;
	padding: 7px 15px;
	font-size: 23px;
	color: #202020;
	letter-spacing: 1px;
	text-transform: uppercase;
	text-align: center;
	transition: all 0.5s ease 0s;
}

.link:hover span {
	color: #ff5c19;
}

.link:before, .link:after, .link span:before, .link span:after {
	content: "";
	width: 25%;
	height: 100%;
	border-radius: 30px;
	border: 3px solid #ff5c19;
	border-left: none;
	border-right: none;
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	transform: scale(0.8);
	transition: all 0.3s ease 0s;
}

.link:after {
	left: 25%;
}

.link span:before {
	left: 50%;
}

.link span:after {
	left: 75%;
}

.link:hover:before, .link:hover:after, .link:hover span:before, .link:hover span:after
	{
	border-radius: 0;
	opacity: 1;
	transform: scale(1);
}

.link:hover:before {
	border-left: 3px solid #ff5c19;
}

.link:hover span:after {
	border-right: 3px solid #ff5c19;
}
</style>
<head>
<meta charset="UTF-8">
<title>洗衣房机器清单</title>
</head>
<body>
	<nav class=" navbar-fixed-top navbar navbar-inverse ">
		<div class="container">

			<p class="navbar-text">首页</p>
			<p class="navbar-text" data-toggle="modal" data-target="#myModal">规则</p>

		</div>
	</nav>

	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">1.请同学们在准备清洗衣服前务必检查好自身的财物。</div>
				<div class="modal-body">2.请妥善处理自身的衣物，请勿随意舍弃在洗衣房内。</div>
				<div class="modal-body">3.衣物清洗完成请按时取走，切勿停留过久。</div>
				<div class="modal-body">4.请同学们及时查看公告了解洗衣房最新资讯。</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>



	<div class="div_show">
		<ul class="topic_show">
			<h3>
				<span>通知公告</span>
			</h3>
			<li><a href="Announce1.jsp" class="list-group-item"
				style="color: red;">公告1:关于洗衣房部分洗衣机故障的通知</a></li>
			<li><a href="Announce2.jsp" class="list-group-item"
				style="color: red;">公告2:关于学生个人财产管理的通知</a></li>
			<li><a href="Announce3.jsp" class="list-group-item"
				style="color: red;">公告3:关于洗衣房新定规则的通知</a></li>
			<li><a href="Announce4.jsp" class="list-group-item"
				style="color: red;">公告4:关于遗失物品拾取的通知</a></li>
		</ul>

	</div>


	<form action="form-horizontal">
		<div class="row">
			<div class=" col-md-5">
				<div class="thumbnail">
					<img src="image/washings.jpg"
						onclick="window.location.href='echart1.jsp'">
					<div class="caption">
						<h3>精思苑2号楼洗衣房</h3>
					</div>


				</div>

			</div>


			<div class=" col-md-5">
				<div class="thumbnail">
					<img src="image/washings.jpg"
						onclick="window.location.href='echart2.jsp'">
					<div class="caption">
						<h3>精思苑3号楼洗衣房</h3>

					</div>
				</div>
			</div>
		</div>
	</form>


	<div class="col-sm-5">
		<a href="JMlist1.jsp" class="link"><span>进入查看</span></a>
	</div>


	<div class="col-sm-5">
		<a href="JMlist2.jsp" class="link"><span>进入查看</span></a>
	</div>

</body>
</html>