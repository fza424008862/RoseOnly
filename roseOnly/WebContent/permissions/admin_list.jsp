<%@ page language="java" contentType="text/html; charset=utf-8"
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
		<script type="text/javascript" src="/roseOnly/js/public.js" ></script>
		
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
    		/* $("#deleteAllEmployee").click(function(){
    			var del=[];
    			$(":checkbox").each(function(){
    				if($(this).prop("checked")==true){
    					del.push($(this).val());
    				}
    			});
    			$("#deleteAllEmployee").attr("href","/roseOnly/EmployeeServlet?op=delete&det="+del);
    		}); */
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
						<li class="active">管理员列表</li>
					</ul>
				</div>
				<div class="content">
					<form name='admin_list' method='post' action='/system/admin_update/recycle/del'>
						<table class="table list-table">
							<colgroup>
								<col width="35px" />
								<col width="150px" />
								<col width="100px" />
								<col width="200px" />
								<col />
							</colgroup>
							<caption>
								<a class="btn btn-default" href='/roseOnly/TitleServlet?op=queryAllTitle&pageTxt=admin'>
									<i class="fa fa-plus"></i>添加管理员
								</a>
								<!-- <a class="btn btn-default" onclick="selectAll('id[]');">
									<i class="fa fa-check"></i>全选
								</a>
								<a class="btn btn-default" id="deleteAllEmployee">
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
									<th>用户名</th>
									<th>密码</th>
									<th>角色</th>
									<th>联系方式</th>
									<th>入职时间</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${employee }" var="employeeList">
									<tr>
										<td><input type='checkbox' name='id[]' value='1' /></td>
										<td>${employeeList.employee_name }</td>
										<td>${employeeList.employee_pass }</td>
										<td>${employeeList.title_id }</td>
										<td>${employeeList.contact }</td>
										<td>${employeeList.date_in }</td>
										<td>${employeeList.state==0?"在职":"离职" }</td>
										<td>
											<a href='/roseOnly/EmployeeServlet?op=updateEmployee&pageTxt=admin&choose=edit&employee_name=${employeeList.employee_name }&employee_pass=${employeeList.employee_pass }&title_id=${employeeList.title_id}&contact=${employeeList.contact}'><i class='glyphicon glyphicon-edit'></i></a>
											<a href="/roseOnly/EmployeeServlet?op=deleteEmployee&employee_id=${employeeList.employee_id }"><i class='glyphicon glyphicon-trash'></i></a>
										</td>
									</tr>
								</c:forEach>
								
							</tbody>
						</table>
						<%-- <div id="page" name="">
						<tr:xkpage pages="${pages }"
						url="${pageContext.request.contextPath }/EmployeeServlet?op=queryAllEmployee"/>	
						</div> --%>
					</form>
				</div>

				<style>
					.pagination {
						display: inline-block;
						padding-left: 0;
						margin: 10px 0;
						border-radius: 4px;
					}
					
					.pagination>li {
						display: inline !important;
						width: auto !important;
						height: auto !important;
						border: none !important;
						margin: 0 !important;
						padding: 0 !important;
					}
					
					.pagination>li>a {
						position: relative !important;
						float: left !important;
						padding: 6px 12px !important;
						line-height: 1.42857143 !important;
						text-decoration: none !important;
						color: #337ab7;
						background-color: #fff;
						border: 1px solid #ddd;
						margin-left: -1px !important;
						width: auto !important;
						height: auto !important;
					}
					
					.pagination>li:first-child>a {
						margin-left: 0 !important;
						border-bottom-left-radius: 4px !important;
						border-top-left-radius: 4px !important;
					}
					
					.pagination>li:last-child>a {
						border-bottom-right-radius: 4px !important;
						border-top-right-radius: 4px !important;
					}
					
					.pagination>li>a:hover,
					.pagination>li>a:focus {
						z-index: 2 !important;
						color: #23527c;
						background-color: #eeeeee;
						border-color: #ddd !important;
					}
					
					.pagination>.active>a,
					.pagination>.active>a:hover,
					.pagination>.active>a:focus {
						z-index: 3 !important;
						color: #fff;
						background-color: #337ab7;
						border-color: #337ab7;
						cursor: default !important;
					}
				</style>
				<div style='clear:both'>
					<ul class='pagination'>
						<li>
							<a href='/system/admin_list?page=1'>首页</a>
						</li>
						<li class='active'>
							<a href='/system/admin_list?page=1'>1</a>
						</li>
						<li>
							<a href='/system/admin_list?page=1'>尾页</a>
						</li>
						<li>
							<a>当前第1页/共1页</a>
						</li>
					</ul>
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