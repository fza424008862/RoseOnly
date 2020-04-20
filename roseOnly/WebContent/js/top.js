$(function() {
	//鼠标悬浮时，显示地区列表（CN 和 HK）
	$("#diqu_div").mouseover(function() {
		$("#diqu_ul").css("display", "block");
		$("#diqu_ul").css("z-index","999");
		$("#diqu_div").css("background-color", "rgb(86,86,86)");
	});
	//鼠标离开时，隐藏地区列表（CN 和 HK）
	$("#diqu_div").mouseout(function() {
		$("#diqu_ul").css("display", "none");
		$("#diqu_ul").css("z-index","0");
		$("#diqu_div").css("background-color", "rgb(86,86,86)");
		$("#diqu_div").css("background-color", "#414141");
	});
	//鼠标悬浮时，地区列表的选项背景色变色
	$("#diqu_ul li").mouseover(function() {
		$("#diqu_ul").css("display", "block");
		$("#diqu_ul").css("z-index","999");
		$("#diqu_div").css("background-color", "rgb(86,86,86)");
		$(this).css("background-color", "rgb(114,114,114)");
	});
	//鼠标离开时，地区列表的选项背景色恢复
	$("#diqu_ul li").mouseout(function() {
		$(this).css("background-color", "rgb(86,86,86)");
		$("#diqu_ul").css("z-index","0");
		$("#diqu_ul").css("display", "none");
		$("#diqu_div").css("background-color", "#414141");
	});
	//鼠标悬浮时，头部第二个链接变色
	$(".rw_top_a_two").mouseover(function() {
		$(this).css("background", "url(img/roseonlyLogo_4.svg) -10px 3px");
		$(this).css("background-color", "rgb(251,239,239)");
		$(".rw_top_a_two").css("height", "40");
	});
	//鼠标离开时，头部第二个链接恢复
	$(".rw_top_a_two").mouseout(function() {
		$(this).css("background", "url(img/roseonlyLogo_3.svg)");
		$(this).css("background-color", "#414141");
		$(".rw_top_a_two").css("height", "37");
	});
	//鼠标悬浮时，当前网页的链接变色
	$(".rw_top_a_three").mouseover(function() {
		$(this).css("background", "url(img/roseonlyLogo_5.svg) 10px 3px");
		$(this).css("background-color", "white");
		$(".rw_top_a_three").css("height", "40");
	});
	//鼠标离开时，当前网页的链接恢复
	$(".rw_top_a_three").mouseout(function() {
		$(this).css("background", "url(img/roseonlyLogo_6.svg) 10px 3px");
		$(this).css("background-color", "#414141");
		$(".rw_top_a_three").css("height", "37");
	});
	//鼠标点击第一个地区，改变上面的图片和文本
	$("#hk").click(function() {
		$("#diqu_div span").text("HK");
		$("#diqu_div").css("background-color", "#414141");
		$("#diqu_div img").attr("src", "img/hk.png");
		$("#diqu_ul").css("display", "none");
	});
	//鼠标点击第二个地区，改变上面的图片和文本
	$("#cn").click(function() {
		$("#diqu_div span").text("CN");
		$("#diqu_div").css("background-color", "#414141");
		$("#diqu_div img").attr("src", "img/cn.png");
		$("#diqu_ul").css("display", "none");
	});
	//鼠标在登录和注册悬浮加粗
	$(".user_div_top>a").mouseover(function() {
		$(this).css("font-weight", "bold");
	})
	//鼠标在登录和注册离开恢复
	$(".user_div_top>a").mouseout(function() {
		$(this).css("font-weight", "100");
	})
	/*个人信息图片*/
	$("#user_Div").hover(function() {
		$(".user_div").css("display", "block");
	}, function() {
		$(".user_div").css("display", "none");
	});
	/*个人信息*/
	$(".user_div").hover(function() {
		$(".user_div").css("display", "block");
	}, function() {
		$(".user_div").css("display", "none");
	});
	//鼠标悬浮时，显示地区列表（CN 和 HK）
	$("#diqu_div").mouseover(function() {
		$("#diqu_ul").css("display", "block");
		$("#diqu_div").css("background-color", "rgb(86,86,86)");
	});
	//鼠标离开时，隐藏地区列表（CN 和 HK）
	$("#diqu_div").mouseout(function() {
		$("#diqu_ul").css("display", "none");
		$("#diqu_div").css("background-color", "rgb(86,86,86)");
		$("#diqu_div").css("background-color", "#414141");
	});
	//鼠标悬浮时，地区列表的选项背景色变色
	$("#diqu_ul li").mouseover(function() {
		$("#diqu_ul").css("display", "block");
		$("#diqu_div").css("background-color", "rgb(86,86,86)");
		$(this).css("background-color", "rgb(114,114,114)");
	});
	//鼠标离开时，地区列表的选项背景色恢复
	$("#diqu_ul li").mouseout(function() {
		$(this).css("background-color", "rgb(86,86,86)");
		$("#diqu_ul").css("display", "none");
		$("#diqu_div").css("background-color", "#414141");
	});
	//鼠标悬浮时，头部第二个链接变色
	$(".rw_top_a_two").mouseover(function() {
		$(this).css("background", "url(img/roseonlyLogo_4.svg) -10px 3px");
		$(this).css("background-color", "rgb(251,239,239)");
		$(".rw_top_a_two").css("height", "40");
	});
	//鼠标离开时，头部第二个链接恢复
	$(".rw_top_a_two").mouseout(function() {
		$(this).css("background", "url(img/roseonlyLogo_3.svg)");
		$(this).css("background-color", "#414141");
		$(".rw_top_a_two").css("height", "37");
	});
	//鼠标悬浮时，当前网页的链接变色
	$(".rw_top_a_three").mouseover(function() {
		$(this).css("background", "url(img/roseonlyLogo_5.svg) 10px 3px");
		$(this).css("background-color", "white");
		$(".rw_top_a_three").css("height", "40");
	});
	//鼠标离开时，当前网页的链接恢复
	$(".rw_top_a_three").mouseout(function() {
		$(this).css("background", "url(img/roseonlyLogo_6.svg) 10px 3px");
		$(this).css("background-color", "#414141");
		$(".rw_top_a_three").css("height", "37");
	});
	//鼠标点击第一个地区，改变上面的图片和文本
	$("#hk").click(function() {
		$("#diqu_div span").text("HK");
		$("#diqu_div").css("background-color", "#414141");
		$("#diqu_div img").attr("src", "img/hk.png");
		$("#diqu_ul").css("display", "none");
	});
	//鼠标点击第二个地区，改变上面的图片和文本
	$("#cn").click(function() {
		$("#diqu_div span").text("CN");
		$("#diqu_div").css("background-color", "#414141");
		$("#diqu_div img").attr("src", "img/cn.png");
		$("#diqu_ul").css("display", "none");
	});
	//鼠标在登录和注册悬浮加粗
	$(".user_div_top>a").mouseover(function() {
		$(this).css("font-weight", "bold");
	})
	//鼠标在登录和注册离开恢复
	$(".user_div_top>a").mouseout(function() {
		$(this).css("font-weight", "100");
	})
	/*个人信息图片*/
	$("#user_Div").hover(function() {
		$(".user_div").css("display", "block");
	}, function() {
		$(".user_div").css("display", "none");
	});
	/*个人信息*/
	$(".user_div").hover(function() {
		$(".user_div").css("display", "block");
	}, function() {
		$(".user_div").css("display", "none");
	});
	/*新品*/
	$("#xinping").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
	});
	/*爱丽推荐*/
	$("#aili").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
		$(".rw_shop_lie_two").css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
		$(".rw_shop_lie_two").css("display", "none");
		$("#one").css("z-index", "0");
	});
	$(".rw_shop_lie_two").hover(function() {
		$("#aili").css("color", "black");
		$("#aili").parent().css("background-color", "white");
		$(this).css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$("#aili").css("color", "white");
		$("#aili").parent().css("background-color", "#414141");
		$(this).css("display", "none");
		$("#one").css("z-index", "0");
	});
	/*鲜花*/
	$("#xianhua").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
		$(".rw_shop_lie_three").css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
		$(".rw_shop_lie_three").css("display", "none");
		$("#one").css("z-index", "0");
	});
	$(".rw_shop_lie_three").hover(function() {
		$("#xianhua").css("color", "black");
		$("#xianhua").parent().css("background-color", "white");
		$(this).css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$("#xianhua").css("color", "white");
		$("#xianhua").parent().css("background-color", "#414141");
		$(this).css("display", "none");
		$("#one").css("z-index", "0");
	});
	/*永生*/
	$("#yongsheng").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
		$(".rw_shop_lie_four").css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
		$(".rw_shop_lie_four").css("display", "none");
		$("#one").css("z-index", "0");
	});
	$(".rw_shop_lie_four").hover(function() {
		$("#yongsheng").css("color", "black");
		$("#yongsheng").parent().css("background-color", "white");
		$(this).css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$("#yongsheng").css("color", "white");
		$("#yongsheng").parent().css("background-color", "#414141");
		$(this).css("display", "none");
		$("#one").css("z-index", "0");
	});
	/*珠宝*/
	$("#zhubao").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
		$(".rw_shop_lie_five").css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
		$(".rw_shop_lie_five").css("display", "none");
		$("#one").css("z-index", "0");
	});
	$(".rw_shop_lie_five").hover(function() {
		$("#zhubao").css("color", "black");
		$("#zhubao").parent().css("background-color", "white");
		$(this).css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$("#zhubao").css("color", "white");
		$("#zhubao").parent().css("background-color", "#414141");
		$(this).css("display", "none");
		$("#one").css("z-index", "0");
	});
	/*饰品*/
	$("#shipin").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
		$(".rw_shop_lie_six").css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
		$(".rw_shop_lie_six").css("display", "none");
		$("#one").css("z-index", "0");
	});
	$(".rw_shop_lie_six").hover(function() {
		$("#shipin").css("color", "black");
		$("#shipin").parent().css("background-color", "white");
		$(this).css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$("#shipin").css("color", "white");
		$("#shipin").parent().css("background-color", "#414141");
		$(this).css("display", "none");
		$("#one").css("z-index", "0");
	});
	/*香氛*/
	$("#xiangfen").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
		$(".rw_shop_lie_seven").css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
		$(".rw_shop_lie_seven").css("display", "none");
		$("#one").css("z-index", "0");
	});
	$(".rw_shop_lie_seven").hover(function() {
		$("#xiangfen").css("color", "black");
		$("#xiangfen").parent().css("background-color", "white");
		$(this).css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$("#xiangfen").css("color", "white");
		$("#xiangfen").parent().css("background-color", "#414141");
		$(this).css("display", "none");
		$("#one").css("z-index", "0");
	});
	/*定制*/
	$("#dingzhi").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
	});
	/*世界*/
	$("#shijie").hover(function() {
		$(this).css("color", "black");
		$(this).parent().css("background-color", "white");
		$(".rw_shop_lie_nine").css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$(this).css("color", "white");
		$(this).parent().css("background-color", "#414141");
		$(".rw_shop_lie_nine").css("display", "none");
		$("#one").css("z-index", "0");
	});
	$(".rw_shop_lie_nine").hover(function() {
		$("#shijie").css("color", "black");
		$("#shijie").parent().css("background-color", "white");
		$(this).css("display", "block");
		$("#one").css("z-index", "-1");
	}, function() {
		$("#shijie").css("color", "white");
		$("#shijie").parent().css("background-color", "#414141");
		$(this).css("display", "none");
		$("#one").css("z-index", "0");
	});

});
function daohang() {
	var H = document.body.scrollTop;
	if(H > 150) {
		document.getElementById("daohan").style.position = "fixed";
		document.getElementById("daohan").style.top = "0px";
		document.getElementById("top_daohan").style.position = "fixed";
		document.getElementById("top_daohan").style.top = "0px";
		document.getElementById("top_daohan").style.zIndex = "10";

	} else {
		document.getElementById("daohan").style.position = "static";
		document.getElementById("daohan").style.top = "normal";
		document.getElementById("top_daohan").style.position = "static";
		document.getElementById("top_daohan").style.top = "normal";
		document.getElementById("top_daohan").style.zIndex = "0";

	}
}
$(function() {
	$("#zhichiBtnBox").mouseenter(function() {
		$(".mes_content").css("display", "block");
	});
	$("#zhichiBtnBox").mouseleave(function() {
		$(".mes_content").css("display", "none");
	});
});
$(function() {
	$("#ewmBox").mouseenter(function() {
		$(".ewm_content").css("display", "block");
	});
	$("#ewmBox").mouseleave(function() {
		$(".ewm_content").css("display", "none");
	});
});
$(function() {
	$("#back-to-top").css("display", "none");
	//获取滚动条的高度
	$(document).scroll(function() {
		var h = $(this).scrollTop();
		if(h > 300) {
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