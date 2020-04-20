<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>roseonly官网-高端爱情信物品牌_信者得爱，爱是唯一</title>
		<link rel="icon" href="img/logo.icon" type="image/x-icon"/>
		<script src="js/jquery-3.1.0.js"></script>
		<script src="js/roseonly.js"></script>
		<script src="js/top.js"></script>
		<link rel="stylesheet" href="css/roseonly.css">
		<link rel="stylesheet" href="css/top.css">
	</head>

	<body onscroll="daohang()">
		<a name="t"></a>
		<!--  网页顶部    -->
		<div class="rw_top">
			<div class="top">
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
				<a class="rw_top_a_one" href="##"></a>
				<a class="rw_top_a_two" href="##"></a>
				<a class="rw_top_a_three" href="##"></a>
				<div class="rw_top_right" id="top_daohan">
					<div id="user_Div">
						<a href="userOrders.jsp"><img src="img/roseonlyLogo_7.svg" /></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
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
						<a href="/roseOnly/ShoppingCarServlet?op=ShopCar"><img id="big" style="transition:all 0.4s;" src="img/roseonlyLogo_8.svg" /></a>&nbsp;&nbsp;(0)&nbsp;|&nbsp;&nbsp;
					</div>
					<div>
						<img src="img/roseonlyLogo_9.svg" />
					</div>
				</div>
			</div>
		</div>
		<!--  网页头部    -->
		<div class="rw_head">
			<div class="head">
				<a href="##"><img class="rw_hear_img" src="img/head_logo.png"></a>
			</div>
		</div>
		<!--  网页头部商品    -->
		<div class="rw_shop_lie" id="daohan">
			<div class="shop">
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
						<a href="/roseOnly/ShopServlet?op=inputAll&choose=qiantai" id="yongsheng">永生玫瑰</a>
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
		</div>

		<!--
        	图片轮播
        -->
		<div id="one">
			<div>
				<div class="div_left" onclick="lun('',1)" onmouseover="stop()" onmouseout="start1()">&lt;</div>
				<div class="div_right" onclick="lun('',0)" onmouseover="stop()" onmouseout="start1()">&gt;</div>
			</div>
			<ul>
				<li name="lun" id="0" onmouseover="lun(id,0),stop()" onmouseout="start1()"></li>
				<li name="lun" id="1" onmouseover="lun(id,0),stop()" onmouseout="start1()"></li>
				<li name="lun" id="2" onmouseover="lun(id,0),stop()" onmouseout="start1()"></li>
				<li name="lun" id="3" onmouseover="lun(id,0),stop()" onmouseout="start1()"></li>
				<li name="lun" id="4" onmouseover="lun(id,0),stop()" onmouseout="start1()"></li>
				<li name="lun" id="5" onmouseover="lun(id,0),stop()" onmouseout="start1()"></li>
			</ul>
		</div>
		<!--
			会员多重惊喜
		-->

		<div class="rw_middle_huiyuan">
			<div><img src="img/huiyuan1.jpg" /><img src="img/huiyuan2.jpg" /></div>
			<div><img src="img/huiyuan3.jpg" /></div>
			<div><img src="img/huiyuan4.jpg" /></div>
			<div><img src="img/huiyuan5.jpg" /></div>
			<div><img src="img/huiyuan6.jpg" /><img src="img/huiyuan7.jpg" /><img src="img/huiyuan8.jpg" /></div>
			<div><img style=" float: left;" src="img/huiyuan9.jpg" /><img src="img/huiyuan10.jpg" /></div>
			<div><img src="img/huiyuan11.jpg" /><img src="img/huiyuan12.jpg" /></div>
			<div><img src="img/huiyuan13.jpg" /></div>
			<div><img src="img/huiyuan14.jpg" /><img src="img/huiyuan15.jpg" /><img src="img/huiyuan16.jpg" /></div>
			<div><img src="img/huiyuan17.jpg" /></div>
			<div><img src="img/huiyuan18.jpg" /><img src="img/huiyuan19.jpg" /></div>
			<div><img src="img/huiyuan20.jpg" /><img src="img/huiyuan21.jpg" /></div>
			<div><img src="img/huiyuan22.jpg" /><img src="img/huiyuan23.jpg" /><img src="img/huiyuan24.jpg" /></div>
		</div>
		<!--
        	底部
       -->
		<div class="rw_bottom">
			<div class="rw_bottom_div">
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
					<dt></dt>
					<dd>
						<p>微信关注roseonly <br>激活会员，立即领取</p>
						<h2>50元优惠券</h2>
						<div></div>
					</dd>
				</dl>
				<div class="footer-yyzz" style="display:none;">
					<a href="##" target="_blank">营业执照</a>
					<a href="##" target="_blank">食品证副本</a>
				</div>
			</div>
			<div class="foot-nav">
				京ICP备13007738号 京公网安备11010502023922<br>诺誓（北京）商业股份有限公司
			</div>
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
	</body>

</html>