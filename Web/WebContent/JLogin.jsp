<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">

<!-- CSS -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">



<style type="text/css">
.back {
	background: #000000 url(image/baimage.png) no-repeat fixed top;
}

.form-bg {
	margin-top: 10%;
}

.form-horizontal {
	background: #fff;
	padding-bottom: 40px;
	border-radius: 15px;
	text-align: center;
}

.form-horizontal .heading {
	display: block;
	font-size: 35px;
	font-weight: 700;
	padding: 35px 0;
	border-bottom: 1px solid #f0f0f0;
	margin-bottom: 30px;
}

.form-horizontal .form-group {
	padding: 0 40px;
	margin: 0 0 25px 0;
	position: relative;
}

.form-horizontal .form-control {
	background: #f0f0f0;
	border: none;
	border-radius: 20px;
	box-shadow: none;
	padding: 0 20px 0 45px;
	height: 40px;
	transition: all 0.3s ease 0s;
}

//
文本框长度


		.form-horizontal .form-group i {
	position: absolute;
	top: 12px;
	left: 60px;
	font-size: 17px;
	color: #c8c8c8;
	transition: all 0.5s ease 0s;
}

.form-horizontal .btn {
	float: right;
	font-size: 14px;
	color: #fff;
	background: #00b4ef;
	border-radius: 30px;
	padding: 10px 25px;
	border: none;
	text-transform: capitalize;
	transition: all 0.5s ease 0s;
}

//
登录按钮


		

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
<title>欢迎来到洗衣机管理系统!!!</title>
</head>
<body class="back">
	<div class="htmleaf-container">
		<header class="htmleaf-header">
			<div class="htmleaf-links"></div>
		</header>
		<div class="demo form-bg" style="padding: 20px 0; opacity: 0.9;">
			<div class="container">
				<div class="row">
					<div class="col-md-offset-3 col-md-6">
						<form class="form-horizontal" action="Login" method="post">
							<span class="heading">用户登录</span>

							<div class="form-group">
								<input type="text" class="form-control" placeholder="用户名"
									id="name" name="name">
							</div>

							<div class="form-group help">
								<input type="password" class="form-control" placeholder="密码"
									id="password" name="password">
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-default">登录</button>
								<a type="button" href="JRegister.jsp" class="btn btn-default">注
									册</a>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>