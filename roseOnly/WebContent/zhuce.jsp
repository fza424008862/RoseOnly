<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="css/foot.css" />
		<link rel="stylesheet" href="css/zhuce.css" />
		<link rel="stylesheet" href="css/top.css">
		<script src="js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="js/top.js" ></script>
		<script type="text/javascript" src="js/foot.js" ></script>
		<!--验证码 -->
		<script>
			$(function() {
				var show_num = [];
				draw(show_num);
				$("#a").on('click', function() {
					draw(show_num);
				});
				$(".btn").on('click', function() {
					var val = $(".input-val").val().toLowerCase();
					var num = show_num.join("");
					if(val == '') {
						alert('请输入验证码！');
					} else if(val == num) {
						alert('提交成功！');
						$(".input-val").val('');
						// draw(show_num);
					} else {
						alert('验证码错误！请重新输入！');
						$(".input-val").val('');
						// draw(show_num);
					}
				});
			});
			//生成并渲染出验证码图形
			function draw(show_num) {
				var canvas_width = $('#canvas').width();
				var canvas_height = $('#canvas').height();
				var canvas = document.getElementById("canvas"); //获取到canvas的对象，演员
				var context = canvas.getContext("2d"); //获取到canvas画图的环境，演员表演的舞台
				canvas.width = canvas_width;
				canvas.height = canvas_height;
				var sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
				var aCode = sCode.split(",");
				var aLength = aCode.length; //获取到数组的长度
				for(var i = 0; i < 4; i++) { //这里的for循环可以控制验证码位数（如果想显示6位数，4改成6即可）
					var j = Math.floor(Math.random() * aLength); //获取到随机的索引值
					// var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
					var deg = Math.random() - 0.5; //产生一个随机弧度
					var txt = aCode[j]; //得到随机的一个内容
					show_num[i] = txt.toLowerCase();
					var x = 10 + i * 20; //文字在canvas上的x坐标
					var y = 20 + Math.random() * 8; //文字在canvas上的y坐标
					context.font = "bold 23px 微软雅黑";
					context.translate(x, y);
					context.rotate(deg);
					context.fillStyle = randomColor();
					context.fillText(txt, 0, 0);
					context.rotate(-deg);
					context.translate(-x, -y);
				}
				for(var i = 0; i <= 5; i++) { //验证码上显示线条
					context.strokeStyle = randomColor();
					context.beginPath();
					context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
					context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
					context.stroke();
				}
				for(var i = 0; i <= 30; i++) { //验证码上显示小点
					context.strokeStyle = randomColor();
					context.beginPath();
					var x = Math.random() * canvas_width;
					var y = Math.random() * canvas_height;
					context.moveTo(x, y);
					context.lineTo(x + 1, y + 1);
					context.stroke();
				}
			}
			//得到随机的颜色值
			function randomColor() {
				var r = Math.floor(Math.random() * 256);
				var g = Math.floor(Math.random() * 256);
				var b = Math.floor(Math.random() * 256);
				return "rgb(" + r + "," + g + "," + b + ")";
			}
		</script>
		<script>
			function daohang() {
				var H = document.body.scrollTop;
				if(H > 120) {
					document.getElementById("daohan").style.position = "fixed";
					document.getElementById("daohan").style.top = "0px";
					document.getElementById("top_daohan").style.position = "fixed";
					document.getElementById("top_daohan").style.top = "0px";
					document.getElementById("top_daohan").style.zIndex = "10";

				} else {
					document.getElementById("daohan").style.position = "static";
					document.getElementById("daohan").style.top = "normal";
					document.getElementById("top_daohan").style.position = "static";
					document.getElementById("top_daohan").style.top = "normal";
					document.getElementById("top_daohan").style.zIndex = "0";

				}
				/*var h_tu=document.body.srcollTop;
				if(h_tu>1700){
					docement.getElementById("div_donghuatupian_you").style.dispay="inline-block";
				}*/
			}
		</script>
		<script>
		 $(function(){
			 var k;
			 $("#phone").blur(function() {
					var myreg = /^1[34578]\d{9}$/;
					var phone1 = $("[name=phone]").val();
					if (!myreg.test(phone1)) {
						$("#yz1").css("display","block");
					}
				});
			 $("#phone").focus(function() {
				 $("#yz1").css("display","none");
				});
			 $("#password").blur(function() {
					var password1 = $("[name=pass]").val();
					if (password1 == '') {
						$("#yz2").html("请输入密码!");
						$("#yz2").css("display","block");
					} else if (password1.length < 6) {
						$("#yz2").html("密码长度不能小于6位");
						$("#yz2").css("display","block");
					}
				});
			 $("#aaa").click(function() {
	
					var phone2 = $("[name=phone]").val();
					var password2 = $("[name=pass]").val();
					var select = $("[name=select]").is(':checked');
					var myreg = /^1[34578]\d{9}$/;

					//手机号
					if (!myreg.test(phone2)) {
						$("#yz1").show();
					} else {
						$("#yz1").hide();
					}

					//密码
					if (password2 =='') {
						$("#yz2").html("请输入密码!");
						$("#yz2").show();
					} else if (password2.length < 6) {
						$("#yz2").html("密码长度不能小于6位");
						$("#yz2").show();
					} else {
						$("#yz2").hide();
					}
						
					//同意协议
					if (select == false) {
						$("#yz3").show();
					} else {
						$("#yz3").hide();
					}
					if (myreg.test(phone2) && password2.length >= 6
							&& select == true ) {
						$("#yz1").hide();
						$("#yz2").hide();
						$("#yz3").hide();
						$("#form1").submit();
					}

				});	 
		 $(".background2").click(function(){
			 alert("已发送");
   			var a=$(this).parent().parent().parent().parent().find("#phone").val();  				
   			var b=$(this);
   			$.ajax({
				type:"post",
				url:"/roseOnly/UserServlet",
				data:{"op":"yzm","phone":a},
   				success : function(a){
				var y=eval("("+a+")");
				k=y.yzm;
			}
			}); 
   		});		
			 $("#password").focus(function() {
				$("#yz2").css("display","none");
				});
		 });
		 
		 
		 
		</script>
		
	</head>

	<body onscroll="daohang()">
		<a name="t"></a>
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
							<a href="register.jsp">登录</a>&nbsp;<span></span>|
							<a href="zhuce.jsp">注册</a>
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
			<a href="wedding_roseonly.html"><img class="rw_hear_img" src="img/head_logo.png"></a>
		</div>
		<!--  网页头部商品    -->
		<div class="rw_shop_lie" id="daohan">
			<ul>
				<li>
					<a href="##" id="xinping">新品上市</a>

				</li>
				<li>
					<a href="##" id="aili">爱礼推荐</a>
					<div class="rw_shop_lie_two">
						<div class="shop_lie">
							<div>
								<span>场合</span>
								<a href="##"><span>七夕限定礼盒</span></a>
								<a href="##"> <span>七夕鲜花预订</span> </a>
								<a href="##"> <span>生日</span> </a>
								<a href="##"> <span>纪念日</span> </a>
								<a href="##"> <span>表白</span> </a>
								<a href="##"> <span>求婚</span> </a>
							</div>
							<div>
								<span>人群</span>
								<a href="##"> <span>送给她</span> </a>
								<a href="##"> <span>送给他</span> </a>
								<a href="##"> <span>送母亲</span> </a>
								<a href="##"> <span>送父亲</span> </a>
								<a href="##"> <span>送宝贝<label></label></span> </a>
							</div>
							<div>
								<span>品类</span>
								<a href="##"> <span>七夕限定礼盒</span> </a>
								<a href="##"> <span>鲜花玫瑰<label class="hot"></label></span> </a>
								<a href="##"> <span>永生玫瑰</span> </a>
								<a href="##"> <span>玫瑰珠宝</span> </a>
								<a href="##"> <span>玫瑰饰品</span> </a>
								<a href="##"> <span>玫瑰香氛</span> </a>
								<a href="##"> <span>玫瑰礼品<label></label></span> </a>
							</div>
							<img src="img/ailituijian.jpg" alt="roseonly 爱礼推荐">
						</div>
					</div>
				</li>
				<li>
					<a href="##" id="xianhua">鲜花玫瑰</a>
					<div class="rw_shop_lie_three">
						<div class="shop_lie">
							<div>
								<span>类型</span>
								<a href="##"> <span>玫瑰长盒<label class="hot"></label></span> </a>
								<a href="##"> <span>玫瑰手捧</span> </a>
								<a href="##"> <span>玫瑰花桶</span> </a>
								<a href="##"> <span>玫瑰水晶花盒</span> </a>
							</div>
							<div>
								<span>系列</span>
								<a href="##"> <span>经典永续<label class="hot"></label></span> </a>
								<a href="##"> <span>恒久真爱</span> </a>
								<a href="##"> <span>爱在满怀</span> </a>
								<a href="##"> <span>全世爱</span> </a>
								<a href="##"> <span>星座经典</span> </a>
								<a href="##"> <span>玫瑰公仔</span> </a>
								<a href="##"> <span>告白气球</span> </a>
								<a href="##"> <span>for all love</span> </a>
							</div>
							<div>
								<span>规格</span>
								<a href="##"> <span>19支80cm<label class="hot"></label></span> </a>
								<a href="##"> <span>11支80cm</span> </a>
								<a href="##"> <span>19支40cm</span> </a>
								<a href="##"> <span>11支40cm</span> </a>
							</div>
							<img src="img/xianhua.jpg" alt="roseonly 鲜花玫瑰">
						</div>
					</div>
				</li>
				<li>
					<a href="ChooceShop.html" id="yongsheng">永生玫瑰</a>
					<div class="rw_shop_lie_four">
						<div class="shop_lie">
							<div>
								<span>类型</span>
								<a href="##"> <span>七夕限定礼盒</span> </a>
								<a href="##"> <span>音乐玫瑰<label></label></span> </a>
								<a href="##"> <span>玫瑰球形<label class="hot"></label></span> </a>
								<a href="##"> <span>玫瑰圆盒</span> </a>
								<a href="##"> <span>玫瑰方盒</span> </a>
								<a href="##"> <span>玫瑰心形盒</span> </a>
							</div>
							<div>
								<span>系列</span>
								<a href="a href=" ## ""><span>玫瑰公仔<label class="hot"></label></span> </a>
								<a href="##"> <span>全世爱</span> </a>
								<a href="##"> <span>经典永续<label></label></span> </a>
								<a href="##"> <span>星座经典</span> </a>
								<a href="##"> <span>一生一世</span> </a>
								<a href="##"> <span>恒久心动</span> </a>
								<a href="##"> <span>for all love</span> </a>
							</div>
							<div>
								<span>规格</span>
								<a href="##"> <span>巨型</span> </a>
								<a href="##"> <span>大型<label class="hot"></label></span> </a>
								<a href="##"> <span>中型</span> </a>
								<a href="##"> <span>小型</span> </a>
								<a href="##"> <span>Mini</span> </a>
							</div>
							<img src="img/yongsheng.jpg" alt="roseonly 永生玫瑰">
						</div>
					</div>
				</li>
				<li>
					<a href="##" id="zhubao">玫瑰珠宝</a>
					<div class="rw_shop_lie_five">
						<div class="shop_lie">
							<div>
								<span>类型</span>
								<a href="##"> <span>项链<label class="hot"></label></span> </a>
								<a href="##"> <span>手链</span> </a>
								<a href="##"> <span>耳饰</span> </a>
								<a href="##"> <span>手镯</span> </a>
								<a href="##"> <span>戒指</span> </a>
							</div>
							<div>
								<span>系列</span>
								<a href="##"> <span>loveheart lock</span> </a>
								<a href="##"> <span>玫瑰公仔<label class="hot"></label></span> </a>
								<a href="##"> <span>生辰石<label class="hot"></label></span> </a>
								<a href="##"> <span>玫瑰经典</span> </a>
								<a href="##"> <span>经典永续</span> </a>
								<a href="##"> <span>星座经典</span> </a>
								<a href="##"> <span>全心全意</span> </a>
								<a href="##"> <span>幸运精灵</span> </a>
							</div>
							<div>
								<span>材质</span>
								<a href="##"> <span>18K金镶宝石</span> </a>
								<a href="##"> <span>18K白金镶钻</span> </a>
								<a href="##"> <span>18K玫瑰金镶钻</span> </a>
								<a href="##"> <span>18K白金</span> </a>
								<a href="##"> <span>18K玫瑰金<label class="hot"></label></span> </a>
								<a href="##"> <span>9K玫瑰金</span> </a>
							</div>
							<img src="img/zhubao.jpg" alt="roseonly 玫瑰珠宝">
						</div>
					</div>
				</li>
				<li>
					<a href="##" id="shipin">玫瑰饰品</a>
					<div class="rw_shop_lie_six">
						<div class="shop_lie">
							<div>
								<span>类型</span>
								<a href="##"> <span>项链<label class="hot"></label></span> </a>
								<a href="##"> <span>手链</span> </a>
								<a href="##"> <span>耳饰</span> </a>
							</div>
							<div>
								<span>系列</span>
								<a href="##"> <span>玫瑰公仔</span> </a>
								<a href="##"> <span>玫瑰经典</span> </a>
							</div>
							<div>
								<span>材质</span>
								<a href="##"> <span>925银镀白金<label class="hot"></label></span> </a>
							</div>
							<img src="img/shipin.jpg" alt="roseonly 玫瑰饰品">
						</div>
					</div>
				</li>
				<li>
					<a href="##" id="xiangfen">玫瑰香氛</a>
					<div class="rw_shop_lie_seven">
						<div class="shop_lie">
							<div>
								<span>类型</span>
								<a href="##"> <span>散香</span> </a>
								<a href="##"> <span>蜡烛</span> </a>
								<a href="##"> <span>陶瓷香氛<label class="hot"></label></span> </a>
							</div>
							<div>
								<span>系列</span>
								<a href="##"> <span>经典永续<label class="hot"></label></span> </a>
								<a href="##"> <span>星座经典</span> </a>
								<a href="##"> <span>玫瑰公仔</span> </a>
								<a href="##"> <span>for all love</span> </a>
							</div>
							<div>
								<span>规格</span>
								<a href="##"> <span>单支</span> </a>
								<a href="##"> <span>套装礼盒<label class="hot"></label></span> </a>
							</div>
							<img src="img/xiangfen.jpg" alt="roseonly 玫瑰香氛">
						</div>
					</div>
				</li>
				<li>
					<a href="##" id="dingzhi">高端定制</a>
				</li>
				<li>
					<a href="##" id="shijie">诺誓世界</a>

					<div class="rw_shop_lie_nine">
						<div class="shop_lie">
							<div>
								<span>品牌介绍</span>
								<a href="##"> <span>品牌故事</span> </a>
								<a href="##"> <span>产品故事</span> </a>
								<a href="##"> <span>明星时刻</span> </a>
								<a href="a href=" ## ""> <span>真爱见证</span> </a>
								<a href="a href=" ## ""> <span>活动资讯</span> </a>
								<a href="a href=" ## ""> <span>诺誓百科</span> </a>
							</div>
							<div>
								<span>节日百科</span>
								<a href="a href=" ## ""> <span>情人节百科</span> </a>
								<a href="a href=" ## ""> <span>母亲节百科</span> </a>
								<a href="##"> <span>520百科</span> </a>
								<a href="a href=" ## ""> <span>七夕节百科</span> </a>
								<a href="a href=" ## ""> <span>圣诞节百科</span> </a>
							</div>
							<img src="img/shijie.jpg" alt="roseonly 诺誓世界">
						</div>
					</div>
				</li>
			</ul>
		</div>
	<form id="form1" action="UserServlet?op=zhuce" method="post">
		<div class="one">
			<div class="two">
				<div>
					<div class="register_nav">
						<select class="register_text indent" style="border: solid 1px #b3b3b3;">
							<option>澳大利亚</option>
							<option>韩国</option>
							<option>加拿大</option>
							<option>马来西亚</option>
							<option>美国</option>
							<option>日本</option>
							<option>新加坡</option>
							<option>英国</option>
							<option selected="selected">中国</option>
							<option>中国澳门</option>
							<option>中国台湾</option>
							<option>中国香港</option>
						</select>
					</div>
					<div class="register_nav">
						<input type="text" maxlength="11" placeholder="请输入手机号" class="register_text" id="phone" name="phone" >
						<div class="register_nav_86">+86</div>
						<div><span class="reminder" style="display: none;" id="yz1">请填写正确的手机号</span></div>
					</div>
					<div class="register_nav" style="margin-left: 52px;">
						<div style="margin-top: 10px; width: 100px;">
							<input type="text" value="" placeholder="请输入验证码（不区分大小写）" style="font-size: 12px;height: 45px; width: 290px;">
							<canvas id="canvas" width="100" height="30" style="position: relative; left: 190px; top: -40px;"></canvas>
							<a id="a" href="##" style="position: relative; left: 293px; top: -50px;">换一张</a>
						</div>
					</div>

					<div class="register_nav" style="margin-top: -25px;">
						<div style="width:8px;border:0.5px solid white;display: inline-block;"></div>
						<input type="text" maxlength="4" class="register_yzm" placeholder="短信验证码">
						<span>
							<div class="sms_button">
								<a  class="background2" >发送验证码</a>
							</div>
						 </span>
                    </div>
						<div class="register_nav" style="height:30px">
							<input type="password" placeholder="密码：请输入6-16位数字或字母" class="register_password" name="pass" id="password">
							<div><span class="reminder" style="display: none;" id="yz2">请填写正确的密码格式！</span></div>
						</div>
						<div class="register_nav" style="margin-top: 20px;">
							<input type="checkbox" name="select"/>我已仔细阅读、理解并同意诺誓会员政策
							<br /><div><span class="reminder" style="display:none;" id="yz3">请勾选！！</span></div>
							<a href="register.jsp" style="text-decoration: none; color: black;float: right;">已有账号</a>
						</div>
						<div class="register_button" style="margin-top: 55px;">
							<input id="aaa" type="button" value="创建账号" style="width: 290px;height: 45px;line-height: 45px;display: block;text-align: center;color:black;font-size: 16px;letter-spacing: 2px;text-decoration: none;">
						</div>
					</div>
				</div>
				
					<span style="position:relative;left:975px;top:578px "><img src="img/biao.png" style="width:395px" /></span>
				
			</div>
		</div>
	</form>
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
					<li>j
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
			<!--回到顶部箭头-->
			<div id="back-to-top" style="display: block;">
				<a class="go_top" href="#t"><img src="img/jt.svg">
				</a>
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
		.
	</body>

</html>