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
	<script type="text/javascript" src="/roseOnly/js/jquery-3.1.0.js"></script>
	<script type="text/javascript" src="/roseOnly/js/jquery.animate-colors.js"></script>
	
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    
    <style>
		  #canvas {
		  vertical-align: middle;
		  box-sizing: border-box;
		  border: 1px solid #ddd;
		  cursor: pointer;
		  }
		</style>
		<script>
		 $(function(){
		  var show_num = [];
		  draw(show_num);
		  $("#canvas").on('click',function(){
		   draw(show_num);
		  })
		  $(".form-group").on('click',function(){
		   var val = $(".input-val").val().toLowerCase();
		   var num = show_num.join("");
		   if(val==''){
		    alert('请输入验证码！');
		   }else if(val == num){
		    alert('提交成功！');
		    $(".input-val").val('');
		    // draw(show_num);
		   }else{
		    alert('验证码错误！请重新输入！');
		    $(".input-val").val('');
		    // draw(show_num);
		   }
		  })
		 })
		 //生成并渲染出验证码图形
		 function draw(show_num) {
		  var canvas_width=$('#canvas').width();
		  var canvas_height=$('#canvas').height();
		  var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
		  var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
		  canvas.width = canvas_width;
		  canvas.height = canvas_height;
		  var sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
		  var aCode = sCode.split(",");
		  var aLength = aCode.length;//获取到数组的长度
		  for (var i = 0; i < 4; i++) { //这里的for循环可以控制验证码位数（如果想显示6位数，4改成6即可）
		   var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
		   // var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
		   var deg = Math.random() - 0.5; //产生一个随机弧度
		   var txt = aCode[j];//得到随机的一个内容
		   show_num[i] = txt.toLowerCase();
		   var x = 10 + i * 20;//文字在canvas上的x坐标
		   var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
		   context.font = "bold 23px 微软雅黑";
		   context.translate(x, y);
		   context.rotate(deg);
		   context.fillStyle = randomColor();
		   context.fillText(txt, 0, 0);
		   context.rotate(-deg);
		   context.translate(-x, -y);
		  }
		  for (var i = 0; i <= 5; i++) { //验证码上显示线条
		   context.strokeStyle = randomColor();
		   context.beginPath();
		   context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
		   context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
		   context.stroke();
		  }
		  for (var i = 0; i <= 30; i++) { //验证码上显示小点
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
  </head>
  <body class="skin-blue">
	<div class="wrapper" style="background: url(/roseOnly/img/bg.jpg) no-repeat;background-size: 100% 100%;">
		<div class="loginbox">
			<form action='/roseOnly/EmployeeServlet?op=enterEmployee' method='post'>
				<div class="form-group text-center">
					<h2 style="color:#fff"><strong>RoseOnly后台管理</strong></h2>
				</div>

				<div class="form-group input-group input-group-lg">
					<span class="input-group-addon"><i class="glyphicon glyphicon-user" style="width:30px"></i></span>
					<input type="text" class="form-control" autocomplete="off" name="employee_name" placeholder="用户名" />
				</div>

				<div class="form-group input-group input-group-lg">
					<span class="input-group-addon"><i class="glyphicon glyphicon-off" style="width:30px"></i></span>
					<input type="password" class="form-control" name="employee_pass" autocomplete="off" placeholder="密码" />
				</div>

				<!--<div class="form-group input-group input-group-lg">
					<span class="input-group-addon"><i class="glyphicon glyphicon-font" style="width:30px"></i></span>
					<input type="text" class="form-control" autocomplete="off" name='captcha' placeholder="验证码" pattern="required" />
					<span class="input-group-addon no-padding"><img onclick="changeCaptcha()" src='/simple/getCaptcha' style='width:110px' id='captchaImg' /></span>
				</div>-->

				<!-- <div class="form-group input-group input-group-lg">
					<span class="input-group-addon"><i class="glyphicon glyphicon-font" style="width:30px"></i></span>
					<input type="text" class="form-control" autocomplete="off" name='captcha' placeholder="验证码" pattern="required" />
					<canvas id="canvas" width="100" height="30"></canvas>
				</div> -->
				
				<div class="form-group"><button type="submit" class="btn btn-lg btn-warning btn-block"><strong>登 录</strong></button></div>
			</form>
		</div>
	</div>
	<!--<footer class="main-footer">
		Power by  <a href="http://www.aircheng.com" target="_blank">www.aircheng.com</a> Copyright &copy; 2005-2018
	</footer>-->
</body>

</html>