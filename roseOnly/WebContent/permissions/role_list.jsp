da<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    	$(function(){
    		$("#quan").click(function() {
				$(":checkbox").each(function(){
					this.checked=true;
				})
			});
			$("#delete").click(function() {
				var det = $(":checkbox");
				for(var i = 0; i <det.length; i++) {
					if($(det[i]).prop("checked") == true) {
						$(det[i]).parent().parent().remove();
					}
				}
			});
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
						<li class="active">角色列表</li>
					</ul>
				</div>
				<div class="content">
					<form name='role_list' method='post' action='/system/role_update/recycle/del'>
						<table class="table list-table">
							<colgroup>
								<col width="35px" />
								<col />
								<col width="120px" />
							</colgroup>
							<caption>
								<a class="btn btn-default" href='/roseOnly/permissions/role_edit.jsp'>
									<i class="fa fa-plus"></i>添加角色
								</a>
								<!-- <a class="btn btn-default" onclick="selectAll('id[]');">
									<i class="fa fa-check"></i>全选
								</a>
								<a class="btn btn-default" onclick="delModel({msg:'是否把信息放到回收站内？'});">
									<i class="fa fa-close"></i>批量删除
								</a> -->
								<a class="btn btn-default" id="quan"">
									<i class="fa fa-check"></i>全选
								</a>
								<a class="btn btn-default" id="delete">
									<i class="fa fa-close"></i>批量删除
								</a>
							</caption>
							<thead>
								<tr>
									<th></th>
									<th>id</th>
									<th>角色名称</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${title }" var="titleList" varStatus="vs">
									<tr>
										<td><input type='checkbox' name='id[]' value='1' /></td>
										<td>${vs.count }</td>
										<td>${titleList.title_name }</td>	
										<td>
											<a href="/roseOnly/TitleServlet?op=updateTitle&pageTxt=123&choose=edit&title_name=${titleList.title_name }"><i class='glyphicon glyphicon-edit'></i></a>
											<a href="/roseOnly/TitleServlet?op=deleteTitle&pageTxt=123&title_id=${titleList.title_id }"><i class='glyphicon glyphicon-trash'></i></a>
										</td>
									</tr>
								</c:forEach>	
							</tbody>
						</table>
					</form>
				</div>

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