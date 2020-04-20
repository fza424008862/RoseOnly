<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		<link rel="stylesheet" href="/roseOnly/css/Shop_hotai_addShop.css" />
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.js"></script>
		<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js"></script>
		<script type="text/javascript" src="/roseOnly/js/adminlte.min.js"></script>
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.min.js" ></script>
		<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js" ></script>
	
		<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
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

				$(".header1 ul li").click(function() {
					var l = document.getElementsByName("li1");
					for(var i = 0; i < l.length; i++) {
						l[i].style.background = "#2F3638";
					}
					$(this).css("background", "rgba(0, 0, 0, 0.1)");
				});
				$(".s_h_sy_right_caozuo>input").hover(function() {
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
				$(".addtext").focus(function() {
					$(this).css("outline", "1px solid blue");
				});
				$(".addtext").blur(function() {
					if($(this).val() == "") {
						$(this).css("outline", "2px solid red");
					} else {
						$(this).css("outline", "none");
					}
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
						<p href="##">添加会员</p>
					</div>
				</div>
				<div class="s_h_sy_right_caozuo">
					<div class="add">会员信息</div>
					<div class="ms">会员描述</div>
				</div>
				<div class="s_h_sy_right_neirong" id="addxx">
					<form>
						<table>
							<tr>
								<td>用户名&nbsp;:</td>
								<td><input type="text" class="addtext" /></td>
							</tr>
							<tr>
								<td>邮箱&nbsp;:</td>
								<td><input type="text" class="addtext" /></td>
							</tr>
							<tr>
								<td>密码&nbsp;:</td>
								<td><input type="text" class="addtext" /></td>
							</tr>
							<tr>
								<td>确认密码&nbsp;:</td>
								<td><input type="text" class="addtext" /></td>
							</tr>
							<tr>
								<td>性别&nbsp;:</td>
								<td><div style="float: left;">
									<input type="radio" />男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" />女
								</div></td>
							</tr>
							<tr>
								<td>手机号&nbsp;:</td>
								<td>
									<input type="text" placeholder="请输入手机号" class="addtext"/>
								</td>
							</tr>
							 
						</table>
						<input type="button" value="确认" style="height: 40px; width: 80px; margin-left: 250px;" />
					</form>
				</div>
			</div>
		</div>
	</body>

</html>