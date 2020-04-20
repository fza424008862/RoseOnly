<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/top.css">
		<script src="js/sheng.js"></script>
		<script type="text/javascript" src="js/qu.js"></script>
		<script type="text/javascript" src="js/shi.js"></script>
		<script src="js/jquery-3.1.0.min.js"></script>
		<script src="js/top.js"></script>
		<link rel="stylesheet" href="css/Yanzheng.css">
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<script type="text/javascript" src="js/tan.js"></script>
		<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
        <script type="text/javascript" src="js/foot.js" ></script>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<style type="text/css">
        .content{width:80%;margin:200px auto;}
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
        /*底部开始*/
			
			.footer {
				width: 100%;
				clear: both;
				background: #414141;
				color: #fff;
				top: 400px;
				position: absolute;
				left: -5px;
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
    </style>

		<script>
			$(function() {
				for(var i = 0; i < sheng.length; i++) {
					var sheng_shiid = sheng[i].ProID;
					var shengname = sheng[i].name;
					var shengfen = $("<option>").attr("value", sheng_shiid).html(shengname);
					$("#sf").append(shengfen);
				}
				$("#sf").change(function() {
					$("#cs").empty();
					var sheng_shiid = $(this).val();
					for(var j = 0; j < shi.length; j++) {
						if(sheng_shiid == shi[j].ProID) {
							var shi_quid = shi[j].CityID;
							var shiname = shi[j].name;
							var shi2 = $("<option>").attr("value", shi_quid).html(shiname);
							$("#cs").append(shi2);
						}
					}
				});
				$("#cs").change(function() {
					$("#xq").empty();
					var shi_quid = $(this).val();
					for(var j = 0; j < qu.length; j++) {
						if(shi_quid == qu[j].CityID) {
							var quid = qu[j].Id;
							var quname = qu[j].DisName;
							var qu2 = $("<option>").attr("value", quid).html(quname);
							$("#xq").append(qu2);
						}
					}
				});
				$(".111").click(function(){
	      			var a=[];
	      			var b=[];
	      			var c=[];
	      				if($(this).prop("checked")){
	      					a.push($(this).parent().parent().find(".onelist").text());
	      					b.push($(this).parent().parent().find(".twolist").text());
	      					c.push($(this).parent().parent().find(".threelist").text());
	      					var a2=$("#shoupeople").html();
	      					$("#shoupeople").html(a2+a);
	      					var c2=$("#shouaddress").html();
	      					$("#shouaddress").html(c2+c);
	      					
	      			}
	      			var d=$("#qjs").attr("href");
	      			$("#qjs").attr("href",d+"&shr="+a+"&sdh="+b+"&sdz="+c);
	      		});

			});
		</script>
		<!-- <script>
			;! function() {
				laydate({
					elem: '#demo'
				})
			}();
		</script> -->
		<script>
			$(function(){
				$("#zxs span").click(function(){
					$("#tian").show()
				});
				$("#xiao").click(function(){
					$("#tian").hide()
				})
			});
		</script>
		<script src="laydate/laydate.js"></script>
	</head>

	<body>
	<div style="border:height: 1750px; ">
		<!--  网页顶部    -->
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
			<a class="rw_top_a_one" href="wedding_roseonly.html"></a>
			<a class="rw_top_a_two" href="##"></a>
			<a class="rw_top_a_three" href="##"></a>
			<div class="rw_top_right" id="top_daohan">
				<div id="user_Div">
					<img src="img/roseonlyLogo_7.svg" />&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
					<div class="user_div">
						<div class="user_div_top">
							<c:if test="${user==null }">
									<a href="register.jsp">登录</a>&nbsp;<span></span>|
									<a href="zhuce.jsp">注册</a>
								</c:if>
								<c:if test="${user!=null }">
									<a href="/roseOnly/UserServlet?op=removeUser">退出</a>&nbsp;<span></span>|
									<a href="zhuce.jsp">个人中心</a>
								</c:if>
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
					<a href="ShopCar.jsp"><img id="big" style="transition:all 0.4s;" src="img/roseonlyLogo_8.svg" /></a>&nbsp;&nbsp;(0)&nbsp;|&nbsp;&nbsp;
				</div>
				<div>
					<img src="img/roseonlyLogo_9.svg" />
				</div>
			</div>

		</div>
		<!--  网页头部    -->
		<div class="rw_head">
			<a href="wedding_roseonly.html"><img class="rw_hear_img" src="img/head_logo.png"></a>
		</div>
	<form  action="/roseOnly/YanServlet?op=addPeople" method="post" id="123">
		<div class="one">填写核对订单信息</div>
		<div class="four">
	
			<div class="three">收货人信息</div>
			<script type="text/javascript">
			$(function(){
				$("#a").click(function(){
					var sfnum=$("#sf").val();
					var csnum=$("#cs").val();
					var xqnum=$("#xq").val();
					var sf=sheng[sfnum-1].name;
					var cs=shi[csnum-2].name;
					var xq=qu[xqnum-1].DisName;
					var name=$("#name").val();
					var telephone=$("#telephone").val();
					$("#123").attr("action","/roseOnly/YanServlet?op=addPeople&id=yh003&people="+name+"&phone="+telephone+"&sf="+sf+"&cs="+cs+"&xq="+xq);
				});
				
			    /* $("#bj").click(function(){
			    	
			    	var a=$(this).parent().find(".onelist").val();
			    	var b=$(this).parent().find(".twolist").val();
			    	var c=$(this).parent().find(".threelist").val();
			
			    	$("#name").val(a);
			    	$("#telephone").val(b);
			    	$("#dz").val(c);
			    	$("#tian").show();
			    	$("#a").attr("value","修改");
			    	$("#123").attr("action","/roseOnly/YanServlet?op=update&id=yh003&")
			    }) */
			
			});
			/* $(function() {
				for(var i = 0; i < sheng.length; i++) {
					var sheng_shiid = sheng[i].ProID;
					var shengname = sheng[i].name;
					var shengfen = $("<option>").attr("value", sheng_shiid).html(shengname);
					$("#sf").append(shengfen);
				}
				$("#sf").change(function() {
					$("#cs").empty();
					var sheng_shiid = $(this).val();
					for(var j = 0; j < shi.length; j++) {
						if(sheng_shiid == shi[j].ProID) {
							var shi_quid = shi[j].CityID;
							var shiname = shi[j].name;
							var shi2 = $("<option>").attr("value", shi_quid).html(shiname);
							$("#cs").append(shi2);
						}
					}
				});
				$("#cs").change(function() {
					$("#xq").empty();
					var shi_quid = $(this).val();
					for(var j = 0; j < qu.length; j++) {
						if(shi_quid == qu[j].CityID) {
							var quid = qu[j].Id;
							var quname = qu[j].DisName;
							var qu2 = $("<option>").attr("value", quid).html(quname);
							$("#xq").append(qu2);
						}
					}
				});

			}); */
			</script>
			<c:forEach var="list" items="${xxoo }">
				<ul >
					<li style="display:inline-block"><input type="radio" class="111"></li>
					<li style="display:inline-block" class="onelist">${list.receiveing_name }</li>
					<li style="display:inline-block"class="twolist">${list.receiveing_phone }</li>
					<li style="display:inline-block"class="threelist">${list.address }</li>
					<li style="display:inline-block;float:right"><a id="bj">编辑</a></li>
				</ul>
			</c:forEach>
			<div id="zxs"><span>点击添加新地址</span></div>
	
			<div style="display:none" id="tian">
				<br /><br />
				<span style="color: red;">*</span>收 货 人：&nbsp;&nbsp;<input id="name" name="people" type="text" maxlength="11" style="border: 1px solid rgb(180, 180, 180);width:217px;height: 35px;" /><br/><br/>
				<span style="color: red;">*</span>手机号码：
				<input id="telephone" name="phone" type="tel" style="border: 1px solid rgb(180, 180, 180);width:217px;height: 35px;" /><br/><br/> <span style="color: red;">*</span>省&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 份：
				<select id="sf" name="s" style="height: 35px; width: 145px;"></select>
				<select id="cs"  name="c" style="height: 35px; width: 145px;"></select>
				<select id="xq"  name="x" style="height: 35px; width: 145px;"></select><br/><br/><br/> <span style="color: red;">*</span>地 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：
				<input id="dz" name="dz" type="text" style="border: 1px solid rgb(180, 180, 180);width:475px;height: 35px;" /><br /><br />
				<div class="two" id="xiao">取消</div>
				<div class="two"><input id="a" type="submit" value="保存"  style="width: 142px;height: 37px;" ></div>
			</div>
		    </div>
		 </form>
		</div>
		<br /><br />
		<div class="four">
			<div class="three">配送及支付方式</div>
			<div>支付方式:在线支付</div><br />
			<div>配送方式：<input type="radio" checked="checked">快递运输&nbsp;&nbsp;&nbsp;&nbsp;我们将用最快的速度发货（运输费：￥0.00元）<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio">实体店自提
			</div>
		</div>
		<br /><br />
	    <div class="four">
			<div class="three">商品清单</div>
			<div style="width:405px; height: 125px; float:left">
				<img src="img/花.png" style="display: inline;">

				<div class="seven">
					<div style="float: left;">
						<span class="color2">商品名称：</span>
						<span class="eieght">留声机-嫣红-单朵版-中型方形</span>
					</div>
					<div style="float: left;width: 230px;">
						<span class="color2">商品数量：</span>
						<span class="color2">1</span>
					</div>
					<div style="float:left">
						<span class="color2">商品单价：</span>
						<span class="color2">¥2999.0</span>
					</div>
				</div>
			</div>
		        <div class="nine">
			      <span class="color3 ten" id="shoupeople" style="width:150px; ">收货人：</span>
			      <span style="width:250px;margin-left: 25px;margin-top: 10px;" class="color3 " id="shouaddress">地址：</span>
			      <span class="color3" style="margin-top: 10px;"><span style="color: red;">*</span>
			         <div style="width:970px; margin:10px auto; position: relative; top: -42px; left: 7px;">
				           送达日期：<input onClick="laydate()" style="height: 30px; width: 238px;">
			         </div>
		       </div>
	    </div>
		<br /><br />
		<div style="clear: both; margin-top: 150px;">
			<div class="four">
				<div style="padding:35px 0 30px 0;">
					<div class="three">爱的留言</div>
					<div class="qwe">送礼物 前别忘了为收礼人留下你的专属真爱誓言！<br>扫码关注，下单后通过语音或文字的形式提交内容，<br>收礼人可随时查阅，感受独一无二的专属爱语。</div>
				</div>
				<div style="position: relative;left: 450px;top: -150px;">
					<div style="float: left; margin-top: 50px;">第一步：关注公众号</div>
					<div style="float: left; margin-left: 20px;"><img src="img/order_less_code.png"></div>
					<div style="float: left; margin-top: 50px; margin-left: 20px;">第二步：开始留言</div>
					<div style="float: left; margin-left: 20px;"><img src="img/order_less_img.png"></div>
				</div>
			</div>
		</div>
		<div style="clear: both;position: relative;top:-100px">
			<div class="four">
				<div class="card">
					<div class="title">
						<span class="cur">优惠券</span>
						<span class="">礼品卡</span>
					</div>
					<div class="div_gc div_gift" style="display: none;">
						<div class="tab">
							<span style="display: none;">礼品卡</span>
							<span class="cur">添加礼品卡</span>
						</div>
						<div class="div_tab tab_card gift_card" style="display:none;">
							<div>余额：<span>¥</span></div>
						</div>
						<div class="div_tab tab_add gift_add">
							<div><span>请输入礼品卡密码（密码只包含0-9, 大写字母A-Z）</span></div>
							<div>
								<input type="text" maxlength="4"> - <input type="text" maxlength="4"> - <input type="text" maxlength="4"> - <input type="text" maxlength="4">
								<a href="##">绑定并使用</a>
							</div>
						</div>
					</div>
					<div class="div_gc div_conpon" style="display: block;">
						<div class="tab">
							<span style="display: none;">使用优惠券</span>
							<span class="cur">添加优惠券</span>
						</div>
						<div class="div_tab tab_conpon conpon_list" style="display:none;">
						</div>
						<div class="div_tab tab_addc conpon_add">
							<div>
								优惠券码兑换：
								<input type="text" placeholder="请输入优惠码" maxlength="20">
								<a href="##" ">确定</a>
							    </div>
							  <div id="coupon_area_use "></div>
						</div>
				</div>
			</div>
			
			<table width="960px " height="auto " border="0 " cellspacing="0 " cellpadding="0 ">						
					<tr class="pay_total ">
						<td></td>
						<td></td>
						<td class="red " ></td>
						<td align="right ">
							<span style="display: none " >2999.0</span>
						</td>
					</tr>
			</table>
			<div class="content">
    <p>
    	<c:if test="${pay==1 }">
    		<a href="javascript:void(0)" onClick="dashangToggle()" class="dashang" >立即支付</a>
    	</c:if>
    	<c:if test="${pay==2 }">
    		<a href="/roseOnly/SaleServlet?op=fk&id=${requestScope.id }&zj=${requestScope.zj }&spid=${requestScope.spid }" class="dashang" id="qjs">去结算</a>
    	</c:if>
    </p>
    <div class="hide_box"></div>
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
    	<div style=" font-size: 18px;"><a href="PaySuccess.jsp" style="color: red;float: right; text-decoration: none;">支付成功</a></div>
    </div>
    </div>
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
						<a href="##">联系我们</a>
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