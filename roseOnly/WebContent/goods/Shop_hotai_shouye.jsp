<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.min.js" ></script>
		<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js"></script>
		<script src="http://code.jquery.com/color/jquery.color-2.1.2.js"integrity="sha256-1Cn7TdfHiMcEbTuku97ZRSGt2b3SvZftEIn68UMgHC8="crossorigin="anonymous"></script>
		
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
			.s_h_sy_right_neirong table{
				width: 100%;
				margin-bottom: 20px;
			}
			.s_h_sy_right_neirong table tr{
				box-sizing: border-box;
			}
			.s_h_sy_right_neirong table tr th{
				color: white;
				border-bottom: 2px solid rgba(0,0,0,0.3);
				padding-bottom: 10px;
				margin-bottom: 10px;
			}
			.s_h_sy_right_neirong table tr td{
				border-top: 1px solid rgba(0,0,0,0.2);
				vertical-align: middle;
				padding: 10px;
				color: white;
				text-align: center;
			}
			.s_h_sy_right_neirong table tr td img{
				display: inline-block;
			    width: 50px;
			    height: 50px;
			    height: auto;
			    padding: 4px;
			    line-height: 1.42857143;
			    background-color:  #4b5357;
			    border: 1px solid #ddd;
			    border-radius: 4px;/roseOnly
			    vertical-align: middle;
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
				$(".header1 ul li").click(function(){
					var l=document.getElementsByName("li1");
					for(var i=0;i<l.length;i++){
						l[i].style.background="#2F3638";
					}
					$(this).css("background","rgba(0, 0, 0, 0.1)");
				});
				$(".s_h_sy_right_caozuo>a>input").hover(function(){
					$(this).stop().animate({"background-color":"white","color":"black"},500,null);
					$(this).css("opacity",".9")
				},function(){
					$(this).stop().animate({"background-color":"transparent","color":"white"},500,null);
					$(this).css("opacity",".7")
				});
				$("#quan").click(function() {
					$(":checkbox").each(function(){
						this.checked=true;
					})
				});
				/*$("#delete").click(function() {
					var det = $(":checkbox");
					for(var i = 0; i <det.length; i++) {
						if($(det[i]).prop("checked") == true) {
							$(det[i]).parent().parent().remove();
						}
					}
				});*/
				$(".s_h_sy_right_dibu1").hover(function(){
					$(this).stop().animate({width:"1264",fontSize:"22px"},800,null);
					$(".s_h_sy_right_dibu2").stop().animate({width:"0",fontSize:"5px","color":"transparent"},800,function(){
						$(".s_h_sy_right_dibu2").css("display","none");
					});
				},function(){
					$(".s_h_sy_right_dibu2").css("display","block");
					$(this).stop().animate({width:"628",fontSize:"15px","color":"white"},800,null);
					$(".s_h_sy_right_dibu2").stop().animate({width:"628",fontSize:"15px","color":"white"},800,null);
				});
				$(".s_h_sy_right_dibu2").hover(function(){
					$(this).stop().animate({width:"1264",fontSize:"22px"},800,null);
					$(".s_h_sy_right_dibu1").stop().animate({width:"0",fontSize:"5px","color":"transparent"},800,function(){
						$(".s_h_sy_right_dibu1").css("display","none");
					});
				},function(){
					$(".s_h_sy_right_dibu1").css("display","block");
					$(this).stop().animate({width:"628",fontSize:"15px","color":"white"},800,null);
					$(".s_h_sy_right_dibu1").stop().animate({width:"628",fontSize:"15px","color":"white"},800,null);
				});
				$("#deletes").click(function() {
					var del=[];
					$(":checkbox").each(function(){
						if($(this).prop("checked")==true){
						del.push($(this).val());
						}
					});
					$("#deletes").attr("href","/roseOnly/ShopServlet?op=deletes&det="+del);
				});
				//通过ajax实现访问
				/*$.ajax({
					type:"post",
					url:"/roseOnly/ShopServlet",
					data:{"op":"inputAll"},
					success : function(x){
						var y=eval("("+x+")");
						for(var i=0;i<y.length;i++){
							$("#shopName").jsp(y[i].name);
							alert(y.name);
							$("#shopType").jsp(y[i].type);
							$("#shopPrice").jsp(y[i].price);
							$("#shopNumber").jsp(y[i].number);
						}
					}
				});*/
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
						<li class="header">商品模块菜单</li>
						<li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-inbox" name="ico" menu="商品管理"></i>
								<span>商品管理</span>
								<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/goods/Shop_hotai_shouye.jsp"><i class="glyphicon glyphicon-record"></i>商品列表</a>
								</li>
								<li>
									<a href="/roseOnly/goods/Shop_hotai_addShop.jsp"><i class="glyphicon glyphicon-record"></i>添加商品</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-list" name="ico" menu="商品分类"></i>
								<span>商品分类</span>
								<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/goods/Shop_hotai_Type.jsp"><i class="glyphicon glyphicon-record"></i>分类列表</a>
								</li>
								<li>
									<a href="/roseOnly/goods/Shop_hotai_addType.jsp"><i class="glyphicon glyphicon-record"></i>添加分类</a>
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
            			<a href="##"><img src="img/zhuye.png"/>商品</a>
            			<span>/</span>
            			<p href="##">商品列表</p>
            		</div>
            	</div>
            	<div class="s_h_sy_right_caozuo">
            		<a href="/roseOnly/TypeServlet?op=inputAll&x=shop"><input type="button" value="添加商品" name="add"/></a>
            		<a><input type="button" value="全选" id="quan"/></a>
            		<a href="" id="deletes"><input type="button" value="删除" id="delete"/></a>
            	</div>
            	<div class="s_h_sy_right_neirong">
            		<table>
            			<tr>
            				<th></th>
            				<th>商品名称</th>
            				<th>分类</th>
            				<th>销售价</th>
            				<th>库存</th>
            				<th>状态</th>
            				<th>排序</th>
            				<th>操作</th>
            			</tr>
            			<c:forEach var="list" items="${shopList }">
            				<tr>
            					<td style="width: 20px;padding: 10px;">
            					<input type="checkbox" name="gou" value="${list.commodity_name }"/>
            				</td>
            				<td>
            					<img src="img/chooce1.png" />
            					${list.commodity_name }
            				</td>
            				<td>${list.describe_one }</td>
            				<td>${list.price }</td>
            				<td>${list.total_number }</td>
            				<td>上架</td>
            				<td>1</td>
            				<td><a href="/roseOnly/ShopServlet?op=update&x=shop&choose=bj&name=${list.commodity_name }&typeid=${list.type_id}&comType=${list.commodity_type_id}&xl=${list.series_id}&gg=${list.specifications_id}&price=${list.price}&number=${list.total_number}">编辑</a>&nbsp;&nbsp;<a href="/roseOnly/ShopServlet?op=deletes&one=${list.commodity_name }&choose=houtai">删除</a></td>
            				</tr>
            			</c:forEach>
            		</table>
            	</div>
            	<div class="s_h_sy_right_dibu1">
            		热销商品
            	</div>
            	<div class="s_h_sy_right_dibu2">
            		新商品
            	</div>
            </div>
		</div>
	</body>

</html>