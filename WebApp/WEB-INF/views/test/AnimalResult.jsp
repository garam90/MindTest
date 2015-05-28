<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 심리테스트 결과</title>
<style type="text/css">
	body{
		background-image: url("/MindTest/assets/images/zoo.jpg");
/* 		background-size: cover; */
		width:100%;
		height:100%;
	}
</style>
</head>
<body>
	<h1>당신이 남들에게 보이는 모습은 ${animal } 같은 모습입니다.</h1>
	<br><h1><a href="/MindTest/test/">홈으로</a></h1>
	
	<a href="http://www.facebook.com/sharer/sharer.php?u=/background/DesertResult">
	<img src="/MindTest/assets/images/facebook.png" style="width:50px;height:50px"></a>
	
	<a href="https://twitter.com/intent/tweet?text=TEXT&url=/background/DesertResult">
	<img src="/MindTest/assets/images/twitter.png" style="width:50px;height:50px"></a>
</body>
</html>