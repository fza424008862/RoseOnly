<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.js" ></script>
		<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js"></script>
		<script type="text/javascript" src="/roseOnly/js/adminlte.min.js"></script>

		<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
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
								<a hidefocus="true" href="/roseOnly/ShopServlet?op=inputAll&choose=houtai">商品</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/UserServlet?op=chaxun">会员</a>
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
						<li class="header">系统模块菜单</li>
						<li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-home" name="ico" menu="后台首页"></i>
								<span>后台首页</span>
								<span class="pull-right-container">
								<i class="glyphicon glyphicon-menu-left"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/system/default.jsp"><i class="glyphicon glyphicon-record"></i>首页</a>
								</li>
							</ul>
						</li>

						<!-- <li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-qrcode" name="ico" menu="支付管理"></i>
								<span>支付管理</span>
								<span class="pull-right-container">
								<i class="glyphicon glyphicon-menu-left"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/system/payment_list.jsp"><i class="glyphicon glyphicon-record"></i>支付方式</a>
								</li>
							</ul>
						</li>

						<li class="treeview">
							<a href="#">
								<i class="glyphicon glyphicon-piggy-bank" name="ico" menu="配送管理"></i>
								<span>配送管理</span>
								<span class="pull-right-container">
								<i class="glyphicon glyphicon-menu-left"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/system/delivery.jsp"><i class="glyphicon glyphicon-record"></i>配送方式</a>
								</li>
								<li>
									<a href="/roseOnly/system/freight_list.jsp"><i class="glyphicon glyphicon-record"></i>物流公司</a>
								</li>
								<li>
									<a href="/roseOnly/system/takeself_list.jsp"><i class="glyphicon glyphicon-record"></i>自提点列表</a>
								</li>
								<li>
									<a href="/roseOnly/system/takeself_edit.jsp"><i class="glyphicon glyphicon-record"></i>添加自提点</a>
								</li>
							</ul>
						</li> -->
					</ul>
				</section>
			</aside>
			<!--左侧菜单 结束-->

			<!--右侧内容 开始-->
			<div id="admin_right" class="content-wrapper">
				<div class="contents">
					<div class="contents">
						<div class="bg-yellow tips">
							<ul>
								<li>您的安装目录(install目录)没有删除，为了商店安全，请尽快删除或者重新命名</li>
							</ul>
						</div>

						<hr />

						<div class="row">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-aqua">
                        <i class="glyphicon glyphicon-comment"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">评论待回复</span>
										<span class="info-box-number">
                            <a href="/roseOnly/member/Shop_hotai_pingjia.jsp">0</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-red">
                        <i class="glyphicon glyphicon-comment"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">建议待回复</span>
										<span class="info-box-number">
                            <a href="/comment/suggestion_list/search[a.re_time=]/0">0</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-green">
                        <i class="glyphicon glyphicon-comment"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">咨询待回复</span>
										<span class="info-box-number">
                            <a href="/comment/refer_list/search[r.status=]/0">33</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-orange">
                        <i class="glyphicon glyphicon-piggy-bank"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">付款待发货</span>
										<span class="info-box-number">
                            <a href="/roseOnly/order/dingdan.jsp">409</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-olive">
                        <i class="glyphicon glyphicon-user"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">团购活动申请</span>
										<span class="info-box-number">
                            <a href="/market/regiment_list">0</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-teal">
                        <i class="glyphicon glyphicon-list-alt"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">待审商家</span>
										<span class="info-box-number">
                            <a href="/member/seller_list/search[is_lock=]/1">0</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-light-blue">
                        <i class="glyphicon glyphicon-film"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">待审商品</span>
										<span class="info-box-number">
                            <a href="/roseOnly/goods/Shop_hotai_shouye.jsp">1</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-purple">
                        <i class="glyphicon glyphicon-oil"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">待审提现</span>
										<span class="info-box-number">
                            <a href="/member/withdraw_list">0</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-yellow">
                        <i class="glyphicon glyphicon-modal-window"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">货款结算申请</span>
										<span class="info-box-number">
                            <a href="/market/bill_list">1</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-maroon">
                        <i class="glyphicon glyphicon-thumbs-down"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">退款申请</span>
										<span class="info-box-number">
                            <a href="/order/refundment_list">6</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-maroon">
                        <i class="glyphicon glyphicon-cog"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">维修申请</span>
										<span class="info-box-number">
                            <a href="/order/fix_list">1</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="info-box">
									<span class="info-box-icon bg-maroon">
                        <i class="glyphicon glyphicon-retweet"></i>
                    </span>
									<div class="info-box-content">
										<span class="info-box-text">换货申请</span>
										<span class="info-box-number">
                            <a href="/order/exchange_list">5</a>
                            <small>个</small>
                        </span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<section class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="box">
									<div class="box-header">
										<i class="glyphicon glyphicon-th-list"></i>
										<h3 class="box-title">系统信息</h3>
									</div>
									<div class="box-body">
										<table class="table">
											<colgroup>
												<col width="120px" />
												<col />
											</colgroup>
											<thead>
												<tr>
													<th>购买及服务</th>
													<th>
														<a href='http://wpa.qq.com/msgrd?v=3&uin=846327344&site=qq&menu=yes' target='_blank'>联系我们</a>
													</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th>当前版本号</th>
													<td>5.5.19030300</td>
												</tr>
												<tr>
													<th>最新版本号</th>
													<td>/roseOnly.</td>
												</tr>
												<tr>
													<th>官网地址</th>
													<th>
														<a href='http://www.aircheng.com' target='_blank'>www.aircheng.com</a>
													</th>
												</tr>
												<tr>
													<th>服务器软件</th>
													<td>Apache</td>
												</tr>
												<tr>
													<th>附件上传容量</th>
													<td>50M</td>
												</tr>
												<tr>
													<th>授权信息</th>
													<td>/roseOnly.</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</section>
							<section class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="box">
									<div class="box-header">
										<i class="glyphicon glyphicon-signal"></i>
										<h3 class="box-title">基础统计</h3>
									</div>
									<div class="box-body">
										<table class="table">
											<colgroup>
												<col width="120px" />
												<col />
											</colgroup>
											<thead>
												<tr>
													<th>商家数量</th>
													<td>
														<a href="/member/seller_list">6</a>
														<small>家</small>
													</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th>销售总额</th>
													<td>
														<a href="/market/amount">35000032288286.56</a>
														<small>元</small>
													</td>
												</tr>
												<tr>
													<th>注册用户</th>
													<td>
														<a href="/member/member_list">83</a>
														<small>个</small>
													</td>
												</tr>
												<tr>
													<th>产品数量</th>
													<td>
														<a href="/goods/goods_list">335</a>
														<small>个</small>
													</td>
												</tr>
												<tr>
													<th>品牌数量</th>
													<td>
														<a href="/brand/brand_list">8</a>
														<small>个</small>
													</td>
												</tr>
												<tr>
													<th>订单数量</th>
													<td>
														<a href="/order/order_list">2804</a>
														<small>个</small>
													</td>
												</tr>
												<tr>
													<th>库存预警</th>
													<td>
														<a href="/goods/goods_list/search[store_nums]/20">4</a>
														<small>个</small>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</section>
						</div>
						<div class="box box-info">
							<div class="box-header">
								<i class="glyphicon glyphicon-file"></i>
								<h3 class="box-title">最新10条等待处理订单</h3>
							</div>
							<div class="box-body">
								<table class="table">
									<thead>
										<th>订单号</th>
										<th>收货人</th>
										<th>订单状态</th>
										<th>金额</th>
										<th>下单时间</th>
										<th>操作</th>
									</thead>
									<tbody>
										<tr>
											<td>201907261500414650</td>
											<td>admin</td>
											<td>已付款</td>
											<td><b class="text-red">￥169.00</b></td>
											<td>2019-07-26 15:00:41</td>
											<td>
												<a href="/order/order_show/id/6508">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="javascript:delModel({link:'/order/order_del/id/6508'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907231525338118</td>
											<td>安防</td>
											<td>未付款</td>
											<td><b class="text-red">￥3019.00</b></td>
											<td>2019-07-23 15:25:33</td>
											<td>
												<a href="/order/order_show/id/6472">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6472"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6472'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907231524466939</td>
											<td>111</td>
											<td>未付款</td>
											<td><b class="text-red">￥169.00</b></td>
											<td>2019-07-23 15:24:46</td>
											<td>
												<a href="/order/order_show/id/6471">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6471"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6471'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907231524462688</td>
											<td>111</td>
											<td>未付款</td>
											<td><b class="text-red">￥218.00</b></td>
											<td>2019-07-23 15:24:46</td>
											<td>
												<a href="/order/order_show/id/6470">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6470"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6470'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907231516124435</td>
											<td>111</td>
											<td>未付款</td>
											<td><b class="text-red">￥218.00</b></td>
											<td>2019-07-23 15:16:12</td>
											<td>
												<a href="/order/order_show/id/6468">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6468"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6468'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907231123512667</td>
											<td>name</td>
											<td>未付款</td>
											<td><b class="text-red">￥189.00</b></td>
											<td>2019-07-23 11:23:51</td>
											<td>
												<a href="/order/order_show/id/6463">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6463"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6463'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907221607423304</td>
											<td>111</td>
											<td>未付款</td>
											<td><b class="text-red">￥23284.00</b></td>
											<td>2019-07-22 16:07:42</td>
											<td>
												<a href="/order/order_show/id/6451">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6451"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6451'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907221517331818</td>
											<td></td>
											<td>未付款</td>
											<td><b class="text-red">￥218.00</b></td>
											<td>2019-07-22 15:17:33</td>
											<td>
												<a href="/order/order_show/id/6449">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6449"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6449'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907201037524906</td>
											<td></td>
											<td>未付款</td>
											<td><b class="text-red">￥21.00</b></td>
											<td>2019-07-20 10:37:52</td>
											<td>
												<a href="/order/order_show/id/6438">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="/order/order_edit/id/6438"><i class='glyphicon glyphicon-edit'></i></a>

												<a href="javascript:delModel({link:'/order/order_del/id/6438'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
										<tr>
											<td>201907191512464249</td>
											<td>111</td>
											<td>已付款</td>
											<td><b class="text-red">￥283.00</b></td>
											<td>2019-07-19 15:12:46</td>
											<td>
												<a href="/order/order_show/id/6436">
													<i class='glyphicon glyphicon-eye-open'></i>
												</a>

												<a href="javascript:delModel({link:'/order/order_del/id/6436'})"><i class='glyphicon glyphicon-remove'></i></a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--右侧内容 结束-->

			<!--顶部弹出菜单 开始-->
			<aside class="control-sidebar control-sidebar-dark">
				<ul class="control-sidebar-menu">
					<li>
						<a href="/roseOnly/admin/login.jsp"><i class="glyphicon glyphicon-record text-red"></i> 退出管理</a>
					</li>
					<!-- <li>
						<a href="/roseOnly/permissions/admin_repwd.jsp"><i class="glyphicon glyphicon-record text-yellow"></i> 修改密码</a>
					</li> -->
					<li>
						<a href="/roseOnly/system/default.jsp"><i class="glyphicon glyphicon-record text-green"></i> 后台首页</a>
					</li>
					<li>
						<a href="wedding_roseonly.jsp" target='_blank'><i class="glyphicon glyphicon-record text-aqua"></i> 商城首页</a>
					</li>
					<!-- <li>
						<a href="/system/navigation"><i class="glyphicon glyphicon-record"></i> 快速导航</a>
					</li> -->
				</ul>
			</aside>
			<!--顶部弹出菜单 结束-->
		</div>
		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	</body>

</html>