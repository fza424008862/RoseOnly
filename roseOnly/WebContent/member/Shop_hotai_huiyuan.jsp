<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>Bootstrap 101 Template</title>
		<link rel="stylesheet" href="/roseOnly/css/admin.css" />
		<link rel="stylesheet" href="/roseOnly/css/AdminLTE.min.css" />
		<link rel="stylesheet" href="/roseOnly/css/_all-skins.min.css" />
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.js"></script>
		<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js"></script>
		<script type="text/javascript" src="/roseOnly/js/adminlte.min.js"></script>

		<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
			.s_h_sy_right {
				background-color: #3A4144;
				/*position: absolute;*/
				top: 50px;
				left: 230px;
				width: 1500px;
				height: 100%;
			}
			
			.s_h_sy_right_heard {
				background-color: #424B4F;
				width: 1500px;
				height: 20px;
				padding: 70px 0px 50px 250px;
			}
			
			.s_h_sy_right_heard_left a {
				color: #CFCFCF;
				text-decoration: none;
				font-size: 18px;
			}
			
			.s_h_sy_right_heard_left img {
				vertical-align: middle;
			}
			
			.s_h_sy_right_heard_left span {
				color: #CFCFCF;
				margin-left: 20px;
				margin-right: 20px;
			}
			
			.s_h_sy_right_heard_left p {
				color: #CFCFCF;
				display: inline-block;
				cursor: pointer;
			}
			
			.s_h_sy_right_caozuo {
				border: 1px solid #33393c;
				border-top: 2px solid #313639;
				background: #4b5357;
				color: #fff;
				width: 1490px;
				margin: 10px 0 0 10px;
				height: 20px;
				padding: 20px 0 50px 230px;
			}
			.s_h_sy_right_caozuo a input{
				width: 80px;
				height: 30px;
				margin-left: 10px;
				background-color: transparent;
				outline: 0;
    			border: 1px solid #fff;
    			color: white;
    			cursor: pointer;
    			opacity: .7;
			}
			.s_h_sy_right_neirong{
				border: 1px solid #33393c;
			    border-top: 2px solid #313639;
			    background: #4b5357;
			    color: white;
				width: 1490px;
				margin: 10px 0 0 10px;
				padding:20px 0 20px 230px;
			}
			
			.s_h_sy_right_neirong table {
				width: 100%;
				margin-bottom: 20px;
			}
			
			.s_h_sy_right_neirong table tr {
				box-sizing: border-box;
			}
			
			.s_h_sy_right_neirong table tr th {
				color: white;
				border-bottom: 2px solid rgba(0, 0, 0, 0.3);
				padding-bottom: 10px;
				margin-bottom: 10px;
			}
			
			.s_h_sy_right_neirong table tr td {
				border-top: 1px solid rgba(0, 0, 0, 0.2);
				vertical-align: middle;
				padding: 10px;
				color: white;
				text-align: center;
			}
			
			.s_h_sy_right_neirong table tr td img {
				display: inline-block;
				width: 50px;
				height: 50px;
				height: auto;
				padding: 4px;
				line-height: 1.42857143;
				background-color: #4b5357;
				border: 1px solid #ddd;
				border-radius: 4px;
				/roseOnly vertical-align: middle;
				float: left;
			}
			
			.s_h_sy_right_dibu1{
				margin: 10px 0px 10px 220px;
				width: 628px;
				height: 108px;
				border: 1px solid #11627d;
			    border-top: 2px solid #105f79;
			    background: #1786aa;
			    float: left;
			    text-align: center;
			    font-weight: bold;
			    color: white;
			}
			.s_h_sy_right_dibu2{
				margin: 10px 0px 10px 0px;
				width: 628px;
				height: 108px;
				border: 1px solid #5e4578;
			    border-top: 2px solid #5c4375;
			    background: #785799;
			    float: right;
			    text-align: center;
			    font-weight: bold;
			    color: white;
			}
		</style>
		<script>
			function setWidth() {
				var w = document.documentElement.clientWidth;
				document.getElementById("container").style.width = w + "px";
				var h = document.documentElement.clientHeight;
				document.getElementById("content_left").style.height = h + "px";
				document.getElementById("header").style.width = w + "px";
			}

			var i = 1;
			$(function() {
				$(".li2 .div1").click(function() {
					if(i == 1) {
						$(".li2 .ul1").slideUp(500, function() {
							$(".li2 .img1").attr("src", "img/left9.png");
						});
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "img/left9.png");
						});
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "img/left9.png");
						});
						i = 2;
					} else {
						$(".li2 .ul1").slideDown(500, function() {
							$(".li2 .img1").attr("src", "img/left12.png");
						});
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "img/left9.png");
						});
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "img/left9.png");
						});
						i = 1;
					}
				});

				$(".li3 .div1").click(function() {
					if(i == 1) {
						$(".li3 .ul1").slideDown(500, function() {
							$(".li3 .img1").attr("src", "img/left12.png");
						});
						$(".li2 .ul1").slideUp(500, function() {
							$(".li2 .img1").attr("src", "img/left9.png");
						});
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "img/left9.png");
						});
						i = 2;
					} else {
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "img/left9.png");
						});
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "img/left9.png");
						});
						$(".li2 .ul1").slideUp(500, function() {
							$(".li2 .img1").attr("src", "img/left9.png");
						});
						i = 1;
					}
				});
				$(".li4 .div1").click(function() {
					if(i == 1) {
						$(".li4 .ul1").slideDown(500, function() {
							$(".li4 .img1").attr("src", "img/left12.png");
						});
						$(".li2 .ul1").slideUp(500, function() {
							$(".li2 .img1").attr("src", "img/left9.png");
						});
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "img/left9.png");
						});
						i = 2;
					} else {
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "img/left9.png");
						});
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "img/left9.png");
						});
						$(".li2 .ul1").slideUp(500, function() {
							$(".li2 .img1").attr("src", "img/left9.png");
						});
						i = 1;
					}
				});

				$(".header1 ul li").click(function() {
					var l = document.getElementsByName("li1");
					for(var i = 0; i < l.length; i++) {
						l[i].style.background = "#2F3638";
					}
					$(this).css("background", "rgba(0, 0, 0, 0.1)");
				});
				$(".s_h_sy_right_caozuo>a>input").hover(function() {
					$(this).stop().animate({
						"background-color": "white",
						"color": "black"
					}, 500, null);
					$(this).css("opacity", ".9")
				}, function() {
					$(this).stop().animate({
						"background-color": "transparent",
						"color": "white"
					}, 500, null);
					$(this).css("opacity", ".7")
				});
				$("#quan").click(function() {
					$(":checkbox").each(function() {
						this.checked = true;
					})
				});
				$("#delete").click(function() {
					var det = $(":checkbox");
					for(var i = 0; i < det.length; i++) {
						if($(det[i]).prop("checked") == true) {
							$(det[i]).parent().parent().remove();
						}
					}
				});
				$(".s_h_sy_right_dibu1").hover(function() {
					$(this).stop().animate({
						width: "1264",
						fontSize: "22px"
					}, 800, null);
					$(".s_h_sy_right_dibu2").stop().animate({
						width: "0"
					}, 800, function() {
						$(".s_h_sy_right_dibu2").css("display", "none");
					});
				}, function() {
					$(".s_h_sy_right_dibu2").css("display", "block");
					$(this).stop().animate({
						width: "628",
						fontSize: "15px"
					}, 800, null);
					$(".s_h_sy_right_dibu2").stop().animate({
						width: "628"
					}, 800, null);
				});
				$(".s_h_sy_right_dibu2").hover(function() {
					$(this).stop().animate({
						width: "1264"
					}, 800, null);
					$(".s_h_sy_right_dibu1").stop().animate({
						width: "0",
						fontSize: "5px",
						"color": "transparent"
					}, 800, function() {
						$(".s_h_sy_right_dibu1").css("display", "none");
					});
				}, function() {
					$(".s_h_sy_right_dibu1").css("display", "block");
					$(this).stop().animate({
						width: "628"
					}, 800, null);
					$(".s_h_sy_right_dibu1").stop().animate({
						width: "628",
						fontSize: "15px",
						"color": "white"
					}, 800, null);
				});
			});
		</script>
	</head>

	<body class="skin-blue fixed sidebar-mini" style="height: auto; min-height: 100%;">
		<div class="wrapper" style="height: auto; min-height: 100%;">
			<header class="main-header">
				<div class="logo">
					<span class="logo-mini"><b>Rose</b></span>
					<span class="logo-lg"><b>RoseOnly</b>后台管理</span>
				</div>
				<nav class="navbar navbar-static-top">
					<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
						<span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>
					</a>

					<!--顶部菜单 开始-->
					<div id="menu" class="navbar-custom-menu">
						<ul class="nav navbar-nav" name="topMenu">
							<li>
								<a hidefocus="true" href="/roseOnly/goods/Shop_hotai_shouye.jsp">商品</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/member/Shop_hotai_huiyuan.jsp">会员</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/order/dingdan.jsp">订单</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/system/default.jsp">系统</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/EmployeeServlet?op=queryAllEmployee">权限</a>
							</li>
							<li>
								<a href="#" data-toggle="control-sidebar"><i class="glyphicon glyphicon-cog"></i></a>
							</li>
						</ul>
					</div>
					<!--顶部菜单 结束-->
				</nav>
			</header>

			<!--左侧菜单 开始-->
			<aside id="admin_left" class="main-sidebar">
				<section class="sidebar" style="height: auto;">
					<div class="user-panel">
						<div class="pull-left image">
							<i class="glyphicon glyphicon-user"></i>
						</div>
						<div class="pull-left info">
							<p>admin</p>
							<a href="#">超级管理员</a>
						</div>
					</div>

					<ul class="sidebar-menu tree" data-widget="tree">
						<li class="header">会员模块菜单</li>
						<li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-user" name="ico" menu="会员管理"></i>
								<span>会员管理</span>
								<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/member/Shop_hotai_huiyuan.jsp"><i class="glyphicon glyphicon-record"></i>会员列表</a>
								</li>
								<li>
									<a href="/roseOnly/member/Shop_hotai_addHuiyuan.jsp"><i class="glyphicon glyphicon-record"></i>添加会员</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-comment" name="ico" menu="信息处理"></i>
								<span>信息处理</span>
								<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/member/Shop_hotai_pingjia.jsp"><i class="glyphicon glyphicon-record"></i>评价管理</a>
								</li>
								<li>
									<a href="/roseOnly/member/Shop_hotai_daohuo.jsp"><i class="glyphicon glyphicon-record"></i>到货通知</a>
								</li>
							</ul>
						</li>

					</ul>
				</section>
			</aside>
			<!--左侧菜单 结束-->

			<!--右侧内容开始-->
			<div class="s_h_sy_right">
				<div class="s_h_sy_right_heard">
					<div class="s_h_sy_right_heard_left">
						<a href="##"><img src="/roseOnly/img/zhuye.png" />会员</a>
						<span>/</span>
						<p href="##">会员列表</p>
					</div>
				</div>
				<div class="s_h_sy_right_caozuo">
					<a href="Shop_hotai_addHuiyuan.jsp"><input type="button" value="添加会员" name="add" /></a>
					<a><input type="button" value="全选" id="quan" /></a>
					<a><input type="button" value="删除" id="delete" /></a>
				</div>
				<div class="s_h_sy_right_neirong">
					<table>
						<tr>
							<th></th>
							<th>用户名姓名</th>
							<th>会员编号</th>
							<th>性别</th>
							<th>家庭住址</th>
							<th>用户手机号</th>
							<th>用户生日</th>
						</tr>
			          <c:forEach var="list" items="${xxoo }">
						<tr>
							<td style="width: 20px;padding: 10px;">
								<input type="checkbox" name="gou" />
							</td>
							<td>
								<img src="/roseOnly/img/left1.png" />
								<div style="margin-top: 22px; width: 100px; height: 50px; margin-left: 210px;"> ${list.user_name }</div>
							</td>
							<td>${list.user_id }</td>
							<td>${list.user_sex }</td>
							<td>${list.user_address }</td>
							<td>${list.user_phone }</td>
							<td>${list.user_birthday }</td>
							
						</tr>
						</c:forEach>
						
					</table>
				</div>
				<div class="s_h_sy_right_dibu1">
					
				</div>
				<div class="s_h_sy_right_dibu2">

				</div>
			</div>
		</div>
	</body>

</html>