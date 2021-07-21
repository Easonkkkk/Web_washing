<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>通告2</title>
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



<!-- CSS -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<style>
.whole {
	margin-left: 5%;
}

body {
	
}

.navbar-text {
	font-size: 20px;
	font-weight: bold;
}

.spa-head {
	font-size: 17px;
}
</style>



<nav class=" navbar-fixed-top navbar navbar-inverse ">
	<div class="container">
		<p class="navbar-text"
			onclick="window.location.href='JDisplaying.jsp'">首页</p>
		<p class="navbar-text" data-toggle="modal" data-target="#myModal">规则</p>
	</div>
</nav>
<div class="whole">
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


	<div style="font-size: 10px;">
		<h1 style="text-align: center;">关于学生个人财产管理的通知</h1>
		<div style="text-align: center;">
			来源&nbsp;:&nbsp;<span> <!-- ${Article.Source}-->洗衣房管理处
			</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者 &nbsp;:&nbsp;<span>管理处 </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时间
			&nbsp;:&nbsp;<span>2020-12-18</span>
		</div>
	</div>
	<br> <br>
	<div class="sp-content">
		<p style="white-space: normal;">
			<span style="font-size: 19px; font-family: 宋体">各位同学：</span><br>
		</p>
		<p style="white-space: normal;">
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
				style="font-size: 19px; font-family: 宋体">最近管理处这边有部分同学过来反馈财务丢失的问题，我们在这里提醒大家，切记一定要保护好个人财产个人隐私，洗衣房人员复杂，更应注重个人财产的保护</span>
		</p>
		<p style="text-align: left; text-indent: 37px; text-autospace: none">
			<span style="font-size: 19px; font-family: 宋体">通知如上，望请同学们查收并且互相传达。</span>
		</p>
		<p style="text-align: left; text-indent: 37px; text-autospace: none">
			<span style="font-size: 19px; font-family: 宋体"></span>
		</p>

		<span style="margin-left: 80%; font-size: 19px; font-family: 宋体">洗衣房管理处</span>
		<br> <span style="font-family: 宋体; font-size: 19px;">2020年12月20日</span>


		<br> <br> <a style="font-size: 15px;" href="Announce1.jsp"
			title="公告1:关于洗衣房部分洗衣机故障的通知" target="_blank" class="z-attachment xlsx">公告1:关于洗衣房部分洗衣机故障的通知</a>

		<br> <br> <a style="font-size: 15px;" href="Announce3.jsp"
			title="公告3:关于洗衣房新定规则的通知" target="_blank" class="z-attachment xlsx">公告3:关于洗衣房新定规则的通知</a>

		<br> <br> <a style="font-size: 15px;" href="Announce4.jsp"
			title="公告4:关于遗失物品拾取的通知" target="_blank" class="z-attachment xlsx">公告4:关于遗失物品拾取的通知</a>

	</div>
</div>
</head>
<body>

</body>
</html>