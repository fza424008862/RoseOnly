<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<script src="js/jquery-3.1.0.min.js"></script>
		<script src="http://code.jquery.com/color/jquery.color-2.1.2.js" integrity="sha256-1Cn7TdfHiMcEbTuku97ZRSGt2b3SvZftEIn68UMgHC8=" crossorigin="anonymous"></script>
		<script src="js/jquery.animate-colors.js"></script>
		<link rel="stylesheet" href="css/Shop_hotai_addShop.css">
		<title>RoseOnly后台管理</title>
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

	<body onload="setWidth()">
		<div id="container">
			<!--头部-->
			<div id="header">
				<div class="header1">
					<ul>
						
						<li name="li1">
							<div>商品</div>
						</li>
						<li name="li1" id="li6">
							<div class="header11">会员</div>
						</li>
						<li name="li1">
							<div>订单</div>
						</li>
						<li name="li1">
							<div>营销</div>
						</li>
						<li name="li1">
							<div>统计</div>
						</li>
						<li name="li1">
							<div>系统</div>
						</li>
						<li name="li1">
							<div>工具</div>
						</li>
						<li name="li1">
							<div>插件</div>
						</li>
					</ul>
				</div>
			</div>
			<!--内容-->
			<div id="content_left">
				<div class="content_left1">
					<span class="logo"><b>RoseOnly</b>后台管理</span>
				</div>
				<section class="sidebar" style="height: auto;">
					<div class="user">
						<div class="user1">
							<img src="img/left1.png" />
						</div>
						<div class="user2">
							<p>admin</p>
							<a href="#">超级管理员</a>
						</div>
					</div>
					<ul>
						<li class="li1">会员模块菜单</li>
						<li class="li2">
							<div class="div1">
								<div>
									<img src="img/left7.png" />
								</div>
								<div class="div11">会员管理</div>
								<div class="div12">
									<img class="img1" src="img/left12.png" />
								</div>
							</div>
							<ul class="ul1" name="ul2" style="display: block;">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="Shop_hotai_huiyuan.jsp">会员列表</a>
								</li>
							</ul>
							<ul class="ul1" name="ul2" style="display: block;">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="Shop_hotai_addShop.jsp">添加会员</a>
								</li>
							</ul>
						</li>
						<li class="li3">
							<div class="div1">
								<div>
									<img src="img/left4.png" />
								</div>
								<div class="div11">信息处理</div>
								<div class="div12">
									<img class="img1" src="img/left9.png" />
								</div>
							</div>
							<ul class="ul1" id="x">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="Shop_hotai_pingjia.jsp">评价管理</a>
								</li>
							</ul>
							<ul class="ul1" name="ul3">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="Shop_hotai_daohuo.jsp">到货通知</a>
								</li>
							</ul>
						</li>
					</ul>
				</section>
			</div>
			<!--左边内容结束-->
			<!--
            	右边
            -->
			<div class="s_h_sy_right">
				<div class="s_h_sy_right_heard">
					<div class="s_h_sy_right_heard_left">
						<a href="##"><img src="img/zhuye.png" />会员</a>
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