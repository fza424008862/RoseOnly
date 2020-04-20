<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<script src="js/jquery-3.1.0.min.js"></script>
		<script src="http://code.jquery.com/color/jquery.color-2.1.2.js"integrity="sha256-1Cn7TdfHiMcEbTuku97ZRSGt2b3SvZftEIn68UMgHC8="crossorigin="anonymous"></script>
		<script src="js/jquery.animate-colors.js"></script>
		<title>RoseOnly后台管理</title>
		<style type="text/css">
			* {
				margin: 0px;
				padding: 0px;
			}
			
			#container {
				height: 100%;
				margin: 0 auto;
				background: rgb(255, 255, 255);
			}
			
			#content_left {
				width: 230px;
				position: fixed;
				z-index: 999;
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
				background-color:#282D2F;
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
				width: 210px;
				height: 55px;
				white-space: nowrap;
				overflow: hidden;
				position: relative;
				padding: 10px;
				background-color: #1F2224;
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
			
			#header {
				width:100%;
				height: 50px;
				position: fixed;
				background-color: #2F3638;
				z-index: 99;
			}
			
			.header1 {
				width: 509px;
				height: 50px;
				float: right;
			}
			
			.header1 ul {
				width: 320px;
				height: 50px;
				list-style: none;
				float: right;
			}
			
			.header1 ul li {
				width: 58px;
				height: 50px;
				float: left;
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
			body{
				background-color: #3A4144;
			}
			.li1 div{
				color:#CFCFCF;
			}
			.s_h_sy_right{
				background-color: #3A4144;
				position: absolute;
				top:50px;
				left:230px;
				width: 1289px;
				height: 100%;
			}
			.s_h_sy_right_heard{
				background-color:#424B4F;
				width: 1283px;
				height: 20px;
				padding:20px 0px 20px 5px;
			}
			.s_h_sy_right_heard_left a{
				color:#CFCFCF;
				text-decoration: none;
				font-size: 18px;
			}
			.s_h_sy_right_heard_left img{
				vertical-align: middle;
			}
			.s_h_sy_right_heard_left span{
				color:#CFCFCF;
				margin-left:20px;
				margin-right:20px;
			}
			.s_h_sy_right_heard_left p{
				color:#CFCFCF;
				display: inline-block;
				cursor: pointer;
			}
			.s_h_sy_right_caozuo{
				border: 1px solid #33393c;
			    border-top: 2px solid #313639;
			    background: #4b5357;
			    color: #fff;
				width: 1260px;
				margin: 10px 0 0 10px;
				height: 20px;
				padding:20px 0 20px 5px;
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
				width: 1260px;
				margin: 10px 0 0 10px;
				padding:20px 0 20px 5px;
			}
			.s_h_sy_right_neirong table{
				width: 1260px;
				margin-bottom: 20px;
			}
			.s_h_sy_right_neirong table tr{
				/*box-sizing: border-box;
*/			}
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
				width: 420;
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
			    border-radius: 4px;..
			    vertical-align: middle;
			    float: left;
			}
			.s_h_sy_right_neirong a{
				text-decoration: none;
				color:white;
			}
			.s_h_sy_right_dibu1{
				margin: 10px 0px 10px 10px;
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
				margin: 10px 10px 10px 0px;
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
						i = 2;
					} else {
						$(".li2 .ul1").slideDown(500, function() {
							$(".li2 .img1").attr("src", "img/left12.png");
						});
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "img/left9.png");
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
						i = 2;
					} else {
						$(".li3 .ul1").slideUp(500, function() {
							$(".li3 .img1").attr("src", "img/left9.png");
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
					$("#deletes").attr("href","/roseOnly/TypeServlet?op=deletesClassification&det="+del+"&x=type");
				});
			});
		</script>
	</head>
	<body onload="setWidth()">
		<div id="container">
			<!--头部-->
			<div id="header">
				<div class="header1">
					<ul style="float: right;">
						<li name="li1" id="li6">
							<div class="header11">商品</div>
						</li>
						<li name="li1">
							<div>会员</div>
						</li>
						<li name="li1">
							<div>订单</div>
						</li>
						<li name="li1">
							<a href="/roseOnly/EmployeeServlet?op=enterEmployee&employee_name=admin&employee_pass=123456"><div>系统</div></a>
						</li>
						<li name="li1">
							<div>权限</div>
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
						<li class="li1">系统模块菜单</li>
						<li class="li2">
							<div class="div1">
								<div>
									<img src="img/left2.png" />
								</div>
								<div class="div11">商品管理</div>
								<div class="div12">
									<img class="img1" src="img/left9.png" />
								</div>
							</div>
							<ul class="ul1" name="ul2">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="/roseOnly/ShopServlet?op=inputAll&choose=houtai">商品列表</a>
								</li>
							</ul>
							<ul class="ul1" name="ul2">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="/roseOnly/TypeServlet?op=inputAll&x=shop">添加商品</a>
								</li>
							</ul>
							
						</li>
						<li class="li3">
							<div class="div1">
								<div>
									<img src="img/left2.png" />
								</div>
								<div class="div11">商品分类</div>
								<div class="div12">
									<img class="img1" src="img/left12.png" />
								</div>
							</div>
							<ul class="ul1" name="ul3"  style="display: block;">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="/roseOnly/TypeServlet?op=inputAll&x=type">分类列表</a>
								</li>
							</ul>
							<ul class="ul1" name="ul3"  style="display: block;">
								<li>
									<div>
										<img src="img/left10.png" />
									</div>
									<a href="Shop_hotai_addType.jsp">添加分类</a>
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
            			<a href="##"><img src="img/zhuye.png"/>商品</a>
            			<span>/</span>
            			<p href="##">商品分类</p>
            		</div>
            	</div>
            	<div class="s_h_sy_right_caozuo">
            		<a href="Shop_hotai_addType.jsp"><input type="button" value="添加分类" name="add"/></a>
            		<a><input type="button" value="全选" id="quan"/></a>
            		<a href="" id="deletes"><input type="button" value="删除" id="delete"/></a>
            	</div>
            	<div class="s_h_sy_right_neirong">
            		<table>
            			<tr>
            				<th></th>
            				<th>商品类别</th>
            				<th>操作</th>
            			</tr>
            			<c:forEach var="lists" items="${typeAll }">
            				<tr>
	            				<td style="width: 20px;padding: 10px;">
	            					<input type="checkbox" value="商品类别;${lists.type_id }" name="gou"/>
	            				</td>
	            				<td>
	            					${lists.type_name}
	            				</td>
	            				<td><a href="/roseOnly/TypeServlet?op=updateClassification&choose=edit&type=商品类别&typename=${lists.type_name }">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/roseOnly/TypeServlet?op=deleteOneClassification&x=type&classification=商品类别&delete=${lists.type_id }">删除</a></td>
	            			</tr>
            			</c:forEach>
            		</table>
            	</div>
            	<div class="s_h_sy_right_neirong">
            		<table>
            			<tr>
            				<th></th>
            				<th>商品类型</th>
            				<th>操作</th>
            			</tr>
            			<c:forEach var="lists" items="${commodityTypeAll }">
            				<tr>
	            				<td style="width: 20px;padding: 10px;">
	            					<input type="checkbox" value="商品类型;${lists.commodity_type_id }" name="gou"/>
	            				</td>
	            				<td>
	            					${lists.commodity_type_name}
	            				</td>
	            				<td><a href="/roseOnly/TypeServlet?op=updateClassification&choose=edit&type=商品类型&typename=${lists.commodity_type_name }">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/roseOnly/TypeServlet?op=deleteOneClassification&x=type&classification=商品类型&delete=${lists.commodity_type_id }">删除</a></td>
	            			</tr>
            			</c:forEach>
            		</table>
            	</div>
            	<div class="s_h_sy_right_neirong">
            		<table>
            			<tr>
            				<th></th>
            				<th>商品系列</th>
            				<th>操作</th>
            			</tr>
            			<c:forEach var="lists" items="${seriesAll }">
            				<tr>
	            				<td style="width: 20px;padding: 10px;">
	            					<input type="checkbox" value="商品系列;${lists.series_id }" name="gou"/>
	            				</td>
	            				<td>
	            					${lists.series_name}
	            				</td>
	            				<td><a href="/roseOnly/TypeServlet?op=updateClassification&choose=edit&type=商品系列&typename=${lists.series_name }">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/roseOnly/TypeServlet?op=deleteOneClassification&x=type&classification=商品系列&delete=${lists.series_id }">删除</a></td>
	            			</tr>
            			</c:forEach>
            		</table>
            	</div>
            	<div class="s_h_sy_right_neirong">
            		<table>
            			<tr>
            				<th></th>
            				<th>商品规格</th>
            				<th>操作</th>
            			</tr>
            			<c:forEach var="lists" items="${specificationsAll }">
            				<tr>
	            				<td style="width: 20px;padding: 10px;">
	            					<input type="checkbox" value="商品规格;${lists.specifications_id }" name="gou"/>
	            				</td>
	            				<td>
	            					${lists.specifications_name}
	            				</td>
	            				<td><a href="/roseOnly/TypeServlet?op=updateClassification&choose=edit&type=商品规格&typename=${lists.specifications_name }">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/roseOnly/TypeServlet?op=deleteOneClassification&x=type&classification=商品规格&delete=${lists.specifications_id }">删除</a></td>
	            			</tr>
            			</c:forEach>
            		</table>
            	</div>
            	<div class="s_h_sy_right_dibu1">
            		热销分类
            	</div>
            	<div class="s_h_sy_right_dibu2">
            		新分类
            	</div>
            </div>
		</div>
	</body>

</html>