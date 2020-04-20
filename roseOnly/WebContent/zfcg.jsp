<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>支付成功</title>
		<style>
			.pay{
				text-align: center;
				font-size: 28px;
				color: red;
				line-height: 80px;
			}
			#one{
				display:none;
			}
			
		</style>
		<script type="text/javascript">  
		    onload=function(){  
		        setInterval(go, 1000);  
		    };  
		    var x=3; //利用了全局变量来执行  
		    function go(){  
		    x--;  
		        if(x>0){  
		        document.getElementById("sp").innerHTML="您已经支付成功,"+x+"s后自动跳转";  //每次设置的x的值都不一样了。  
		        }else{  
		        var z=document.getElementById("one").innerText;
		        
		        location.href="/roseOnly/SaleServlet?op=Sell&user_id="+z;  
		        }  
		    }  
		</script> 
	</head>
	<body>
		<p id="sp">您已经支付成功,3s后自动跳转</p>
		<p class="pay">支付成功</p>
		<p id="one">${userId }</p>
	</body>
</html>
