<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 심리테스트</title>
<style type="text/css">
body {
	background-image: url("/MindTest/assets/images/zoo.jpg");
	/* 		background-size: cover; */
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<div>
		<form action="/MindTest/test/AnimalResult" method="post">
			<h2 style="position: center">당신이 가장 좋아하는 동물을 고르세요</h2>
			<br> 
			<select name="animal">
				<option value="사자">사자</option>
				<option value="호랑이">호랑이</option>
				<option value="원숭이">원숭이</option>
				<option value="코끼리">코끼리</option>
				<option value="기린">기린</option>
				<!-- <option id="diy">직접입력</option> -->
			</select>
			<h1>
				<input type="submit" value="RESULT">
			</h1>
		</form>
	</div>
	<div id="goHome">
		<a href="/MindTest/test/"><span>HOME</span></a>
	</div>
</body>
</html>