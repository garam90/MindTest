<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 심리테스트2</title>
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="head">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>	
	</div>
	<div id="menu">
		<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
	</div>
	<div id="container">
		<form action="/MindTest/test/AnimalResult2" method="post">
			<img alt="" src="/MindTest/assets/images/zoo.jpg" style="width: 70%; position: relative;">
			<h2 style="position: center">자신을 어딘가에 묶인 동물이라고 가정해보세요.</h2>
			<h2 style="position: center">다음중 자신의 상태와 가장 유사한 것은?</h2>
			<br> 
			<select name="animal">
				<option value="호랑이">우리에 갇힌 호랑이</option>
				<option value="새">새장에 갇힌 새</option>
				<option value="강아지">개목걸이가 채워진 강아지</option>
				<option value="햄스터">상자에 갇힌 햄스터</option>
				<option value="거북이">어항에 갇힌 거북이</option>
			</select>
				<input type="submit" value="RESULT">
		</form>
	</div>
</body>
</html>