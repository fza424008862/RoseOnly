<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://localhost:8080/pageTag/WEB-INF/mypage.tld" prefix=f %>
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
		<link rel="stylesheet" href="/roseOnly/css/font-awesome.min.css" />
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.js"></script>
		<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js"></script>
		<script type="text/javascript" src="/roseOnly/js/adminlte.min.js"></script>
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.min.js" ></script>
		
		<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
		<style type="text/css">
			/*内容开始*/
			
			.content {
				width: 85%;
				float: right;
				margin-top: -650px;
				background-color: #FFFFFF;
				min-resolution: res;
				height: 250px;
				padding: 15px;
				margin-right: auto;
				margin-left: auto;
				padding-left: 15px;
				padding-right: 15px;
				height: auto;
			}
			
			.table {
				width: 100%;
				max-width: 100%;
				margin-bottom: 20px;
			}
			
			table {
				background-color: transparent;
				border-spacing: 0;
				border-collapse: collapse;
			}
			
			caption {
				padding-bottom: 15px;
				color: #777;
				text-align: left;
				padding-top: 15px;
			}
			
			.breadcrumb,
			.breadcrumb>li>a,
			.btn {
				display: inline-block;
			}
			
			.btn-default {
				background-color: #f4f4f4;
				color: #444;
				border-color: #ddd;
			}
			
			.btn {
				border-radius: 3px;
				box-shadow: none;
				border: 1px solid transparent;
				padding: 6px 12px;
				margin-bottom: 0;
				font-size: 14px;
				font-weight: 400;
				line-height: 1.42857143;
				text-align: center;
				white-space: nowrap;
				vertical-align: middle;
				cursor: pointer;
			}
			
			.fa {
				display: inline-block;
				font: normal normal normal 14px/1 FontAwesome;
				font-size: inherit;
				text-rendering: auto;
			}
			
			.btn-group,
			.btn-group-vertical {
				position: relative;
				display: inline-block;
				vertical-align: middle;
			}
			
			.btn-group>.btn:first-child:not(:last-child):not(.dropdown-toggle) {
				border-top-right-radius: 0;
				border-bottom-right-radius: 0;
			}
			
			.btn-group>.btn:first-child {
				margin-left: 0px;
			}
			
			.btn-group-vertical>.btn,
			.btn-group>.btn {
				position: relative;
				float: left;
			}
			
			.breadcrumb,
			.breadcrumb>li>a,
			.btn {
				display: inline-block;
			}
			
			.btn-group>.btn+.dropdown-toggle {
				padding-right: 8px;
				padding-left: 8px;
			}
			
			.btn .caret {
				margin-left: 0;
			}
			
			.caret {
				display: inline-block;
				width: 0;
				height: 0;
				vertical-align: middle;
				border-top: 4px dashed;
				border-right: 4px solid transparent;
				border-left: 4px solid transparent;
			}
			
			.plcz {
				width: 180px;
				height: 60px;
				position: absolute;
				top: 32px;
				display: none;
				border: 1px solid rgb(238, 238, 238);
			}
			
			.plcz ul {
				margin-top: 5px;
			}
			
			.plcz ul li {
				padding-left: 10px;
				margin-top: 5px;
			}
			
			.plcz ul li:hover {
				background-color: rgb(225, 227, 233);
				cursor: pointer;
			}
			
			.table>thead>tr>th {
				border-bottom: 2px solid #f4f4f4;
				padding: 8px;
				line-height: 1.42857143;
			}
			
			body {
				font-size: 14px;
				background-color: #3a4144;
			}
			
			th {
				text-align: left;
			}
			
			.table>caption+thead>tr:first-child>th {
				border-top: 0px;
			}
			
			table.table.list-table td {
				vertical-align: middle;
			}
			
			.table>thead>tr>th,
			.table>tbody>tr>th,
			.table>tfoot>tr>th,
			.table>thead>tr>td,
			.table>tbody>tr>td,
			.table>tfoot>tr>td {
				border-top: 1px solid #f4f4f4;
			}
			
			.table>tbody>tr>td,
			.table>tbody>tr>th,
			.table>tfoot>tr>td,
			.table>tfoot>tr>th,
			.table>thead>tr>td,
			.table>thead>tr>th {
				padding: 8px;
				line-height: 1.42857143;
				border-top: 1px solid #ddd;
			}
			
			.operator.fa {
				min-width: 28px;
				font-size: 20px;
			}
			/*分页栏样式*/
			
			.pagination {
				display: inline-block;
				padding-left: 232px;
				margin: 10px 0;
				border-radius: 4px;
			}
			
			.pagination>li {
				display: inline !important;
				width: auto !important;
				height: auto !important;
				border: none !important;
				margin: 0 !important;
				padding: 0 !important;
			}
			
			.pagination>li>a {
				position: relative !important;
				float: left !important;
				padding: 6px 12px !important;
				line-height: 1.42857143 !important;
				text-decoration: none !important;
				color: #337ab7;
				background-color: #fff;
				border: 1px solid #ddd;
				margin-left: -1px !important;
				width: auto !important;
				height: auto !important;
			}
			
			.pagination>li:first-child>a {
				margin-left: 0 !important;
				border-bottom-left-radius: 4px !important;
				border-top-left-radius: 4px !important;
			}
			
			.pagination>li:last-child>a {
				border-bottom-right-radius: 4px !important;
				border-top-right-radius: 4px !important;
			}
			
			.pagination>li>a:hover,
			.pagination>li>a:focus {
				z-index: 2 !important;
				color: #23527c;
				background-color: #eeeeee;
				border-color: #ddd !important;
			}
			
			.pagination>.active>a,
			.pagination>.active>a:hover,
			.pagination>.active>a:focus {
				z-index: 3 !important;
				color: #fff;
				background-color: #337ab7;
				border-color: #337ab7;
				cursor: default !important;
			}
			.fh{
				width:40px;
				height: 20px;
			}
		</style>
		<script src="${pageContext.request.contextPath }/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript">
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
							$(".li2 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						i = 2;
					} else {
						$(".li2 .ul1").slideDown(500, function() {
							$(".li2 .img1").attr("src", "${pageContext.request.contextPath }/img/left12.png");
						});
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						i = 1;
					}
				});

				$(".li3 .div1").click(function() {
					if(i == 1) {
						$(".li3 .ul1").slideDown(500, function() {
							$(".li3 .img1").attr("src", "${pageContext.request.contextPath }/img/left12.png");
						});
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						$(".li2 .ul1").slideUp(500, function() {
							$(".li2 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						i = 2;
					} else {
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						i = 1;
					}
				});
				
				$(".li4 .div1").click(function() {
					if(i == 1) {
						$(".li4 .ul1").slideDown(500, function() {
							$(".li4 .img1").attr("src", "${pageContext.request.contextPath }/img/left12.png");
						});
						$(".li2 .ul1").slideUp(500, function() {
							$(".li2 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						i = 2;
					} else {
						$(".li4 .ul1").slideUp(500, function() {
							$(".li4 .img1").attr("src", "${pageContext.request.contextPath }/img/left9.png");
						});
						i = 1;
					}
				});
				
				$(".header1 ul li").click(function(){
					var l=document.getElementsByName("li1");
					for(var i=0;i<l.length;i++){
						l[i].style.background="#367fa9";
					}
					$(this).css("background","rgb(48, 114, 152)");
				});
				
				$(".fh").click(function(){
	      			var a=[];
	      			a.push($(this).parent().parent().find(".text-red").text());     				
	      			alert("您已成功发货,订单号为:"+a+"");
	      			$(this).attr("href","${pageContext.request.contextPath }/SaleServlet?op=fahuo&sale_id="+a+"&txtpage=1");
	      		});
				
				
			});
		</script>
		<!--点击事件弹出div-->
		
		<script>
		var t=true;
			$(function(){
			$("#btn1").click(function(){
			if(t==true){
					$(".plcz").css("display","block");
					t=false;
			}else{
					$(".plcz").css("display","none");
					t=true;
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
						<li class="header">订单模块菜单</li>
						<li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-file" name="ico" menu="订单管理"></i>
								<span>订单管理</span>
								<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/order/dingdan.jsp"><i class="glyphicon glyphicon-record"></i>订单列表</a>
								</li>
							</ul>
						</li>
					</ul>
				</section>
			</aside>
			<!--左侧菜单 结束-->
			<!--右侧内容开始-->
			<div id="admin_right" class="content-wrapper" style="min-height: 225px;">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="glyphicon glyphicon-home" aria-hidden="true"></i>
							<a href="#">订单</a>
						</li>
						<li>
							<a href="#">订单管理</a>
						</li>
						<li class="active">订单列表</li>
					</ul>
				</div>
			</div>
			<!--内容开始-->
			<div class="content" style="border: 1px solid red;">
				<table class="table list-table">
					<colgroup>
						<col width="35px">
						<col width="165px">
						<col width="80px">
						<col width="80px">
						<col width="80px">
						<col width="80px">
						<col width="90px">
						<col>
						<col width="90px">
						<col width="120px">
					</colgroup>
					<caption>
						<a href="##" class="btn btn-default">
							<i class="fa fa-check"></i>全选
						</a>
						<a href="##" class="btn btn-default">
							<i class="fa fa-search"></i>检索
						</a>
					</caption>
					<thead>
						<tr>
							<th></th>
							<th>订单号</th>
							<th>收货人</th>
							<th>支付状态</th>
							<th>订单状态</th>
							<th>支付方式</th>
							<th>用户名</th>
							<th>下单时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<form name="orderForm" id="orderForm" action="" method="post"></form>
					<!--订单内容-->
					<tbody>
					<c:forEach var="x" items="${salelist }">
						<tr>
							<td><input name="id[]" type="checkbox"></td>
							<td title="${x.sale_id }" name="orderStatusColor4" class="text-red">${x.sale_id }</td>
							<td title="${x.receiving_name }">${x.receiving_name }</td>
							<c:if test="${x.order_status==1 }">
							<td name="payStatusColor0" style="color: #00a65a;">已付款</td>
							</c:if>
							<c:if test="${x.order_status==2 }">
							<td name="payStatusColor0" style="color: #00a65a;">未付款</td>
							</c:if>
							<c:if test="${x.pay_status==1 }">
							<td name="disStatusColor0">未发货</td>
							</c:if>
							<c:if test="${x.pay_status==2 }">
							<td name="disStatusColor0">已发货</td>
							</c:if>
							<c:if test="${x.pay_status==3 }">
							<td name="disStatusColor0">已签收</td>
							</c:if>
							<c:if test="${x.pay_status==4 }">
							<td name="disStatusColor0">已完成</td>
							</c:if>
							<td>${x.pay_way }</td>
							<td>${x.user_id }</td>
							<td title="${x.date_in }">${x.date_in }</td>
							<td>
								<c:if test="${x.order_status==1}">
								<c:if test="${x.pay_status==1 }">
								<a class="fh" href=""><input  type="button" value="发货" title="发货"></input></a>
								</c:if>
								</c:if>
							</td>
								
						</tr>
					</c:forEach>
							
					</tbody>
				</table>
			</div>
		</div>
		
		<div style="clear:both">
			<ul class="pagination">
				<li class="active"><f:page pages="${pages }" url="${pageContext.request.contextPath }/SaleQueryServlet"/></li>
			</ul>
			
		</div>

	</body>

</html>