<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>支付成功</title>
		<link rel="stylesheet" href="css/top.css">
		<script src="js/jquery-3.1.0.min.js"></script>
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
					$("#diqu_div").css("background-color", "rgb(86,86,86)");
					$("#diqu_div").css("background-color", "#414141");
				});
				//鼠标悬浮时，地区列表的选项背景色变色
				$("#diqu_ul li").mouseover(function() {
					$("#diqu_ul").css("display", "block");
					$("#diqu_div").css("background-color", "rgb(86,86,86)");
					$(this).css("background-color", "rgb(114,114,114)");
				});
				//鼠标离开时，地区列表的选项背景色恢复
				$("#diqu_ul li").mouseout(function() {
					$(this).css("background-color", "rgb(86,86,86)");
					$("#diqu_ul").css("display", "none");
					$("#diqu_div").css("background-color", "#414141");
				});
				//鼠标悬浮时，头部第二个链接变色
				$(".rw_top_a_two").mouseover(function() {
					$(this).css("background", "url(img/roseonlyLogo_4.svg) -10px 3px");
					$(this).css("background-color", "rgb(251,239,239)");
					$(".rw_top_a_two").css("height", "40");
				});
				//鼠标离开时，头部第二个链接恢复
				$(".rw_top_a_two").mouseout(function() {
					$(this).css("background", "url(img/roseonlyLogo_3.svg)");
					$(this).css("background-color", "#414141");
					$(".rw_top_a_two").css("height", "37");
				});
				//鼠标悬浮时，当前网页的链接变色
				$(".rw_top_a_three").mouseover(function() {
					$(this).css("background", "url(img/roseonlyLogo_5.svg) 10px 3px");
					$(this).css("background-color", "white");
					$(".rw_top_a_three").css("height", "40");
				});
				//鼠标离开时，当前网页的链接恢复
				$(".rw_top_a_three").mouseout(function() {
					$(this).css("background", "url(img/roseonlyLogo_6.svg) 10px 3px");
					$(this).css("background-color", "#414141");
					$(".rw_top_a_three").css("height", "37");
				});
				//鼠标点击第一个地区，改变上面的图片和文本
				$("#hk").click(function() {
					$("#diqu_div span").text("HK");
					$("#diqu_div").css("background-color", "#414141");
					$("#diqu_div img").attr("src", "img/hk.png");
					$("#diqu_ul").css("display", "none");
				});
				//鼠标点击第二个地区，改变上面的图片和文本
				$("#cn").click(function() {
					$("#diqu_div span").text("CN");
					$("#diqu_div").css("background-color", "#414141");
					$("#diqu_div img").attr("src", "img/cn.png");
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
				/*个人信息图片*/
				$("#user_Div").hover(function() {
					$(".user_div").css("display", "block");
				}, function() {
					$(".user_div").css("display", "none");
				});
				/*个人信息*/
				$(".user_div").hover(function() {
					$(".user_div").css("display", "block");
				}, function() {
					$(".user_div").css("display", "none");
				});
				/*新品*/
				$("#xinping").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
				});
				/*爱丽推荐*/
				$("#aili").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
					$(".rw_shop_lie_two").css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
					$(".rw_shop_lie_two").css("display", "none");
					$(".one").css("z-index", "0");
				});
				$(".rw_shop_lie_two").hover(function() {
					$("#aili").css("color", "black");
					$("#aili").parent().css("background-color", "white");
					$(this).css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$("#aili").css("color", "white");
					$("#aili").parent().css("background-color", "#414141");
					$(this).css("display", "none");
					$(".one").css("z-index", "0");
				});
				/*鲜花*/
				$("#xianhua").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
					$(".rw_shop_lie_three").css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
					$(".rw_shop_lie_three").css("display", "none");
					$(".one").css("z-index", "0");
				});
				$(".rw_shop_lie_three").hover(function() {
					$("#xianhua").css("color", "black");
					$("#xianhua").parent().css("background-color", "white");
					$(this).css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$("#xianhua").css("color", "white");
					$("#xianhua").parent().css("background-color", "#414141");
					$(this).css("display", "none");
					$(".one").css("z-index", "0");
				});
				/*永生*/
				$("#yongsheng").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
					$(".rw_shop_lie_four").css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
					$(".rw_shop_lie_four").css("display", "none");
					$(".one").css("z-index", "0");
				});
				$(".rw_shop_lie_four").hover(function() {
					$("#yongsheng").css("color", "black");
					$("#yongsheng").parent().css("background-color", "white");
					$(this).css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$("#yongsheng").css("color", "white");
					$("#yongsheng").parent().css("background-color", "#414141");
					$(this).css("display", "none");
					$(".one").css("z-index", "0");
				});
				/*珠宝*/
				$("#zhubao").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
					$(".rw_shop_lie_five").css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
					$(".rw_shop_lie_five").css("display", "none");
					$(".one").css("z-index", "0");
				});
				$(".rw_shop_lie_five").hover(function() {
					$("#zhubao").css("color", "black");
					$("#zhubao").parent().css("background-color", "white");
					$(this).css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$("#zhubao").css("color", "white");
					$("#zhubao").parent().css("background-color", "#414141");
					$(this).css("display", "none");
					$(".one").css("z-index", "0");
				});
				/*饰品*/
				$("#shipin").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
					$(".rw_shop_lie_six").css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
					$(".rw_shop_lie_six").css("display", "none");
					$(".one").css("z-index", "0");
				});
				$(".rw_shop_lie_six").hover(function() {
					$("#shipin").css("color", "black");
					$("#shipin").parent().css("background-color", "white");
					$(this).css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$("#shipin").css("color", "white");
					$("#shipin").parent().css("background-color", "#414141");
					$(this).css("display", "none");
					$(".one").css("z-index", "0");
				});
				/*香氛*/
				$("#xiangfen").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
					$(".rw_shop_lie_seven").css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
					$(".rw_shop_lie_seven").css("display", "none");
					$(".one").css("z-index", "0");
				});
				$(".rw_shop_lie_seven").hover(function() {
					$("#xiangfen").css("color", "black");
					$("#xiangfen").parent().css("background-color", "white");
					$(this).css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$("#xiangfen").css("color", "white");
					$("#xiangfen").parent().css("background-color", "#414141");
					$(this).css("display", "none");
					$(".one").css("z-index", "0");
				});
				/*定制*/
				$("#dingzhi").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");

				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
				});
				/*世界*/
				$("#shijie").hover(function() {
					$(this).css("color", "black");
					$(this).parent().css("background-color", "white");
					$(".rw_shop_lie_nine").css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$(this).css("color", "white");
					$(this).parent().css("background-color", "#414141");
					$(".rw_shop_lie_nine").css("display", "none");
					$(".one").css("z-index", "0");
				});
				$(".rw_shop_lie_nine").hover(function() {
					$("#shijie").css("color", "black");
					$("#shijie").parent().css("background-color", "white");
					$(this).css("display", "block");
					$(".one").css("z-index", "-1");
				}, function() {
					$("#shijie").css("color", "white");
					$("#shijie").parent().css("background-color", "#414141");
					$(this).css("display", "none");
					$(".one").css("z-index", "0");
				});

			});
		</script>
		<script>
			function setWidth() {
				var h = document.body.clientWidth;
				document.getElementById("container").style.width = h + "px";
			}
		</script>

		<style>
			#container {
				margin: 0 auto;
				width: 100%;
			}
			
			.box {
				width: 100%;
				height: 400px;
			}
			
			.msg {
				position: relative;
				width: 500px;
				height: 100px;
				margin-left: 611px;
				margin-top: 200px;
			}
			/*底部开始*/
			
			.footer {
				width: 100%;
				clear: both;
				background: #414141;
				min-width: 1240px;
				color: #fff;
				top: 600px;
				position: absolute;
			}
			/*上半部div*/
			
			.footer_box {
				position: relative;
				width: 1240px;
				margin: 0 auto;
				height: 160px;
				padding-top: 50px;
			}
			
			.footer ul {
				margin-top: 0px;
				float: left;
				padding: 0 66px;
				text-align: center;
			}
			
			.footer ul p {
				margin-bottom: 20px;
				font-size: 14px;
				margin-top: 0px;
			}
			
			.footer ul li {
				list-style: none;
				line-height: 30px;
				color: #000000;
				text-align: left;
				margin-left: 1px;
			}
			
			.footer ul li a {
				color: #AFAFAF;
				font-size: 14px;
			}
			
			.f_weixin {
				background: url(img/weixin.png) no-repeat right;
			}
			
			.f_weibo {
				background: url(img/weibo.jpg) no-repeat right;
			}
			/*底部开始*/
			
			.footer {
				width: 100%;
				clear: both;
				background: #414141;
				min-width: 1240px;
				color: #fff;
			}
			/*上半部div*/
			
			.footer_box {
				position: relative;
				width: 1240px;
				margin: 0 auto;
				height: 160px;
				padding-top: 50px;
			}
			
			.footer ul {
				margin-top: 0px;
				float: left;
				padding: 0 66px;
				text-align: center;
			}
			
			.footer ul p {
				margin-bottom: 20px;
				font-size: 14px;
				margin-top: 0px;
			}
			
			.footer ul li {
				list-style: none;
				line-height: 30px;
				color: #000000;
				text-align: left;
				margin-left: 1px;
			}
			
			.footer ul li a {
				color: #AFAFAF;
				font-size: 14px;
				text-decoration: none;
			}
			
			.f_weixin {
				background: url(img/weixin.png) no-repeat right;
			}
			
			.f_weibo {
				background: url(img/weibo.jpg) no-repeat right;
			}
			
			.new_r {
				float: right;
			}
			
			.footer .new_r dt {
				float: left;
				margin-right: 25px;
				width: 102px;
				height: 101px;
				background: url(img/121.jpg);
				background-size: 100%;
			}
			
			.footer .new_r dd {
				float: left;
				color: #AFAFAF;
				font-size: 12px;
				line-height: 22px;
			}
			
			.footer .new_r dd h2 {
				font-size: 16px;
			}
			
			.footer .new_r dd div {
				padding-top: 11px;
			}
			
			.footer-yyzz {
				display: block !important;
				position: absolute;
				bottom: 0px;
				right: 0px;
				width: 240px;
				color: #FFFFFF;
				font-size: 12px;
				text-align: right;
			}
			
			.footer-yyzz a {
				margin-left: 15px;
				padding-left: 15px;
				background: url(img/z.png) no-repeat left center;
				background-size: auto 80%;
				font-size: 12px;
				color: #AFAFAF;
			}
			/*底部下半部分*/
			
			.foot-nav {
				width: 1240px;
				height: 58px;
				background: #414141;
				color: #AFAFAF;
				clear: both;
				text-align: right;
				margin: 0 auto;
				font-size: 12px;
			}
			
			.new_r {
				float: right;
			}
			
			.footer .new_r dt {
				float: left;
				margin-right: 25px;
				width: 102px;
				height: 101px;
				background: url(img/121.jpg);
				background-size: 100%;
			}
			
			.footer .new_r dd {
				float: left;
				color: #AFAFAF;
				font-size: 12px;
				line-height: 22px;
			}
			
			.footer .new_r dd h2 {
				font-size: 16px;
			}
			
			.footer .new_r dd div {
				padding-top: 11px;
			}
			
			.footer-yyzz {
				display: block !important;
				position: absolute;
				bottom: 0px;
				right: 0px;
				width: 240px;
				color: #FFFFFF;
				font-size: 12px;
				text-align: right;
			}
			
			.footer-yyzz a {
				margin-left: 15px;
				padding-left: 15px;
				background: url(img/z.png) no-repeat left center;
				background-size: auto 80%;
				font-size: 12px;
				color: #AFAFAF;
				text-decoration: none;
			}
			/*底部下半部分*/
			
			.foot-nav {
				width: 1240px;
				height: 58px;
				background: #414141;
				color: #AFAFAF;
				clear: both;
				text-align: right;
				margin: 0 auto;
				font-size: 12px;
			}
			/*客服*/
			
			.mes_content {
				width: 115px;
				height: 120px;
				position: fixed;
				bottom: 55px;
				right: 50px;
			}
			
			.mes_icon {
				width: 102px;
				height: 120px;
				position: relative;
				background: #FFFFFF;
				border: 1px solid #dcdcdc;
				border-radius: 5px;
			}
			
			#zhichiBtnBox {
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
			
			#zhichiBtn {
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
			
			#zhichiBtn img {
				vertical-align: middle;
				border: none;
				float: none;
				position: static;
				margin-left: 0px;
				width: 42px;
				height: 45px;
			}
			
			.mes_icon>div {
				text-align: center;
				font-size: 12px;
			}
			/*边框旁边的小箭头*/
			
			.tel_sj {
				position: absolute;
				right: -9px;
				top: 45px;
			}
			
			.tel_txt {
				color: #8d8d8d;
				font-size: 12px;
				background: url(img/tel.svg) no-repeat -16px -9px;
				background-size: 66px;
				line-height: 25px;
				margin: 0px;
				margin-top: 8px;
				padding-left: 11px;
				letter-spacing: 1px;
			}
			
			.tel_phone {
				color: #414141;
				font-size: 12px;
				margin: 0px;
			}
			/*白色盒子的实线*/
			
			.tel_line {
				width: 86px;
				border-top: 1px solid #dfdfdf;
				margin: 0px auto;
				margin-top: 12px;
			}
			/*红色按钮在线客服*/
			
			.zxkf_txt {
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
			
			.zxkf_txt>a {
				color: #FFFFFF;
			}
			/*二维码盒子*/
			
			#ewmBox {
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
			
			#ewm {
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
			
			#ewm img {
				margin-left: 5px;
				width: 35px;
				height: 45px;
			}
			
			.ewm_content {
				width: 140px;
				height: 206px;
				position: fixed;
				bottom: 41px;
				right: 57px;
				display: none;
				background: url(img/kk.png);
			}
			.pay{
				text-align: center;
				font-size: 28px;
				color: red;
				line-height: 80px;
			}
			#123{
				display:none;
			}
		</style>
		
	</head>

	<body>

		<body onload="setWidth()">
			<a name="t"></a>
			<!--  网页顶部    -->
			<div id="container">
				<div class="rw_top">
					<div class="rw_top_diqu" id="diqu">
						<div id="diqu_div">
							<img src="img/cn.png">&nbsp;&nbsp;&nbsp;
							<span>CN</span>
						</div>
						<ul id="diqu_ul">
							<li id="hk"><img src="img/hk.png">&nbsp;&nbsp;&nbsp;
								<a href="##">HK</a>
							</li>
							<li id="cn"><img src="img/cn.png">&nbsp;&nbsp;&nbsp;
								<a href="##">CN</a>
							</li>
						</ul>
					</div>
					<a class="rw_top_a_one" href="wedding_roseonly.jsp"></a>
					<a class="rw_top_a_two" href="##"></a>
					<a class="rw_top_a_three" href="##"></a>
					<div class="rw_top_right" id="top_daohan">
						<div id="user_Div">
							<img src="img/roseonlyLogo_7.svg" />&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
							<div class="user_div">
								<div class="user_div_top">
									<a href="register.html">登录</a>&nbsp;<span></span>|
									<a href="zhuce.html">注册</a>
								</div>
								<div class="user_div_bottom">
									<div>
										<img src="img/erweima.jpg" />
									</div>
									<div style="width: 10px;border: 1px solid white;"></div>
									<div>
										<h1>立即领取 50元 优惠券</h1>
										<p> 微信关注roseonly诺誓商城,<br/> 激活成为会员即可领取,<br/> 更多会员专享活动等你参与！ </p>
									</div>
								</div>
							</div>
						</div>
						<div>
							<a href="ShopCar.html"><img id="big" style="transition:all 0.4s;" src="img/roseonlyLogo_8.svg" /></a>&nbsp;&nbsp;(0)&nbsp;|&nbsp;&nbsp;
						</div>
						<div>
							<img src="img/roseonlyLogo_9.svg" />
						</div>
					</div>

				</div>
				<!--  网页头部    -->
				<div class="rw_head">
					<a href="wedding_roseonly.jsp"><img class="rw_hear_img" src="img/head_logo.png"></a>
				</div>
				<!--  显示支付成功-->

				<p id="sp">您已经支付成功,3s后自动跳转</p>
				<p class="pay">支付成功</p>
				<p id="123" style="color:white;">${userId }</p>
			<!--尾部开始-->
			<div class="footer">
				<div class="footer_box">
					<ul>
						<p>新手指南</p>
						<li>
							<a href="##">购物流程</a>
						</li>
						<li>
							<a href="##">会员尊享</a>
						</li>
						<li>
							<a href="##">常见问题</a>
						</li>
						<li>
							<a href="##">指圈测量</a>
						</li>
					</ul>
					<ul>
						<p>物流配送</p>
						<li>
							<a href="##">配送方式</a>
						</li>
						<li>
							<a href="##">配送服务</a>
						</li>
					</ul>
					<ul>
						<p>售后服务</p>
						<li>
							<a href="##">退款说明</a>
						</li>
						<li>
							<a href="##">保养物语</a>
						</li>
					</ul>
					<ul>
						<p>关于我们</p>
						<li>
							<a href="##">品牌介绍</a>
						</li>
						<li>
							<a href="##">销售渠道</a>
						</li>
						<li>
							<a href="##"> 联系我们</a>
						</li>
						<li>
							<a href="##">加入我们</a>
						</li>
					</ul>
					<ul>
						<p>关注我们</p>
						<li class="f_weixin">
							<a href="##">微信</a>
						</li>
						<li class="f_weibo">
							<a href="##">微博</a>
						</li>
					</ul>
					<dl class="new_r">
						<dt><img src="img/121.jpg" alt=""></dt>
						<dd>
							<p>微信关注roseonly <br>激活会员，立即领取</p>
							<h2>50元优惠券</h2>
							<div><img src="img/logo.png" alt=""></div>
						</dd>
					</dl>
					<div class="footer-yyzz" style="display:none;">
						<a href="img/z.png">营业执照</a>
						<a href="img/z.png">食品证副本</a>
					</div>
				</div>

				<!--底部盒子第二部分-->
				<div class="foot-nav">
					京ICP备13007738号 京公网安备11010502023922<br> www.roseonly.com.cn；诺誓（北京）商业股份有限公司
				</div>

				<!--客服盒子-->
				<div id="zhichiBtnBox">
					<a id="zhichiBtn" href="##">
						<img src="img/mes.svg">
					</a>
					<div class="mes_content" style="display: none;">
						<div class="mes_icon">
							<div class="tel_sj"><img src="img/x.png" alt="">
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
						<img src="img/wxtp.svg">
					</a>
					<div class="ewm_content"></div>
				</div>
			</div>
			<script type="text/javascript">  
		    onload=function(){  
		        setInterval(go, 1000);  
		    };  
		    var x=3; //利用了全局变量来执行  
		    function go(){  
		    x--;  
		        if(x>0){  
		        document.getElementById("sp").innerHTML="您已经支付成功,"+x+"s后自动跳转";  //每次设置的x的值都不一样了。  
		        }else{  
		        var z=document.getElementById("123").innerText;
		        
		        location.href="/roseOnly/SaleServlet?op=Sell&user_id="+z;  
		        }  
		    }  
		</script> 
		</body>

</html>