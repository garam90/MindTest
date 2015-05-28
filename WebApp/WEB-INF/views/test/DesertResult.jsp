<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사막 심리테스트</title>
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/MindTest/assets/css/desert.css" rel="stylesheet" type="text/css">
<!-- <style type="text/css">
	body{
		background-image: url("/MindTest/assets/images/desert.jpg");
		background-size: cover;
	}
</style> -->
<script type="text/javascript" src="/MindTest/assets/js/jquery/jquery-1.9.0.js"></script>
<script type="text/javascript">
	function result() {
		$("#monkey").text("배우자").css("color","gold");
		$("#bird").text("자녀").css("color","gold");
		$("#snake").text("돈").css("color","gold");
	}
</script>
</head>
<body>
	<div id="head">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>	
	</div>
	<div id="menu">
		<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
	</div>
	<div id="container">
		<div>
		<h2><span id="monkey">원숭이</span>는 </h2>
			<span class="result">
				${monkey}
			</span>
		</div>
		<div>
		<h2><span id="bird">앵무새</span>는 </h2>
			<span class="result">
				${bird}
			</span>
		</div>
		
		<div>
		<h2><span id="snake">뱀</span>은 </h2>
			<span  class="result">
				${snake}
			</span>
		</div>
	<div>
		<button onclick="result()" id="resultBtn">결과보기</button>
	</div>
		<div id="btnDiv">
		<br><h3><a href="/MindTest/test/">홈으로</a></h3>
		<h3><a href="/MindTest/test/desertInfo">다시하기</a></h3>
		
		<a href="http://www.facebook.com/sharer/sharer.php?u=/background/DesertResult">
		<img src="/MindTest/assets/images/facebook.png" style="width:50px;height:50px"></a>
		
		<a href="https://twitter.com/intent/tweet?text=TEXT&url=/background/DesertResult">
		<img src="/MindTest/assets/images/twitter.png" style="width:50px;height:50px"></a>
		</div>
	</div>
</body>
</html>