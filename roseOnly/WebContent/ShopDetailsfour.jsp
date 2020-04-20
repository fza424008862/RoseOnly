<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<script src="jquery-3.1.0.js"></script>
		<script src="jquery.animate-colors.js"></script>
		<link rel="stylesheet" href="css/top.css">
		<link rel="stylesheet" href="css/ShopDetailsone.css">
		<script src="http://code.jquery.com/color/jquery.color-2.1.2.js"integrity="sha256-1Cn7TdfHiMcEbTuku97ZRSGt2b3SvZftEIn68UMgHC8="crossorigin="anonymous"></script>
		<script src="js/top.js"></script>
		<link rel="icon" href="img/logo.icon" type="image/x-icon"/>
		<script src="js/ShopDetails.js"></script>
		<title> roseonly-信者得爱，爱是唯一  </title>
		<style>
			.sd_body_shangpin_canshu{
				float: left;
				padding: 30px 0 25px 70px;
			    font-size: 12px;
			    line-height: 30px;
			    width: 890px;
			    border-top: 1px solid #d9d9d9;
			}
			.sd_body_shangpin_canshu>h1{
				float: left;
			    font-size: 16px;
			    margin-top: 30px;
			}
			.sd_body_shangpin_canshu>div{
				float: left;
   				margin: 0 86px;
			}
			.sd_body_shangpin_canshu>div>p{
				    padding-left: 8px;
				    font-size: 14px;
				    color: #414141;
				    background: url(img/point.png) left center no-repeat;
			}
		</style>
		<script>
			$(function(){
				$(".sd_body_shangpin_xinxi_car").css("border","1px solid white").css("color","white").css("cursor","default");
			})
		</script>
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
				<a class="rw_top_a_one" href="wedding_roseonly.html"></a>
				<a class="rw_top_a_two" href="##"></a>
				<a class="rw_top_a_three" href="##"></a>
				<div class="rw_top_right" id="top_daohan">
					<div id="user_Div">
						<a href="userOrders.html">
							<img src="img/roseonlyLogo_7.svg" />&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;</a>
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
		</div>
		<!--
        	身体
        -->
        <div class="sd_body">
        	<div class="sd_body_shangpin">
        		<div class="sd_body_shangpin_ylt">
        			<div class="sd_body_shangpin_ylt_big">
        				<img src="img/shangpinfour_big1.png" />
        			</div>
        			<div class="sd_body_shangpin_ylt_xiao">
        				<div style="background:url(img/left.jpg) no-repeat 0 19px;"></div>
        				<a href="##" style="border:solid 1.2px #7e7e7e;"><img src="img/shangpinfour_big1.png"/></a>
        				<a href="##" ><img src="img/shangpinfour_big2.png"/></a>
        				<a href="##" ><img src="img/shangpinfour_big3.png"/></a>
        				<a href="##" ><img src="img/shangpinfour_big4.png"/></a>
        				<a href="##" ><img src="img/shangpinfour_big5.png"/></a>
        				<div style="background:url(img/right.jpg) no-repeat 0 19px;"></div>
        			</div>
        		</div>
        		<div class="sd_body_shangpin_xinxi">
        			<div class="sd_body_shangpin_xinxi_txt">经典永续 - 永恒九朵版嫣红 小型方形</div>
        			<div class="sd_body_shangpin_xinxi_bm">1011010004</div>
        			<div class="sd_body_shangpin_xinxi_pay">
	        			<span>价格 :</span>
	        			<div class="s_b_s_x_pay_discount"></div>
						¥999
	        			<div class="s_b_s_x_pay_original"></div>
	        		</div>
	        		<span class="s_b_s_X_pay_color">颜色：</span>
	        		<div class="s_b_s_X_pay_color_div">
	        				<img src="img/shangpinfour_big1.png"/>
	        		</div>
	        		<div class="sd_body_shangpin_xinxi_number">
	        			<span>数量：</span>
	        			<input type="text" value="1" maxlength="2" id="number"/>
	        			<div>
	        				<a href="##" class="number_up"></a>
	        				<a href="##" class="number_down"></a>
	        			</div>
	        		</div>
	        		<a href="##" class="sd_body_shangpin_xinxi_buy">到货通知</a>
	        		<a href="##" class="sd_body_shangpin_xinxi_car">加入购物车</a>
	        		<div class="sd_body_shangpin_xinxi_fwcn">服务承诺：官方正品   免邮配送   同城速递</div>
        		</div>
        		<div class="sd_body_shangpin_canshu">
        			<h1>产品参数</h1>
        			<div>
		    			<p><b>适用场景：</b>表白、纪念日</p>
		    			<p><b>适用对象：</b>送女朋友</p>
						<p><b>适用节日：</b>情人节、520表白日、七夕节</p>							
        			</div>
        			<div class="xq_description_left">
						<p><b>颜色分类：</b>嫣红</p>				
						<p><b>产品规格：</b>11*11*11cm</p>				
						<p><b>产品大小：</b>小型</p>															
        			</div>
        		</div>
        		<div><img src="img/shangpinone_1.png"></div>
        		<div><img src="img/shangpinfour_2.jpg"></div>
        		<div><img src="img/shangpinfour_3.jpg"></div>
        		<div><img src="img/shangpinfour_4.jpg"></div>
        		<div><img src="img/shangpinfour_6.gif"></div>
        		<div><img src="img/shangpinfour_7.jpg"></div>
        		<div><img src="img/shangpinfour_8.jpg"></div>
        	</div>
        	
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
					<a href="https://www.roseonly.com.cn/upload/syspic_new/15460694044488361.jpg" target="_blank">营业执照</a>
					<a href="https://www.roseonly.com.cn/upload/syspic_new/15460768132621912.jpg" target="_blank">食品证副本</a>
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
