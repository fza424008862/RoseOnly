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
		<link rel="stylesheet" href="/roseOnly/css/Shop_hotai_addShop.css" />
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.js"></script>
		<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js"></script>
		<script type="text/javascript" src="/roseOnly/js/adminlte.min.js"></script>
		<script type="text/javascript" src="/roseOnly/js/jquery-1.11.0.min.js" ></script>
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
				$("#add_img").hover(function(){
					$(this).stop().animate({"background-color":"white","color":"black"},500,null);
					$(this).css("opacity",".9")
				},function(){
					$(this).stop().animate({"background-color":"transparent","color":"white"},500,null);
					$(this).css("opacity",".7")
				});
				var i=0;
				$("#add_img").click(function(){
					var tr=$("<tr>");;
					tr.appendTo($("#shuju"));
					var td=$("<td>");
					td.jsp($("<input>").attr("type", "file").attr("name","myFile"));
					var det=$("<td>");
					det.jsp($("<a>").css("cursor","pointer").css("text-decoration","none").css("color","white").jsp("删除").attr("class","dee"));
					var img=$("<select style='margin-top:15px;width:80px;height:30px;' name='img_type' id='imgtype"+i+"'>"+
								"<option>--未选择--</option>"+
								"<option>主图</option>"+
								"<option>副图</option>"+
								"</select>");
					/*var img_zhutu=$("<option>");
					img_zhutu.jsp("主图");*/
					det.appendTo(tr);
					td.appendTo(tr);
					img.appendTo(tr);
					i++;
					$(".dee").click(function(){
						$(this).parent().parent().remove();
					});
				});
				
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
				
				var choose="${requestScope.choose }";
				if(choose=="bj"){
					var oldname="${requestScope.name}";
					var name=$("#name").val("${requestScope.name}");
					var type=$("#type").val("${requestScope.type}");
					var lx=$("#lx").val("${requestScope.comType}");
					var xl=$("#xl").val("${requestScope.xl}");
					var gg=$("#gg").val("${requestScope.gg}");
					var price=$("#price").val("${requestScope.price}");
					var number=$("#number").val("${requestScope.number}");
					$("#name").change(function(){
						name=$("#name").val();
						type=$("#type").val();
						lx=$("#lx").val();
						xl=$("#xl").val();
						gg=$("#gg").val();
						price=$("#price").val();
						number=$("#number").val();
						$("#bianji").attr("action","/roseOnly/ShopServlet?op=update&choose=bc&oldname="+oldname+"&name="+name+"&type="+type+"&lx="+lx+"&xl="+xl+"&gg="+gg+"&price="+price+"&number="+number);
					});
					$("#type").change(function(){
						name=$("#name").val();
						type=$("#type").val();
						lx=$("#lx").val();
						xl=$("#xl").val();
						gg=$("#gg").val();
						price=$("#price").val();
						number=$("#number").val();
						$("#bianji").attr("action","/roseOnly/ShopServlet?op=update&choose=bc&oldname="+oldname+"&name="+name+"&type="+type+"&lx="+lx+"&xl="+xl+"&gg="+gg+"&price="+price+"&number="+number);
					});
					$("#lx").change(function(){
						name=$("#name").val();
						type=$("#type").val();
						lx=$("#lx").val();
						xl=$("#xl").val();
						gg=$("#gg").val();
						price=$("#price").val();
						number=$("#number").val();
						$("#bianji").attr("action","/roseOnly/ShopServlet?op=update&choose=bc&oldname="+oldname+"&name="+name+"&type="+type+"&lx="+lx+"&xl="+xl+"&gg="+gg+"&price="+price+"&number="+number);
					});
					$("#xl").change(function(){
						name=$("#name").val();
						type=$("#type").val();
						lx=$("#lx").val();
						xl=$("#xl").val();
						gg=$("#gg").val();
						price=$("#price").val();
						number=$("#number").val();
						$("#bianji").attr("action","/roseOnly/ShopServlet?op=update&choose=bc&oldname="+oldname+"&name="+name+"&type="+type+"&lx="+lx+"&xl="+xl+"&gg="+gg+"&price="+price+"&number="+number);
					});
					$("#gg").change(function(){
						name=$("#name").val();
						type=$("#type").val();
						lx=$("#lx").val();
						xl=$("#xl").val();
						gg=$("#gg").val();
						price=$("#price").val();
						number=$("#number").val();
						$("#bianji").attr("action","/roseOnly/ShopServlet?op=update&choose=bc&oldname="+oldname+"&name="+name+"&type="+type+"&lx="+lx+"&xl="+xl+"&gg="+gg+"&price="+price+"&number="+number);
					});
					$("#price").change(function(){
						name=$("#name").val();
						type=$("#type").val();
						lx=$("#lx").val();
						xl=$("#xl").val();
						gg=$("#gg").val();
						price=$("#price").val();
						number=$("#number").val();
						$("#bianji").attr("action","/roseOnly/ShopServlet?op=update&choose=bc&oldname="+oldname+"&name="+name+"&type="+type+"&lx="+lx+"&xl="+xl+"&gg="+gg+"&price="+price+"&number="+number);
					});
					$("#number").change(function(){
						name=$("#name").val();
						type=$("#type").val();
						lx=$("#lx").val();
						xl=$("#xl").val();
						gg=$("#gg").val();
						price=$("#price").val();
						number=$("#number").val();
						$("#bianji").attr("action","/roseOnly/ShopServlet?op=update&choose=bc&oldname="+oldname+"&name="+name+"&type="+type+"&lx="+lx+"&xl="+xl+"&gg="+gg+"&price="+price+"&number="+number);
					});
					$("#Preservation").val("保存");
					$("#Preservation").click(function(){
						$("#bianji").submit();
					});
				}
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
						<a href="##"><img src="img/zhuye.png" />商品</a>
						<span>/</span>
						<a href="/roseOnly/TypeServlet?op=inputAll&x=shop">添加商品</a>
					</div>
				</div>
				<div class="s_h_sy_right_caozuo">
					<div class="add">商品信息</div>
					<div class="ms">商品描述</div>
				</div>
				<div class="s_h_sy_right_neirong" id="addxx">
					<form action="/roseOnly/ShopServlet?op=addShop&choose=houtai" enctype="multipart/form-data" method="post" id="bianji">
						<table id="shuju">
							<tr>
								<td>添加的商品名称&nbsp;:</td>
								<td><input type="text" class="addtext" name="shop_name" id="name"/></td>
								<td></td>
							</tr>
							<tr>
								<td>商品类别&nbsp;:</td>
								<td>
									<select name="shop_type" id="type">
										<option>--未选择--</option>
										<c:forEach var="lists" items="${typeAll}">
											<option>${lists.type_name}</option>
										</c:forEach>
									</select>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>商品类型&nbsp;:</td>
								<td>
								
									<select name="shop_lx" id="lx">
										<option>--未选择--</option>
										<c:forEach var="lists" items="${commodityTypeAll}">
											<option>${lists.commodity_type_name}</option>
										</c:forEach>
									</select>
								
								</td>
								<td></td>
							</tr>
							<tr>
								<td>商品系列&nbsp;:</td>
								<td>
									<select name="shop_series" id="xl">
										<option>--未选择--</option>
										<c:forEach var="lists" items="${seriesAll}">
											<option>${lists.series_name}</option>
										</c:forEach>
									</select>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>商品规格&nbsp;:</td>
								<td>
									<select name="shop_specifications" id="gg">
										<option>--未选择--</option>
										<c:forEach var="lists" items="${specificationsAll}">
											<option>${lists.specifications_name}</option>
										</c:forEach>
									</select>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>商品价格&nbsp;:</td>
								<td>
									<input type="text" class="addnumber" name="shop_price" id="price"/>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>商品数量&nbsp;:</td>
								<td>
									<input type="number" class="addnumber" name="shop_number" id="number"/>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>商品图片&nbsp;:</td>
								<td>
									<input type="button" id="add_img" value="添加图片" name="shop_img"/>
								</td>
								<td></td>
							</tr>
						</table>
						<input type="submit" value="提交" style="width:80px;height:40px;margin-left: 150px;" id="Preservation"/>
					</form>
				</div>
			</div>
		</div>
	</body>

</html>