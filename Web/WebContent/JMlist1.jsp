<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>

<style>
body {
	font: size:50px;
	color: #4f6b72;
	background: #E6EAE9;
}

a {
	color: #c75f3e;
}

caption {
	padding: 0 0 5px 0;
	width: 700px;
	text-align: right;
}

th {
	color: #4f6b72;
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	border-top: 1px solid #C1DAD7;
	letter-spacing: 2px;
	text-transform: uppercase;
	text-align: left;
	padding: 6px 6px 6px 12px;
	background: #CAE8EA url(images/bg_header.jpg) no-repeat;
}

th.nobg {
	border-top: 0;
	border-left: 0;
	border-right: 1px solid #C1DAD7;
	background: none;
}

th {
	font-size: 20px;
}

td {
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	background: #fff;
	font-size: 20px;
	padding: 6px 6px 6px 12px;
	color: #4f6b72;
}

td.alt {
	background: #F5FAFA;
	color: #797268;
}

img {
	width: 200px;
	height: 200px;
}

.imagination {
	width: 60px;
	height: 60px;
}

.nameset {
	width: 150px;
	height: 200px;
}

.navbar-text {
	font-size: 20px;
	font-weight: bold;
}
</style>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">
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


</head>

<nav class=" navbar-fixed-top navbar navbar-inverse ">
	<div class="container">

		<a class="navbar-text" href="JDisplaying.jsp">首页</a>

	</div>
</nav>
<body>
	<%
		String driverStr = "com.mysql.jdbc.Driver";
		String connStr = "jdbc:mysql://localhost:3306/Info?characterEncoding=UTF-8";
		Class.forName(driverStr);
		Connection conn = DriverManager.getConnection(connStr, "root", "");
		String sql = "Select * from machine1 where location=?";
		PreparedStatement sta = conn.prepareStatement(sql);
		sta.setInt(1, 1);
		ResultSet rs = sta.executeQuery();
	%>
	<table class="table table-hover">
		<tr style="text-align: center;">
			<th>洗衣房</th>
			<th>洗衣机名称</th>
			<th>工作状态</th>
			<th>操作</th>

		</tr>
		<%
			for (int i = 0; rs.next(); i++) {
		%>
		<tr>
			<td class="imagination"><img alt="" src="image/washing.jpg">
			<td class="alt" style="text-align: center;">洗衣机<%=rs.getString("name")%>号
			</td>
			<td class="alt" style="text-align: center;"><%=rs.getString("state")%></td>

			<td class="alt" style="text-align: center;">
				<form action="Update<%=rs.getString("id")%>" method="post">
					<button type="submit" class="btn btn-primary">即洗</button>
				</form>

			</td>
		</tr>
		<%
			}
			rs.close();
			//关闭结果集
			sta.close();
			//关闭语句对象
			conn.close();
			//关闭连接
		%>

		<tr>
			<td class="imagination"><img alt="" src="image/washing.jpg">
			<td class="alt" style="text-align: center;">洗衣机4号</td>
			<td class="alt" style="text-align: center; color: red;">故障中</td>

			<td class="alt" style="text-align: center;">
				<button type="submit" class="btn btn-primary" disabled="disabled">即洗</button>

			</td>
		</tr>


		<tr>
			<td class="imagination"><img alt="" src="image/washing.jpg">
			<td class="alt" style="text-align: center;">洗衣机5号</td>
			<td class="alt" style="text-align: center; color: red;">故障中</td>

			<td class="alt" style="text-align: center;">
				<button type="submit" class="btn btn-primary" disabled="disabled">即洗</button>

			</td>
		</tr>

	</table>

</body>
</html>
