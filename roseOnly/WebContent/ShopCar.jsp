<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.ShopCarView" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>我的购物车</title>
		<link rel="icon" href="${pageContext.request.contextPath }/img/logo.icon" type="image/x-icon"/>
		<script src="${pageContext.request.contextPath }/js/jquery-3.1.0.js"></script>
		<script src="${pageContext.request.contextPath }/js/top.js"></script>
		<script>
			$(function() {
				$("#zhichiBtnBox").mouseenter(function() {
					$(".mes_content").css("display", "block");
				});
				$("#zhichiBtnBox").mouseleave(function() {
					$(".mes_content").css("display", "none");
				});
			});
		</script>
		<!--右边部分导航栏的显示和隐藏-->
		<script>
			$(function() {
				$("#zhichiBtnBox").mouseenter(function() {
					$(".mes_content").css("display", "block");
					$("#zhichiBtnBox").css("background-color","#414141");
				});
				$("#zhichiBtnBox").mouseleave(function() {
					$(".mes_content").css("display", "none");
					$("#zhichiBtnBox").css("background-color","#969696");
				});
			});
		</script>
		<!--二维码的盒子显示和隐藏-->
		<script>
			$(function() {
				$("#ewmBox").mouseenter(function() {
					$(".ewm_content").css("display", "block");
					$("#ewmBox").css("background-color","#414141");
				});
				$("#ewmBox").mouseleave(function() {
					$(".ewm_content").css("display", "none");
					$("#ewmBox").css("background-color","#969696");
				});
			});
		</script>
		<!--箭头盒子等到一定高度的显示和隐藏-->
		<script>
			$(function() {
				$("#back-to-top").css("display", "none");
				//获取滚动条的高度
				$(document).scroll(function() {
					var h = $(this).scrollTop();
					if(h > 500) {
						$("#back-to-top").fadeIn(1000, function() {});
					} else {
						$("#back-to-top").fadeOut(1000, function() {});
					}
				});
			});
			$(function(){
				$("#back-to-top").mouseenter(function() {
					$("#back-to-top").css("background-color","#414141");
				});
				$("#back-to-top").mouseleave(function() {
					$("#back-to-top").css("background-color","#969696");
				});
				$(".zxkf_txt").mouseenter(function() {
					$(".zxkf_txt").css("background-color","#414141");
				});
				$(".zxkf_txt").mouseleave(function() {
					$(".zxkf_txt").css("background-color","#969696");
				});
			})
		</script>
			
		<script type="text/javascript">
		$(function(){
		$(".jian").click(function(){
		
			var abc=$(this);
			var x=$(this).parent().find(".sl").val();
			if(x>1){
				x=Number(x)-Number(1);
				$(this).parent().find(".sl").val(x);
			}
				var dj=$(this).parent().parent().find(".dj").text();
				$(".rw_body_div_shopping").find(".zj").text(Number(dj)*Number(x)+".0");
				var zj=0;
	  			$(".box").each(function(){
	  				if($(this).prop("checked")){
						zj=Number(zj)+Number($(this).parent().parent().find(".zj").text());}
					});
					$(".je").text(zj+".00");
				$.ajax({
				type:"post",
				url:"ShoppingCarServlet",
				data:{"op":"Change","number":x,"shopid":abc.parent().parent().find(".shid").text(),"price":Number(dj)*Number(x)},
				success : function(x){
					var y=eval("("+x+")");
				}
			}); 
			});
			$(".jia").click(function(){
			var abc=$(this);
				var x=0;
				x=$(this).parent().find(".sl").val();
				x=Number(x)+Number(1);
				$(this).parent().find(".sl").val(x);
				var dj=$(this).parent().parent().find(".dj").text();
				$(".rw_body_div_shopping").find(".zj").text(Number(dj)*Number(x)+".0");
				var zj=0;
	  			$(".box").each(function(){
	  				if($(this).prop("checked")){
						zj=Number(zj)+Number($(this).parent().parent().find(".zj").text());}
					});
					$(".je").text(zj+".00");
				$.ajax({
				type:"post",
				url:"ShoppingCarServlet",
				data:{"op":"Change","number":x,"shopid":abc.parent().parent().find(".shid").text(),"price":Number(dj)*Number(x)},
				success : function(x){
					var y=eval("("+x+")");
				}
			}); 
			});
			
			
			$(".qx").click(function(){
      			var zj=0;
      			if($(this).prop("checked")){
      				$(".box").prop("checked",true);
      				$(".box").each(function(){
      					zj=Number(zj)+Number($(this).parent().parent().find(".zj").text());
      				});
      				$(".je").text(zj+".00");
      			}else{
      				$(".box").prop("checked",false);
      				$(".je").text("0.00");
      				
      			}	
      		 });
      		
      		$(".box").click(function(){
      			var zj=0;
      			var b;
      			$(".box").each(function(){
      				if($(this).prop("checked")){
      					zj=Number(zj)+Number($(this).parent().parent().find(".zj").text());
      					b=true
      				}else{
      					b=false;
      					return false;
      				}
      			});
      			$(".je").text(zj+".00");
      			if($(this).prop("checked")){
      				if(b){
      					$(".qx").prop("checked",true);
      				}
      			}else{
      				$(".qx").prop("checked",false);
      			}	
      		 });
      		/* $(".fk").click(function(){
      			var a=[];
      			var b=[];
      			$(".box").each(function(){
      				if($(this).prop("checked")){
      					a.push($(this).parent().parent().find(".shid").text());
      					b.push($(this).parent().parent().find(".spid").text());
      				}
      			});	
      			alert(a);
      			$(this).attr("href","${pageContext.request.contextPath }/SaleServlet?op=fk&id="+a+"&user_id=${userId}&zj="+$(".je").text()+"&spid="+b+"");
      		}); */
      		
      		$(".fk").click(function(){
      			var a=[];
      			var b=[];
      			$(".box").each(function(){
      				if($(this).prop("checked")){
      					a.push($(this).parent().parent().find(".shid").text());
      					b.push($(this).parent().parent().find(".spid").text());
      				}
      			});	
      			$(this).attr("href","/roseOnly/YanServlet?op=chaxun&pay=2&id="+a+"&user_id=${userId}&zj="+$(".je").text()+"&spid="+b+"");
      		});
      		
		});
		
		
		</script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ShopCar.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/top.css">
	</head>

	<body>
		<!--  网页顶部    -->
		<div class="rw_top">
			<div class="top">
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
				<a class="rw_top_a_two" href="##"></a>
				<a class="rw_top_a_three" href="##"></a>
				<div class="rw_top_right" id="top_daohan">
					<div id="user_Div">
						<a href="userOrders.jsp">
							<img src="${pageContext.request.contextPath }/img/roseonlyLogo_7.svg" /></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
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
					<div>
						<a href="/roseOnly/ShoppingCarServlet?op=ShopCar"><img id="big" style="transition:all 0.4s;" src="img/roseonlyLogo_8.svg" /></a>&nbsp;&nbsp;(0)&nbsp;|&nbsp;&nbsp;
					</div>
					<div>
						<img src="${pageContext.request.contextPath }/img/roseonlyLogo_9.svg" />
					</div>
				</div>
			</div>
		</div>
		<!--  网页头部    -->
		<div class="rw_head">
			<div class="head">
				<a href="wedding_roseonly.jsp"><img class="rw_hear_img" src="${pageContext.request.contextPath }/img/head_logo.png"></a>
			</div>
		</div>
		<!--
        	身体
        -->
		<div class="rw_body">
			<div class="rw_body_div">
				<div class="rw_body_div_shopping">
					<div class="rw_body_div_shopping-a">
						<div style="width:800px">我的购物车</div>
						<a href="javascript:void(0);" id="cart_del_all">清空购物车</a>
					</div>
					<table class="rw_body_div_shopping-table">
						<tbody>
							<tr>
								<td width="40">&nbsp;</td>
								<td width="110">品牌</td>
								<td width="490">商品名称</td>
								<td width="120">商品单价</td>
								<td width="13">数量</td>
								<td width="60">总价</td>
								<td width="13"></td>
								<td>操作</td>
							</tr>
							<c:forEach var="x" items="${list }">
							<tr>
								<td><input value="${x.shopping_id}" type="checkbox" name="checkbox" class="box"  /></td>
								<td>RoseFlow</td>
								<td>${x.commodity_name }</td>
								<td class="dj">${x.price }</td>
								<td>
									<span style="cursor: pointer;" class="jian">-</span>
									<input class="sl" value="${x.number }" type="text" style="width:20px"/>
									<span style="cursor: pointer;" class="jia">+</span>
									</form>
								</td>
								<td><span class="zj">${x.number*x.price }</span></td>
								<td></td>
								<td><a href="#">删除</a></td>
								<td style="display:none "><p class="shid" style="display:none ">${x.shopping_id}</p></td>
								<td style="display:none "><p class="spid" style="display:none ">${x.commodity_id}</p></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<div class="rw_body_div_shopping-sel-all">
						<input type="checkbox" id="ck_all" class="qx">
						<label for="ck_all" class="qx1">全选</label>
					</div>
					<div class="rw_body_div_shopping-heji">合计:
						<font id="cart_total" class="je">0.00</font>
						<a class="fk"><input type="button" class="cart_button1" value="去结算" id="cart_pay"></</a>
					</div>
					<div class="clear"></div>
				</div>

				<!--<div style="display:none;width:100%;font-size:14px;line-height:25px;text-align: left;color: #f00;">
					<div style="line-height: 50px;font-size: 17px;font-family: &quot;微软雅黑&quot;;">roseonly珠宝季惊喜礼遇</div>
					<div>
						<div style="width:80px;height:70px;float: left;font-weight: bold;font-size: 12px;">活动细则：</div>
						<div style="float: left;font-size: 12px;">
							订单金额满2999元，即可获赠价值520元抱抱熊一只，限量50只。活动结束后统一发出。
						</div>
						<div class="clear"></div>
					</div>
				</div>-->
				<div class=rw_body_div_dingd>
					<div>订单帮助</div>
					<p>热线电话：400-1314-520</p>
					<p>客服邮箱：<a href="mailto:service@roseonly.com">service@roseonly.com</a>&nbsp;&nbsp;客服工作时间：周一至周日9:00-21:00</p>
					<p>如果您在下单过程中遇到问题，请与我们联系。因为鲜花商品对配送时效有特殊要求，订购后请随时登录查询物流状态。</p>
				</div>
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
	</body>

</html>