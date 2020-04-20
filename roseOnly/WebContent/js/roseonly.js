var i = 0;
var zu = new Array("1", "2", "3", "4", "5", "6");

function lun(op, num) {
	if(op != '') {
		i = op;
	}
	if(num == 1) {
		stop();
		if((i - 1) == -1) {
			i = 5;
		} else {
			i = i - 1;
		}
	}
	document.getElementById("one").style.backgroundImage = "url('img/lunbo" + zu[i] + ".jpg')";
	var y = document.getElementsByName("lun");
	for(var j = 0; j < y.length; j++) {
		if(j == i) {
			y[i].style.backgroundColor = "red";
		} else {
			y[j].style.backgroundColor = "white";
		}
	}
	if(num != 1) {
		i++;
		if(i == 6) { //当背景色到了超出了范围，则回到第0个
			i = 0;
		}
	}
}

function lunbo(op) {
	var x = document.getElementById("two");
	if(op == '1') {
		x.style.display = "block";
	} else if(op == '2') {
		x.style.display = "none";
	}
}
var op = setInterval("lun('',0)", 1500);

function stop() {
	clearInterval(op);
}

function start1() {
	stop();
	op = setInterval("lun('',0)", 1500);
}
$(function(){
	$("#one").hover(function(){
		$(".div_left").css("display","inline-block");
		$(".div_right").css("display","inline-block");
	},function(){
		$(".div_left").css("display","none");
		$(".div_right").css("display","none");
	});
	
});
