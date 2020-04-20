
			$(function() {
				$("#zhichiBtnBox").mouseenter(function() {
					$(".mes_content").css("display", "block");
				});
				$("#zhichiBtnBox").mouseleave(function() {
					$(".mes_content").css("display", "none");
				});
			});
		
		<!--二维码的盒子显示和隐藏-->
		
			$(function() {
				$("#ewmBox").mouseenter(function() {
					$(".ewm_content").css("display", "block");
				});
				$("#ewmBox").mouseleave(function() {
					$(".ewm_content").css("display", "none");
				});
			});
		<!--箭头盒子等到一定高度的显示和隐藏-->
		
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
		