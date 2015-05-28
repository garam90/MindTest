<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: 심리테스트 ::</title>
<link href="/MindTest/assets/css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/MindTest/assets/js/jquery/jquery-1.9.0.js"></script>
<script type="text/javascript">
	
	$(function(){
		startClock();
	})

	function startClock() { // internal clock//
		var today=new Date();
		var y=today.getFullYear();
		var M=today.getMonth();
		var d=today.getDate();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		m = checkTime(m);
		s = checkTime(s);
		M = checkDate(M);
		M = checkTime(M);
		var time=y+"년 "+M+"월"+d+"일 <br>"+h+"시 "+m+"분 "+s+"초";
		$("#Display_clock").html("<h2>"+time+"</h2>");
		var t = setTimeout(function(){startClock()},1000);
	}

	function checkTime(i) {
	if (i<10) {i = "0" + i};  // add zero in front of numbers < 10 
		return i;
	}

	function checkDate(i) {
	 	i = i+1 ;  // to adjust real month
	   	return i;
	}

</script>
</head>
<body>
	<div>
		<h1 id="welcome">
			<span>W</span>
			<span>E</span>
			<span>L</span>
			<span>C</span>
			<span>O</span>
			<span>M</span>
			<span>E</span>
		</h1>
	</div>
	<div id="Display_clock">
		
	</div>
	<div>
		<button onclick="location.href='/MindTest/enter'" class="enterBtn">ENTER</button>
	</div>
</body>
</html>