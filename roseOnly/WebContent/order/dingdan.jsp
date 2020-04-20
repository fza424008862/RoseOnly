<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://localhost:8080/pageTag/WEB-INF/mypage.tld" prefix="f" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<!-- Font-Awesome -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" />

		<title></title>
		<style type="text/css">
			* {
				margin: 0px;
				padding: 0px;
			}
			
			#container {
				margin: 0 auto;
				background: rgb(255, 255, 255);
			}
			
			#content_left {
				width: 230px;
				position: fixed;
				background-color: #222d32;
			}
			
			.content_left1 {
				height: 50px;
				font-size: 20px;
				line-height: 50px;
				text-align: center;
				width: 230px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				font-weight: 300;
				overflow: hidden;
				background-color: #282d2f;
			}
			
			.logo {
				width: 200px;
				height: 50px;
				color: #FFFFFF;
			}
			
			.sidebar {
				background-color: #222d32;
				width: 230px;
				height: auto;
				padding-bottom: 10px;
				min-height: 100%;
			}
			
			.user {
				width: 230px;
				height: 55px;
				white-space: nowrap;
				overflow: hidden;
				position: relative;
				width: 100%;
				padding: 10px;
			}
			
			.user1 {
				width: 27px;
				height: 54px;
				float: left;
			}
			
			.user2 {
				width: 75px;
				height: 47px;
				color: #fff;
				float: left;
				padding-left: 5px;
				line-height: 1;
				position: absolute;
				left: 55px;
			}
			
			.user2 p {
				margin: 0 0 9px;
				color: #FFFFFF;
				font-weight: 600;
				font-size: 14px;
			}
			
			.user2 a {
				margin: 0 0 9px;
				color: #FFFFFF;
				font-size: 11px;
				text-decoration: none;
			}
			
			.sidebar>ul {
				width: 230px;
				height: auto;
				overflow: hidden;
				list-style: none;
			}
			.ul1 li a{
				color: #8aa4af !important;
			}
			.ul1 li a:hover{
				color: white !important;
			}
			
			.sidebar>ul li {
				position: relative;
			}
			
			.sidebar>ul .li1 {
				color: #4b646f;
				background: #1a2226;
				overflow: hidden;
				text-overflow: clip;
				white-space: nowrap;
				padding: 10px 25px 10px 15px;
				font-size: 12px;
				height: 18px;
				width: 230px;
			}
			
			.sidebar>ul .li2 {
				height: auto;
				width: 230px;
			}
			div{
				display: block;
			}
			
			.div1 {
				height: 44px;
				width: 230px;
			}
			
			.div1 div {
				float: left;
				height: 20px;
				color: #b8c7ce;
				font-size: 14px;
				margin-left: 10px;
				margin-top: 13px;
			}
			
			.div1 .div11 {
				margin-top: 11px;
			}
			
			.div1 .div12 {
				margin-left: 105px;
			}
			
			.ul1 {
				height: 30px;
				width: 230px;
				margin: 0 1px;
				background: #2c3b41;
				display: none;
			}
			
			.ul1 li {
				height: 30px;
				width: 223px;
			}
			li{
				list-style: none;
			}
			
			.ul1 li div {
				height: 20px;
				width: 14px;
				float: left;
				margin-top: 7px;
				margin-left: 12px;
			}
			
			.ul1 li a {
				float: left;
				color: #fff;
				margin-top: 6px;
				font-size: 14px;
				margin-left: 11px;
				text-decoration: none;
			}
			
			.sidebar>ul .li3 {
				height: auto;
				width: 230px;
			}
			
			.sidebar>ul .li4 {
				height: auto;
				width: 230px;
			}
			
			#header {
				width: 100%;
				height: 50px;
				position: fixed;
				background-color: #2f3638;
			}
			
			.header1 {
				width: 509px;
				height: 50px;
				float: right;
			}
			
			.header1 ul {
				width: 509px;
				height: 50px;
				list-style: none;
				float: right;
			}
			
			.header1 ul li {
				width: 58px;
				height: 50px;
				float: left;
			}
			a{
				text-decoration: none;
			}
			.header1 ul li div {
				width: 58px;
				height: 35px;
				color: #f6f6f6;
				line-height: 20px;
				text-align: center;
				padding-top: 13px;
				cursor: pointer;
			}
			
			.header1 ul li div:hover {
				background: rgba(0, 0, 0, 0.1);
			}
			
			#li6{
				background: rgba(0, 0, 0, 0.1);
			}
			/*订单导航栏开始*/
			.breadcrumbs{
				position: relative;
			    border-bottom: 1px solid #E5E5E5;
			    background-color: #F5F5F5;
			    min-height: 41px;
			    line-height: 40px;
			    padding: 0 12px 0 0;
			    width: 82.2%;
			    left: 230px;
			    top: 50px;
			}
			.breadcrumb, .breadcrumb>li>a, .btn{
				display: inline-block;
			}
			.breadcrumb{
				background-color: transparent;
			    line-height: 20px;
			    margin: 10px 22px 0 12px;
			    padding: 0;
			    font-size: 13px;
			    color: #333;
			    border-radius: 0;
			    list-style: none;
			}
			.breadcrumb>li, .breadcrumb>li.active{
				color: #555;
			    padding: 0 3px;
			}
			.breadcrumb>li{
				display: inline-block;
			}
			.breadcrumb .home-icon{
				font-size: 20px;
			    margin-left: 2px;
			    margin-right: 2px;
			    vertical-align: top;
			    text-align: center;
			}
			.breadcrumb>li>a{
				color: #4C8FBD;
			}
			.breadcrumb>li+li:before{
				padding: 0 5px;
			    color: #ccc;
			    content: "/\00a0";
			}
			/*内容开始*/
			.content {
				width: 81%;
				float: right;
			    margin-top: -150px;
				background-color: #FFFFFF;
			    min-resolution: res;height: 250px;
			    padding: 15px;
			    margin-right: auto;
			    margin-left: auto;
			    padding-left: 15px;
			    padding-right: 15px;
			    height: auto;
			}
			.table{
				width: 100%;
			    max-width: 100%;
			    margin-bottom: 20px;
			}
			table{
				background-color: transparent;
			    border-spacing: 0;
			    border-collapse: collapse;
			}
			caption{
				padding-bottom: 15px;
				color: #777;
				text-align: left;
				padding-top: 15px;
			}
			.breadcrumb, .breadcrumb>li>a, .btn{
				display: inline-block;
			}
			.btn-default{
				background-color: #f4f4f4;
			    color: #444;
			    border-color: #ddd;
			}
			.btn{
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
			.fa{
				display: inline-block;
			    font: normal normal normal 14px/1 FontAwesome;
			    font-size: inherit;
			    text-rendering: auto;
			}
			.btn-group, .btn-group-vertical{
				position: relative;
				display: inline-block;
				vertical-align: middle;
			}
			.btn-group>.btn:first-child:not(:last-child):not(.dropdown-toggle){
				border-top-right-radius: 0;
    			border-bottom-right-radius: 0;
			}
			.btn-group>.btn:first-child{
				margin-left:0px;
			}
			.btn-group-vertical>.btn, .btn-group>.btn{
				position: relative;
    			float: left;
			}
			.breadcrumb, .breadcrumb>li>a, .btn{
				display: inline-block;
			}
			.btn-group>.btn+.dropdown-toggle{
				padding-right: 8px;
    			padding-left: 8px;
			}
			.btn .caret{
				margin-left: 0;
			}
			.caret{
				display: inline-block;
				width: 0;
				height: 0;
				vertical-align: middle;
				border-top: 4px dashed;
				border-right: 4px solid transparent;
				border-left: 4px solid transparent;
			}
			.plcz{
				width: 180px;
				height: 60px;
				position: absolute;
				top: 32px;
				display: none;
				border: 1px solid rgb(238,238,238);
			}
			.plcz ul{
				margin-top: 5px;
			}
			.plcz ul li{
				padding-left: 10px;
				margin-top: 5px;
			}
			.plcz ul li:hover{
				background-color: rgb(225,227,233);
				cursor:pointer ;
			}
			.table>thead>tr>th{
				border-bottom: 2px solid #f4f4f4;
				padding: 8px;
    			line-height: 1.42857143;
			}
			body{
				font-size: 14px;
				background-color: #3a4144;
			}
			th{
				text-align: left;
			}
			.table>caption+thead>tr:first-child>th{
				border-top: 0px;
			}
			table.table.list-table td{
				vertical-align: middle;
			}
			.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td{
				border-top: 1px solid #f4f4f4;
			}
			.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{
				padding: 8px;
    			line-height: 1.42857143;
    			border-top: 1px solid #ddd;
			}
			.operator.fa{
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
			.pagination > li {
			  display: inline !important;
			  width:auto !important;
			  height:auto !important;
			  border:none !important;
			  margin:0 !important;
			  padding: 0 !important;
			}
			.pagination > li > a {
			  position: relative !important;
			  float: left !important;
			  padding: 6px 12px !important;
			  line-height: 1.42857143 !important;
			  text-decoration: none !important;
			  color: #337ab7;
			  background-color: #fff;
			  border: 1px solid #ddd;
			  margin-left: -1px !important;
			  width:auto !important;
			  height:auto !important;
			}
			.pagination > li:first-child > a {
			  margin-left: 0 !important;
			  border-bottom-left-radius: 4px !important;
			  border-top-left-radius: 4px !important;
			}
			.pagination > li:last-child > a {
			  border-bottom-right-radius: 4px !important;
			  border-top-right-radius: 4px !important;
			}
			.pagination > li > a:hover,
			.pagination > li > a:focus {
			  z-index: 2 !important;
			  color: #23527c;
			  background-color: #eeeeee;
			  border-color: #ddd !important;
			}
			.pagination > .active > a,
			.pagination > .active > a:hover,
			.pagination > .active > a:focus {
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

	<body onload="setWidth()">
		<div id="container">
			<!--头部-->
			<div id="header">
				<div class="header1">
					<ul>
						<li name="li1">
							<div class="header11">商品</div>
						</li>
						<li name="li1">
							<div>会员</div>
						</li>
						<li name="li1">
							<div><a href="${pageContext.request.contextPath }/SaleQueryServlet?txtpage=1">订单</a></div>
						</li>
						<li name="li1">
							<div>营销</div>
						</li>
						<li name="li1">
							<div>统计</div>
						</li>
						<li name="li1" id="li6">
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
							<img src="${pageContext.request.contextPath }/img/left1.png" />
						</div>
						<div class="user2">
							<p>admin</p>
							<a href="#">超级管理员</a>
						</div>
					</div>

					<ul>
						<li class="li1">订单模块菜单</li>
						<li class="li2">
							<div class="div1">
								<div>
									<img src="${pageContext.request.contextPath }/img/left2.png" />
								</div>
								<div class="div11">订单管理</div>
								<div class="div12">
									<img class="img1" src="${pageContext.request.contextPath }/img/left12.png" />
								</div>
							</div>
						<ul class="ul1" name="ul2" style="display: block;">
							<li>
								<div>
									<img src="${pageContext.request.contextPath }/img/left10.png" />
								</div>
								<a href="${pageContext.request.contextPath }/SaleQueryServlet?txtpage=1">订单列表</a>
							</li>
						</ul>
						<ul class="ul1" name="ul2" style="display: block;">
							<li>
								<div>
									<img src="${pageContext.request.contextPath }/img/left10.png" />
								</div>
								<a href="tksq.jsp">退款申请列表</a>
							</li>
						</ul>
						<ul class="ul1" name="ul2" style="display: block;">
							<li>
								<div>
									<img src="${pageContext.request.contextPath }/img/left10.png" />
								</div>
								<a href="hhsq.jsp">换货申请列表</a>
							</li>
						</ul>
						</li>
						<!--订单管理分页结束-->				
						
						<li class="li3">
							<div class="div1">
								<div>
									<img src="${pageContext.request.contextPath }/img/left2.png" />
								</div>
								<div class="div11">单据管理</div>
									<div class="div12">
										<img class="img1" src="${pageContext.request.contextPath }/img/left9.png" />
									</div>
							</div>
							<ul class="ul1" id="x">
								<li>
									<div>
										<img src="${pageContext.request.contextPath }/img/left10.png" />
									</div>
									<a href="##">收款单</a>
								</li>
							</ul>
							<ul class="ul1" name="ul3">
								<li>
									<div>
										<img src="${pageContext.request.contextPath }/img/left10.png" />
									</div>
									<a href="##">发货单</a>
								</li>
							</ul>
							<ul class="ul1" id="x">
								<li>
									<div>
										<img src="${pageContext.request.contextPath }/img/left10.png" />
									</div>
									<a href="##">退款单</a>
								</li>
							</ul>
							<ul class="ul1" name="ul3">
								<li>
									<div>
										<img src="${pageContext.request.contextPath }/img/left10.png" />
									</div>
									<a href="##">换货单</a>
								</li>
							</ul>
						</li>
						<!--单据管理结束-->
						
						<li class="li4">
							<div class="div1">
								<div>
									<img src="${pageContext.request.contextPath }/img/left2.png" />
								</div>
								<div class="div11">发货地址</div>
									<div class="div12">
										<img class="img1" src="${pageContext.request.contextPath }/img/left9.png" />
									</div>
							</div>
							<ul class="ul1" id="x">
								<li>
									<div>
										<img src="${pageContext.request.contextPath }/img/left10.png" />
									</div>
									<a href="##">发货地址管理</a>
								</li>
							</ul>
						</li>
						<!--收货地址管理结束-->
					</ul>
				</section>
			</div>
			<!--左边内容结束-->
			<div id="admin_right" class="content-wrapper" style="min-height: 225px;">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="fa fa-home fa-fw" aria-hidden="true"></i>
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