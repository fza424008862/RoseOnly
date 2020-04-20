<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

	<head>
		<meta charset="utf-8" />
		<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
		<script>
			$(function() {
				//鼠标悬浮时，显示地区列表（CN 和 HK）
				$("#diqu_div").mouseover(function() {
					$("#diqu_ul").css("display", "block");
					$("#diqu_div").css("background-color", "rgb(86,86,86)");
				});
				//鼠标离开时，隐藏地区列表（CN 和 HK）
				$("#diqu_div").mouseout(function() {
					$("#diqu_ul").css("display", "none");
					$("#diqu_div").css("background-color", "#414141");
				});
				//鼠标悬浮时，地区列表的选项背景色变色
				$("#diqu_ul li").mouseover(function() {
					$(this).css("background-color", "rgb(114,114,114)");
				});
				//鼠标离开时，地区列表的选项背景色恢复
				$("#diqu_ul li").mouseout(function() {
					$(this).css("background-color", "rgb(86,86,86)");
				});
				//鼠标悬浮时，头部第二个链接变色
				$(".rw_top_a_two").mouseover(function() {
					$(this).css("background", "url(${pageContext.request.contextPath }/img/roseonlyLogo_4.svg) -10px 3px");
					$(this).css("background-color", "rgb(251,239,239)");
				});
				//鼠标离开时，头部第二个链接恢复
				$(".rw_top_a_two").mouseout(function() {
					$(this).css("background", "url(${pageContext.request.contextPath }/img/roseonlyLogo_3.svg)");
					$(this).css("background-color", "#414141");
				});
				//鼠标悬浮时，当前网页的链接变色
				$(".rw_top_a_three").mouseover(function() {
					$(this).css("background", "url(${pageContext.request.contextPath }/img/roseonlyLogo_5.svg) 10px 3px");
					$(this).css("background-color", "white");
				});
				//鼠标离开时，当前网页的链接恢复
				$(".rw_top_a_three").mouseout(function() {
					$(this).css("background", "url(${pageContext.request.contextPath }/img/roseonlyLogo_6.svg) 10px 3px");
					$(this).css("background-color", "#414141");
				});
				//鼠标点击第一个地区，改变上面的图片和文本
				$("#hk").click(function() {
					$("#diqu_div span").text("HK");
					$("#diqu_div img").attr("src", "${pageContext.request.contextPath }/img/hk.png");
					$("#diqu_ul").css("display", "none");
				});
				//鼠标点击第二个地区，改变上面的图片和文本
				$("#cn").click(function() {
					$("#diqu_div span").text("CN");
					$("#diqu_div img").attr("src", "${pageContext.request.contextPath }/img/cn.png");
					$("#diqu_ul").css("display", "none");
				});
				//鼠标在登录和注册悬浮加粗
				$(".user_div_top>a").mouseover(function() {
					$(this).css("font-weight", "bold");
				})
				//鼠标在登录和注册离开恢复
				$(".user_div_top>a").mouseout(function() {
					$(this).css("font-weight", "100");
				})
				/**/
				$("#user_Div").hover(function() {
					$(".user_div").css("display", "block");
				}, function() {
					$(".user_div").css("display", "none");
				});
				$(".user_div").hover(function() {
					$(".user_div").css("display", "block");
				}, function() {
					$(".user_div").css("display", "none");
				});
			});
		</script>
		<script>
			function setWidth(){
				var h = document.body.clientWidth;
				document.getElementById("container").style.width=h+"px";
			}
		</script>
		<!--右边部分导航栏的显示和隐藏-->
		<script>
			$(function(){
				$("#zhichiBtnBox").mouseenter(function(){
					$(".mes_content").css("display","block");
				});
				$("#zhichiBtnBox").mouseleave(function(){
					$(".mes_content").css("display","none");
				});
			});
		</script>
		<!--二维码的盒子显示和隐藏-->
		<script>
			$(function(){
				$("#ewmBox").mouseenter(function(){
					$(".ewm_content").css("display","block");
				});
				$("#ewmBox").mouseleave(function(){
					$(".ewm_content").css("display","none");
				});
			});
			
		</script>
		<!--箭头盒子等到一定高度的显示和隐藏-->
		<script>
			$(function(){
				$("#back-to-top").css("display","none");
				//获取滚动条的高度
				$(document).scroll(function(){
					var h=$(this).scrollTop();
					if(h>500){
						$("#back-to-top").fadeIn(1000,function(){	
						});
					}else{
						$("#back-to-top").fadeOut(1000,function(){	
						});
					}
				});
			});			
		</script>
		<!--导航栏选择，改变背景色和颜色-->
		<!--<script>
			$(function(){
				$(".order_nav>li").click(function(){
					$(".order_nav>li").css("background","#E8E8E8");
					$(".order_nav>li>a").css("color","#414141");
					$(this).css("background","#83847E").css("color","#FFFFFF");
				});
			});
			
		</script>-->
		
		
		
		<style>
			* {
				margin: 0px;
				padding: 0px;
			}
			/*顶部样式*/
			
			.rw_top {
				background-color: #414141;
				width: 100%;
				height: 40px;
				z-index: 99;
			}
			/*顶部--地区*/
			
			.rw_top_diqu {
				float: left;
				width: 235px;
				height: 40px;
				z-index: 1;
			}
			/*顶部--地区--盒子（显示当前所选的地区）*/
			
			.rw_top_diqu div {
				display: block;
				cursor: pointer;
				margin-left: 140px;
				width: 100px;
				height: 40px;
				color: #afafaf;
				line-height: 40px;
				font-size: 12px;
				z-index: 1;
			}
			/*顶部--地区图片*/
			
			.rw_top_diqu img {
				width: 18px;
				height: 18px;
				vertical-align: middle;
				margin-left: 35px;
			}
			/*顶部--地区--列表*/
			
			.rw_top_diqu ul {
				display: none;
				position: absolute;
				left: 140px;
				top: 40px;
				width: 95px;
				background-color: #565656;
				list-style: none;
				z-index: 1;
				margin: 0;
				padding: 0;
			}
			/*顶部--地区--列表--列*/
			
			.rw_top_diqu ul li {
				height: 30px;
				padding-top: 8px;
			}
			/*顶部--地区--列表--列图片*/
			
			.rw_top_diqu ul li img {
				width: 22px;
				height: 22px;
				vertical-align: middle;
				margin-left: 22px;
			}
			/*顶部--链接*/
			
			.rw_top_diqu a {
				text-decoration: none;
				display: inline-block;
				color: #afafaf;
				font-size: 14px;
			}
			/*顶部--第一个链接*/
			
			.rw_top_a_one {
				width: 118px;
				height: 40px;
				display: inline-block;
				background: url(${pageContext.request.contextPath }/img/roseonlyLogo_2.svg);
				background-color: #414141;
				z-index: 1;
			}
			/*顶部--第二个链接*/
			
			.rw_top_a_two {
				width: 118px;
				height: 40px;
				display: inline-block;
				background: url(${pageContext.request.contextPath }/img/roseonlyLogo_3.svg);
				background-color: #414141;
			}
			/*顶部--第第三个个链接（当前网页的链接）*/
			
			.rw_top_a_three {
				width: 118px;
				height: 40px;
				display: inline-block;
				background: url(${pageContext.request.contextPath }/img/roseonlyLogo_6.svg) 10px 3px;
				background-color: #414141;
				margin-left: -5px;
			}
			/*顶部--右边*/
			
			.rw_top_right {
				padding-top: 10px;
				float: right;
				width: 250px;
				height: 28px;
				font-size: 13px;
				color: white;
			}
			/*顶部--右边--图标*/
			
			.rw_top_right div img {
				height: 20px;
				vertical-align: middle;
			}
			
			#big:hover {
				transform: scale(1.2);
			}
			/**/
			
			.rw_top_right div {
				display: inline-block;
				height: 30px;
			}
			/*顶部--右边--图标1--二维码盒子*/
			
			.user_div {
				position: absolute;
				/*display: none;*/
				width: 300px;
				height: 170px;
				top: 40px;
				right: 150px;
				background-color: white;
				display: none;
				border: 1px solid rgba(0, 0, 0, 0.3);
			}
			/*二维码盒子--顶部*/
			
			.user_div_top {
				width: 175px;
				height: 28px;
				position: absolute;
				margin: 0 auto;
				padding-left: 95px;
				padding-top: 12px;
				margin-left: 15px;
				border-bottom: 1px solid rgba(0, 0, 0, 0.3);
			}
			/*二维码盒子--顶部--a标签*/
			
			.user_div_top a {
				text-decoration: none;
				color: black;
			}
			/*二维码盒子--底部部*/
			
			.user_div_bottom {
				width: 280px;
				height: 110px;
				top: 40px;
				position: absolute;
				margin: 0 auto;
				padding: 10px;
			}
			
			.user_div_bottom img {
				width: 110px;
				height: 110px;
			}
			
			.user_div_bottom div {
				display: inline-block;
				float: left;
			}
			
			.user_div_bottom h1 {
				font-size: 14px;
				font-weight: bold;
				height: 30px;
			}
			
			.user_div_bottom p {
				font-size: 12px;
				line-height: 22px;
				margin: 0;
			}
			
			.rw_head {
				width: 100%;
				height: 80px;
				margin: 0 auto;
				background: #414141;
			}
			/**/
			
			.rw_hear_img {
				width: 143px;
				height: 80px;
				margin: 0 auto;
				display: block;
			}
			/*内容盒子*/
			
			#container {
				width: 1240px;
				margin: 0px auto 0;
			}
			
			.order_nav {
				width: 100%;
				line-height: 40px;
				list-style: none;
				margin: 20px 0 30px;
				padding: 0px;
				background: #e8e8e8;
				display: table;
			}		
			.order {
				width: 962px;
				margin: 0 auto 30px;
				min-height: 500px;
			}
			
			.order_nav li a {
				color: #414141;
			}
			
			.order_nav li {
				text-align: center;
				display: table-cell;
				vertical-align: middle;
			}
			
			ul,
			li {
				list-style: none;
			}
			
			.order_nav li a {
				color: #414141;
			}
			
			a {
				text-decoration: none;
				cursor: pointer;
			}
			
			.order_nav .order_add {
				background: #83847e;
			}
			/*订单内容*/		
			.con-r {
				width: 960px;
				height: auto;
				float: left;
				margin: 10px 0;
				background-color: #E8E8E8;
				border: 1px solid red;
			}		
			.wg_wait_pay {
				color: #fff;
				width: 80px;
				height: 25px;
				line-height: 25px;
				text-align: center;
				background: #c71f2c;
				display: inline-block;
				cursor: pointer;
			}
			/*上半部分盒子开始*/
			.order_deel{
				width: 940px;
				float: left;
				padding-top: 10px;
			}
			/*上半部分盒子开始 左边小盒子*/
			.order_deel_l {
				float: left;
				margin-left: 20px;
				width: 290px;
			}
			/*上半部分盒子开始 左边盒子的上面的小盒子*/			
			.center_1 {
				height: 45px;
				display: table;
				padding: 5px 0;
				font-size: 14px;
			}		
			.center_a {
				color: #83847E;
			}		
			.center_b {
				color: #4e514a;
				font-weight: bold;
			}
			/*盒子订单 下半部分*/
			.con-l{
				width: 100px;
				height: 100px;
				float: left;
				background-color: #fafafa;
				margin-top: 20px;
			}
			.order_detail{
				width: 920px;
				float: left;
				margin-left: 20px;
				border-top: 1px solid #83847E;
			}
			
			.con_center{
				width: 280px;
				height: 90px;
				line-height: 30px;
				margin-top: 40px;
				float: left;
			}
			.c_left{
				width: 235px;
				height: 100px;
				margin: 40px 0 0 20px;
				float: left;
			}
			.center-1{
				height: 45px;
				display: table;
				padding: 5px 0;
				font-size: 14px;
			}
			.center-q{
				color: #83847E;
				display: table-cell;
				line-height: normal;
				width: 70px;
			}
			.center-w{
				color: #4E514A;
				font-weight: bold;
				display: table-cell;
				line-height: normal;
				font-size: 13px;
			}
			.c-right{
				width: 250px;
				height: 100px;
				margin: 40px 10px 0;
				float: left;
			}
			/*分页开始*/
			.next{
				widows: 960px;
				height: 30px;
				line-height: 30px;
				text-align: right;
				color: #83847E;
			}
			.next a{
				color: #83847E;
			}
			.num{
				width: 20px;
				height: 20px;
				line-height: 20px;
				display: inline-block;
			}
			/*底部开始*/
			.footer{
				width: 100%;
				clear: both;
				background: #414141;
				min-width: 1240px;
				color: #fff;
			}
			/*上半部div*/
			.footer_box{
				position: relative;
				width: 1240px;
				margin: 0 auto;
				height: 160px;
				padding-top: 50px;
			}
			.footer ul{
				margin-top: 0px;
				float: left;
				padding: 0 66px;
				text-align: center;
			}
			.footer ul p{
				margin-bottom: 20px;
				font-size: 14px;
				margin-top: 0px;
			}
			.footer ul li{
				list-style: none;
				line-height: 30px;
				color: #000000;
				text-align: left;
				margin-left: 1px;
			}
			.footer ul li a{
				color: #AFAFAF;
				font-size: 14px;
			}
			.f_weixin{
				background: url(${pageContext.request.contextPath }/img/weixin.png) no-repeat right;
			}
			.f_weibo{
				background: url(${pageContext.request.contextPath }/img/weibo.jpg) no-repeat right;
			}
			.new_r{
				float: right;
			}
			.footer .new_r dt{
				float: left;
			    margin-right: 25px;
			    width: 102px;
			    height: 101px;
			    background: url(${pageContext.request.contextPath }/img/121.jpg);
			    background-size:100% ;
			}
			.footer .new_r dd{
				float: left;
				color: #AFAFAF;
				font-size: 12px;
				line-height: 22px;
			}
			.footer .new_r dd h2{
				font-size: 16px;
			}
			.footer .new_r dd div{
				padding-top: 11px;
			}
			.footer-yyzz{
				display: block !important;
				position: absolute;
				bottom: 0px;
				right: 0px;
				width: 240px;
				color: #FFFFFF;
				font-size: 12px;
				text-align: right;
			}
			.footer-yyzz a{
				margin-left: 15px;
				padding-left: 15px;
				background: url(${pageContext.request.contextPath }/img/z.png) no-repeat left center;
				background-size: auto 80%; 
				font-size: 12px;
				color: #AFAFAF;
			}
			/*底部下半部分*/
			.foot-nav{
				width: 1240px;
				height: 58px;
				background: #414141;
				color: #AFAFAF;
				clear: both;
				text-align: right;
				margin: 0 auto;
				font-size: 12px;
			}
			/*箭头回到顶部*/
			#back-to-top{
				width: 45px;
			    height: 45px;
			    background: #969696;
			    position: fixed;
			    bottom: 45px;
			    right: 5px;
			    border-radius: 8px;
			}
			#back-to-top .go_top{
				text-decoration: none;
			    display: block;
			    height: 45px;
			    background: #969696;
			    border-radius: 5px;
			    line-height: 65px;
			    padding-left: 2px;
			}
			#back-to-top .go_top img{
				width: 37px;
    			padding-top: 5px;
			}
			/*客服*/
			.mes_content{
				width: 115px;
				height: 120px;
				position: fixed;
				bottom: 55px;
				right: 50px;
			}
			.mes_icon{
				width: 102px;
				height: 120px;
				position: relative;
				background: #FFFFFF;
				border: 1px solid #dcdcdc;
				border-radius: 5px;
			}
			#zhichiBtnBox{
				position: fixed;
				z-index: 999;
				box-sizing: content-box;
				height: 45px;
				bottom: 100px;
				width: 45px;
				right: 5px;
				background: #969696;
				border-radius: 5px;
			}
			#zhichiBtn{
				text-decoration: none;
			    outline: none;
			    font-family: Microsoft Yahei, Arial, Helvetica;
			    color: #fff;
			    font-size: 16px;
			    display: inline-block;
			    margin: 0px;
			    padding: 0px;
			    border: none;
			    float: none;
			}
			#zhichiBtn img{
				vertical-align: middle;
			    border: none;
			    float: none;
			    position: static;
			    margin-left: 0px;
			    width: 42px;
			    height: 45px;
			}
			.mes_icon>div{
				text-align: center;
				font-size: 12px;
			}
			/*边框旁边的小箭头*/
			.tel_sj{
				position: absolute;
				right: -9px;
				top: 45px;
			}
			.tel_txt{
				color: #8d8d8d;
				font-size: 12px;
				background: url(${pageContext.request.contextPath }/img/tel.svg) no-repeat -16px -9px;
				background-size: 66px;
				line-height: 25px;
				margin: 0px;
				margin-top: 8px;
				padding-left: 11px;
				letter-spacing: 1px;
			}
			.tel_phone{
				color: #414141;
				font-size: 12px;
				margin: 0px;
			}
			/*白色盒子的实线*/
			.tel_line{
				width: 86px;
				border-top: 1px solid #dfdfdf;
				margin: 0px auto;
				margin-top: 12px;
			}
			/*红色按钮在线客服*/
			.zxkf_txt{
				background: #969696;
				width: 86px;
				height: 28px;
				color: #FFFFFF;
				line-height: 28px;
				border-radius: 3px;
				margin: 0px auto;
				margin-top: 8px;
				display: block;
				letter-spacing: 1px;
			}
			.zxkf_txt>a{
				color: #FFFFFF;
			}
			/*二维码盒子*/
			#ewmBox{
				position: fixed;
				z-index: 999;
				box-sizing: content-box;
				height: 45px;
				bottom: 155px;
				width: 45px;
				right: 5px;
				background: #969696;
				border-radius: 5px;
			}
			#ewm{
				text-decoration: none;
				outline: none;
				font-family:Microsoft Yahei, Arial, Helvetica;
			    color: #fff;
			    font-size: 16px;
			    display: inline-block;
			    margin: 0px;
			    padding: 0px;
			    border: none;
			    float: none;
			}
			#ewm img{
				margin-left: 5px;
				width: 35px;
				height: 45px;
			}
			.ewm_content{
				width: 140px;
			    height: 206px;
			    position: fixed;
			    bottom: 41px;
			    right: 57px;
			    display: none;
			    background: url(${pageContext.request.contextPath }/img/kk.png);
			}
			.content{width:80%;margin:auto auto;}
                .hide_box{z-index:999;filter:alpha(opacity=50);background:#666;opacity: 0.5;-moz-opacity: 0.5;left:0;top:0;height:99%;width:100%;position:fixed;display:none;}
        .shang_box{width:540px;height:540px;padding:10px;background-color:#fff;border-radius:10px;position:fixed;z-index:1000;left:50%;top:50%;margin-left:-280px;margin-top:-280px;border:1px dotted #dedede;display:none;}
        .shang_box img{border:none;border-width:0;}
        .dashang{position:relative;top:-240px;left:710px;display:block;width:200px;height:25px;line-height:25px;padding:10px;background-color:#414141;color:#fff;text-align:center;text-decoration:none;border-radius:10px;font-weight:bold;font-size:16px;transition: all 0.3s;}
        .dashang:hover{opacity:0.8;padding:15px;font-size:18px;}
        .shang_close{float:right;display:inline-block;}
        .shang_logo{display:block;text-align:center;margin:20px auto;background-color:#414141}
        .shang_tit{width: 100%;height: 75px;text-align: center;line-height: 66px;color: #a3a3a3;font-size: 16px;background: url('img/cy-reward-title-bg.jpg');font-family: 'Microsoft YaHei';margin-top: 7px;margin-right:2px;}
        .shang_tit p{color:#a3a3a3;text-align:center;font-size:16px;}
        .shang_payimg{width:140px;padding:10px;border:6px solid #EA5F00;margin:0 auto;border-radius:3px;height:140px;}
        .shang_payimg img{display:block;text-align:center;width:140px;height:140px; }
        .pay_explain{text-align:center;margin:10px auto;font-size:12px;color:#545454;}
        .radiobox{width: 16px;height: 16px;background: url('img/radio2.jpg');display: block;float: left;margin-top: 5px;margin-right: 14px;}
        .checked .radiobox{background:url('img/radio1.jpg');}
        .shang_payselect{text-align:center;margin:0 auto;margin-top:40px;cursor:pointer;height:60px;width:280px;}
        .shang_payselect .pay_item{display:inline-block;margin-right:10px;float:left;}
        .shang_info{clear:both;}
		.shang_info p,.shang_info a{color:#C3C3C3;text-align:center;font-size:12px;text-decoration:none;line-height:2em;}
		</style>
		
		<title>我的订单</title>
	</head>

	<body onload="setWidth()">
		<a name="t"></a>
		<!--  网页顶部    -->
		<div class="rw_top">
			<div class="rw_top_diqu" id="diqu">
				<div id="diqu_div">
					<img src="${pageContext.request.contextPath }/img/cn.png">&nbsp;&nbsp;&nbsp;
					<span>CN</span>
				</div>
				<ul id="diqu_ul">
					<li id="hk"><img src="${pageContext.request.contextPath }/img/hk.png">&nbsp;&nbsp;&nbsp;
						<a href="##">HK</a>
					</li>
					<li id="cn"><img src="${pageContext.request.contextPath }/img/cn.png">&nbsp;&nbsp;&nbsp;
						<a href="##">CN</a>
					</li>
				</ul>
			</div>
			<a class="rw_top_a_one" href="##"></a>
			<a class="rw_top_a_two" href="/roseOnly/ShoppingCarServlet?op=ShopCar"></a>
			<a class="rw_top_a_three" href="##"></a>
			<div class="rw_top_right">
				<div id="user_Div">
					<img src="${pageContext.request.contextPath }/img/roseonlyLogo_7.svg" />&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
				</div>
				<div>
						<a href="/roseOnly/ShoppingCarServlet?op=ShopCar"><img id="big" style="transition:all 0.4s;" src="img/roseonlyLogo_8.svg" /></a>&nbsp;&nbsp;(0)&nbsp;|&nbsp;&nbsp;
					</div>
				<div>
					<img src="${pageContext.request.contextPath }/img/roseonlyLogo_9.svg" />
				</div>
			</div>
			<div class="user_div">
				<div class="user_div_top">
					<a href="userOrders.jsp">个人中心</a>&nbsp;<span></span>|
					<a href="##">退出</a>
				</div>
				<div class="user_div_bottom">
					<div>
						<img src="${pageContext.request.contextPath }/img/erweima.jpg" />
					</div>
					<div style="width: 10px;border: 1px solid white;"></div>
					<div>
						<h1>立即领取 50元 优惠券</h1>
						<p> 微信关注roseonly诺誓商城,<br/> 激活成为会员即可领取,<br/> 更多会员专享活动等你参与！ </p>
					</div>
				</div>
			</div>
		</div>

		<div class="rw_head">
			<a href="wedding_roseonly.jsp"><img class="rw_hear_img" src="${pageContext.request.contextPath }/img/head_logo.png"></a>
		</div>

		<!--中间部分,订单部分-->
		<div id="container">

			<div class="order">
				<!--导航  开始-->
				<ul class="order_nav">
					<li class="order_add">
						<a href="userOrders.jsp" style="color: #fff;">我的订单</a>
					</li>
					<li>
						<a href="tklb.jsp">退款列表</a>
					</li>
					<li>
						<a href="sqth.jsp">申请退换</a>
					</li>
					<li>
						<a href="wdxx.jsp">我的消息</a>
					</li>
					<li>
						<a href="jfdh.jsp">积分兑换</a>
					</li>
					<li>
						<a href="wdyhj.jsp">我的优惠卷</a>
					</li>
					<li>
						<a href="lpk.jsp">礼品卡</a>
					</li>
					<li>
						<a href="shdz.jsp">收货地址</a>
					</li>
					<li>
						<a href="wdjp.jsp">我的奖品</a>
					</li>
				</ul>
				<div style="clear:both;"></div>

				<!--导航结束-->
				<!--订单开始-->
				<c:forEach var="x" items="${list2 }">
				<div class="con-r">
				
				<div class="order_deel">
				
					<div class="order_deel_l">
						<div class="center_1">
							<span class="center_a">订单编号：</span>
							<span class="center_b">${x.sale_id }</span>
						</div>
						<div class="center_1">
							<span class="center_a">消费时间：</span>
							<span class="center_b">${x.date_in }</span>
						</div>
					</div>

					<div class="order_deel_l">
						<div class="center_1">
							<span class="center_a">支付方式：</span>
							<span class="center_b">${x.pay_way }</span>
						</div>
						<div class="center_1">
							<span class="center_a">订单金额：</span>
							<span class="center_b">￥
								<label id="jep756648" class="jep">${x.total_amount }</label>
								<font color="red" style="font-size:12px;">（应付金额:￥${x.total_amount }）</font>
							</span>
						</div>
					</div>

					<div class="order_deel_r">
						<div class="center_1">
							<span class="center_a">订单状态：</span>
							<c:if test="${x.order_status==1 }">
							<span class="center_b">未付款</span>
							</c:if>
							<c:if test="${x.order_status==2 }">
							<span class="center_b">已付款</span>
							</c:if>
						</div>
						<div class="center_1">
							<span class="center_a">订单操作：</span>
							<c:if test="${x.pay_status==1 }">
							<span>
							<a class="wg_wait_pay" href="javascript:void(0)" onClick="dashangToggle()" >前去付款</a>
							
							
							</span>
							<span>&nbsp;<a href="##" style=" color:#60a0e1;">取消订单</a></span>
							<div class="content">
								    <!-- <div class="hide_box"></div> -->
								    <div class="shang_box">
								    	<a class="shang_close" href="javascript:void(0)" onClick="dashangToggle()" title="关闭"><img src="img/close.jpg" alt="取消" /></a>
								        <img class="shang_logo" src="img/roseonlyLogo.svg" alt="Rosenoly" />
								    	<div class="shang_tit">
								    		<p>感谢您的购买，我会继续努力的!</p>
								    	</div>
								    	<div class="shang_payimg">
								    		<img src="img/alipayimg.jpg" alt="扫码支持" title="扫一扫" />
								    	</div>
								    		<div class="pay_explain">扫码付款，给心爱的她</div>
								    	<div class="shang_payselect">
								    		<div class="pay_item checked" data-id="alipay">
									    		<span class="radiobox"></span>
									    		<span class="pay_logo"><img src="img/alipay.jpg" alt="支付宝" /></span>
								    		</div>
								    		<div class="pay_item" data-id="weipay">
									    		<span class="radiobox"></span>
									    		<span class="pay_logo"><img src="img/wechat.jpg" alt="微信" /></span>
								    		</div>
								    	</div>
								    	<div class="shang_info">
								    		<p>打开<span id="shang_pay_txt">支付宝</span>扫一扫，即可进行扫码付款哦</p>
								    		<p>Powered by <a href="##" target="_blank" >Rosenoly</a>，分享从这里开始，精彩与您同在</p>
								    	</div>
								    	<div style=" font-size: 18px;"><a href="/roseOnly/SaleServlet?op=UpdatePay&sale_id=${x.sale_id}" style="color: red;float: right; text-decoration: none;">支付成功</a></div>
								    </div>
							    </div>
							</c:if>
							<c:if test="${x.pay_status==2 }">
							<span>
								<a class="wg_wait_pay" style="display: none" href="##">立即退货</a>
								
							</span>
							<span>&nbsp;<a href="##" style=" color:#60a0e1;display: none">取消订单</a></span>
							</c:if>
						</div>

					</div>
				</div>
				
				
				<!--下半部分-->
				
				<c:forEach var="y" items="${list }">
				<c:if test="${x.sale_id==y.sale_id }" >
				<div class="order_detail">
					<div class="con-l">
						<a href="##" ><!--这个地方跳转到鲜花详情-->-
							<img src="${pageContext.request.contextPath}/img/${y.imges_url}" width="100px" height="80px"/>
						</a>
					</div>
					<div class="c_left">
						<div class="center-1">
							<span class="center-a center-q">商品名称:</span>
							<span class="center-b center-w">${y.commodity_name }</span>
						</div>
						<div class="center-1">
							<span class="center-a center-q">商品状态：</span>
							<c:if test="${y.pay_status==2||y.pay_status==1 }">
							<span class="center-b center-w"><a href="##" class="td4">未发货</a></span>
							</c:if>
							<c:if test="${y.pay_status==3 }">
							<span class="center-b center-w"><a href="##" class="td4">已发货</a></span>
							</c:if>
							<c:if test="${y.pay_status==4 }">
							<span class="center-b center-w"><a href="##" class="td4">已签收</a></span>
							</c:if>
							<c:if test="${y.pay_status==5 }">
							<span class="center-b center-w"><a href="##" class="td4">已完成</a></span>
							</c:if>
						</div>
						<div class="center-1">
							<span class="center-a center-q"></span>
							<span class="center-b center-w">
							</span>
						</div>
					</div>
					<div class="con_center">
						<div class="center-1">
							<span class="center-a center-q" style="text-align: right;">单价：</span>
							<span class="center-b center-w">${y.price }</span>
						</div>
						
					</div>
					<div class="con_right">
						<div class="c-right">
						<div class="center-1">
							<span class="center-a center-q">商品数量：</span>
							<span class="center-b center-w">${y.number }</span>
						</div>
						<div class="center-1">
							<span class="center-a center-q">配送操作：</span>
							<span class="center-b center-w"> 
								<a href="##" style=" color:#60a0e1;">【查看】</a>
							</span>
						</div>
					</div>
					</div>
				</div>
				</c:if>
				</c:forEach>
			</div>
			</c:forEach>

			<div style="clear:both;"></div>
				
			<!--订单结束，分页开始-->
			
			</div>
		</div>
		<!--内容部分结束-->
		<!--尾部开始-->
		<div class="footer">
			<div class="footer_box">
        		<ul>
           			<p>新手指南</p>
            		<li><a href="##" >购物流程</a></li>
            		<li><a href="##" >会员尊享</a></li>
            		<li><a href="##" >常见问题</a></li>
            		<li><a href="##" >指圈测量</a></li>
        		</ul>
		  		<ul>
           			<p>物流配送</p>
            		<li><a href="##" >配送方式</a></li>
            		<li><a href="##" >配送服务</a></li>
       			</ul>
				 <ul>
		            <p>售后服务</p>
		            <li><a href="##" >退款说明</a></li>
		            <li><a href="##" >保养物语</a></li>
		        </ul>
		        <ul>
		            <p>关于我们</p>
		            <li><a href="##" >品牌介绍</a></li>
		            <li><a href="##">销售渠道</a></li>
		            <li><a href="##" > 联系我们</a></li>
		            <li><a href="##" >加入我们</a></li> 
		        </ul>
				<ul>
		            <p>关注我们</p>
		            <li class="f_weixin"><a href="##">微信</a></li>
		            <li class="f_weibo"><a href="##">微博</a></li>
		        </ul>
			        <dl class="new_r">
			           <dt><img src="${pageContext.request.contextPath }/img/121.jpg" alt=""></dt>
						<dd>
							<p>微信关注roseonly  <br>激活会员，立即领取</p>
			                <h2>50元优惠券</h2>
							<div><img src="${pageContext.request.contextPath }/img/logo.png" alt=""></div>
						</dd>		
			        </dl> 
			        <div class="footer-yyzz" style="display:none;">
			        	<a href="${pageContext.request.contextPath }/img/z.png">营业执照</a>
			        	<a href="${pageContext.request.contextPath }/img/z.png">食品证副本</a>
			    	</div>     
    		</div>
			
			<!--底部盒子第二部分-->
			<div class="foot-nav">
				京ICP备13007738号 京公网安备11010502023922<br> 
				www.roseonly.com.cn；诺誓（北京）商业股份有限公司
			</div>
		</div>
		
		<!--右边导航栏-->
		<!--回到顶部箭头-->
		<div id="back-to-top" style="display: block;" >
	        <a class="go_top" href="#t"><img src="${pageContext.request.contextPath }/img/jt.svg">
	        </a>
    	</div>
    	<!--客服盒子-->
    	<div id="zhichiBtnBox">
    		<a id="zhichiBtn" href="##">
				<img src="${pageContext.request.contextPath }/img/mes.svg">
			</a>
	    	<div class="mes_content" style="display: none;">
				<div class="mes_icon">
					<div class="tel_sj"><img src="${pageContext.request.contextPath }/img/x.png" alt="">
					</div>
					
					<div class="tel_icon">
						<p class="tel_txt">联系电话</p>
						<p class="tel_phone">400-1314-520</p>
					</div>
					
					<div class="tel_line"></div>
					<div class="zxkf_txt">
						<a id="btn_onlineZhichi" href="##">在线客服</a>
					</div>
				</div>
			</div>
    	</div>
    	<!--二维码开始-->
		<div id="ewmBox">
			<a id="ewm" href="##">
				<img src="${pageContext.request.contextPath }/img/wxtp.svg">
			</a>
			<div class="ewm_content"></div>
		</div>
		<script type="text/javascript">
    $(function(){
    	$(".pay_item").click(function(){
    		$(this).addClass('checked').siblings('.pay_item').removeClass('checked');
    		var dataid=$(this).attr('data-id');
    		$(".shang_payimg img").attr("src","img/"+dataid+"img.jpg");
    		$("#shang_pay_txt").text(dataid=="alipay"?"支付宝":"微信");
    	});
    });
    function dashangToggle(){
    	$(".hide_box").fadeToggle();
    	$(".shang_box").fadeToggle();
    }
    </script>
	</body>

</html>