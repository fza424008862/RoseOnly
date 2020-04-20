$(function() {
	$(".sd_body_shangpin_ylt_xiao a").click(function() {
		$(this).css("border", "solid 1.2px #7e7e7e");
		$(this).siblings().css("border", "0");
		var path = $(this).children("img").attr("src");
		$(".sd_body_shangpin_ylt_big img").attr("src", path);
	})
	$(".number_up").hover(function(){
		$(this).css("background-color","rgba(0,0,0,0.1)")
	},function(){
		$(this).css("background-color","white")
	});
	$(".number_up").click(function(){
		$("#number").val(parseInt($("#number").val())+1);
	})
	$(".number_down").hover(function(){
		$(this).css("background-color","rgba(0,0,0,0.1)")
	},function(){
		$(this).css("background-color","white")
	});
	$(".number_down").click(function(){
		if($("#number").val()==1){
			$("#number").val(1);
		}else{
			$("#number").val($("#number").val()-1);
		}
	});
	$(".shop>ul>li>a").hover(function(){
		$(".sd_body_shangpin_xinxi_pay").css("z-index","-1");
	},function(){
		$(".sd_body_shangpin_xinxi_pay").css("z-index","0");
	});
	$(".sd_body_shangpin_xinxi_buy").hover(function(){
		$(this).stop().animate({"background-color":"white","color":"black"},300,null);
	},function(){
		$(this).stop().animate({"background-color":"#414141","color":"white"},300,null);
	});
});