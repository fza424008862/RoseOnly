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
		<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.js"></script>
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
    <script>
    	$(function() {
	    	var choose="${requestScope.choose }";
					if(choose=="edit"){
						var oldtitle_name="${requestScope.title_name}";
						var title_name=$("#title_name").val("${requestScope.title_name}");
						
						$("#title_name").change(function(){
							title_name=$("#title_name").val();
							$("#bianji").attr("action","/roseOnly/TitleServlet?op=updateTitle&choose=Preservation&oldtitle_name="+oldtitle_name+"&title_name="+title_name);
						});
						$("#Preservation").val("保存");
						$("#Preservation").click(function(){
							$("#bianji").submit();
						});		
					}
    			});
    </script>
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
								<a hidefocus="true" href="/roseOnly/goods/Shop_hotai_shouye.jsp">商品</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/member/Shop_hotai_huiyuan.jsp">会员</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/order/dingdan.jsp">订单</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/system/default.jsp">系统</a>
							</li>
							<li>
								<a hidefocus="true" href="/roseOnly/permissions/admin_list.jsp">权限</a>
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
								<i class="glyphicon glyphicon-lock" name="ico" menu="权限管理"></i>
								<span>权限管理</span>
								<span class="pull-right-container">
								<i class="glyphicon glyphicon-menu-left"></i>
							</span>
							</a>
							<ul class="treeview-menu" name="leftMenu">
								<li>
									<a href="/roseOnly/EmployeeServlet?op=queryAllEmployee"><i class="glyphicon glyphicon-record"></i>管理员</a>
								</li>
								<li>
									<a href="/roseOnly/TitleServlet?op=queryAllTitle&pageTxt=juese"><i class="glyphicon glyphicon-record"></i>角色</a>
								</li>
								<li>
									<a href="/roseOnly/PowerServlet?op=queryAllPower"><i class="glyphicon glyphicon-record"></i>权限资源</a>
								</li>
							</ul>
						</li>
					</ul>
				</section>
			</aside>
			<!--左侧菜单 结束-->
			<!--右侧内容 开始-->
			<div id="admin_right" class="content-wrapper">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="glyphicon glyphicon-home"></i>
							<a href="#">系统</a>
						</li>
						<li>
							<a href="#">权限管理</a>
						</li>
						<li class="active">编辑角色</li>
					</ul>
				</div>

				<div class="content">
					<form action="/roseOnly/TitleServlet?op=addTitle&pageTxt=123" method="post" id="bianji">
						<input type='hidden' name='id' />
						<table class="table form-table">
							<colgroup>
								<col width="80px" />
								<col />
							</colgroup>
							<tr>
								<th>名称：</th>
								<td><input type='text' class='form-control' name='title_name' id="title_name" placeholder='请填写角色名称' /></td>
							</tr>
							
							<tr>
								<td></td>
								<td><button class='btn btn-primary' type='submit' id="Preservation">保 存</button></td>
							</tr>
						</table>
					</form>
				</div>

				<!-- <script type='text/javascript'>
					var formObj = new Form('role_edit');
					formObj.init(null);

					//分组权限全选
					function checkGroupAll(obj, nameVal) {
						if(obj.checked == true) {
							$('#ul_' + nameVal + ' [name="right[]"]').prop('checked', true);
						} else {
							$('#ul_' + nameVal + ' [name="right[]"]').prop('checked', false);
						}
					}

					//选择权限
					function checkItem(nameVal) {
						var unCheckedNum = $('#ul_' + nameVal + ' [name="right[]"]:not(:checked)').length;
						if(unCheckedNum == 0) {
							$('#checkbox_' + nameVal).prop('checked', true);
						} else {
							$('#checkbox_' + nameVal).prop('checked', false);
						}
					}

					//预选择复选框
					jQuery(function() {
						$('td[alt]').each(
							function(i) {
								checkItem($(this).attr('alt'));
							}
						);
					});
				</script> -->
			</div>
			<!--右侧内容 结束-->

			<!--顶部弹出菜单 开始-->
			<aside class="control-sidebar control-sidebar-dark">
				<ul class="control-sidebar-menu">
					<li>
						<a href="/roseOnly/admin/login.jsp"><i class="glyphicon glyphicon-record text-red"></i> 退出管理</a>
					</li>
					<li>
						<a href="/roseOnly/system/default.jsp"><i class="glyphicon glyphicon-record text-green"></i> 后台首页</a>
					</li>
					<li>
						<a href="/" target='_blank'><i class="glyphicon glyphicon-record text-aqua"></i> 商城首页</a>
					</li>
				</ul>
			</aside>
			<!--顶部弹出菜单 结束-->

	</body>

</html>