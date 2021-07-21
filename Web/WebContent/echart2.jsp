<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="utf-8">
</head>
<body style="height: 100%; margin: 0"
	onclick="window.location.href='JDisplaying.jsp'">
	<div id="container" style="height: 100%"></div>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/echarts@4/dist/echarts.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/echarts-gl@1/dist/echarts-gl.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/echarts-stat@1/dist/ecStat.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/echarts@4/dist/extension/dataTool.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/echarts@4/map/js/china.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/echarts@4/map/js/world.js"></script>

	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/echarts@4/dist/extension/bmap.min.js"></script>
	<script type="text/javascript">
		var dom = document.getElementById("container");
		var myChart = echarts.init(dom);
		var app = {};
		option = null;
		option = {
			backgroundColor : '#2c343c',

			title : {
				text : '使用流量',
				left : 'center',
				top : 20,
				textStyle : {
					color : 'antiquewhite'
				}
			},

			tooltip : {
				trigger : 'item',
				formatter : '{a} <br/>{b} : {c} ({d}%)'
			},

			visualMap : {
				show : false,
				min : 80,
				max : 600,

			},
			series : [ {
				name : '访问来源',
				type : 'pie',
				radius : '55%',
				center : [ '50%', '50%' ],
				data : [ {
					value : 15,
					name : '1号洗衣机'
				}, {
					value : 15,
					name : '2号洗衣机'
				}, {
					value : 20,
					name : '3号洗衣机'
				}, ].sort(function(a, b) {
					return a.value - b.value;
				}),
				roseType : 'radius',
				label : {
					color : 'antiquewhite'
				},
				labelLine : {
					lineStyle : {
						color : 'antiquewhite'
					},
					smooth : 0.2,
					length : 10,
					length2 : 20
				},
				itemStyle : {
					color : '#c23531',
					shadowBlur : 200,
					shadowColor : 'rgba(0, 0, 0, 0.5)'
				},

				animationType : 'scale',
				animationEasing : 'elasticOut',
				animationDelay : function(idx) {
					return Math.random() * 200;
				}
			} ]
		};
		;
		if (option && typeof option === "object") {
			myChart.setOption(option, true);
		}
	</script>
</body>
</html>
