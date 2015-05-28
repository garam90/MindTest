<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>색깔 심리테스트</title>
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/MindTest/assets/css/color.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="head">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>	
	</div>
	<div id="menu">
		<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
	</div>
	<div id="container">
		<img alt="" src="/MindTest/assets/images/colour.png" id="colorImg">
		<div id="content">
			<form action="/MindTest/test/ColorResult" method="post">
			<h2 style="position:center; margin-top:45%">당신이 가장 좋아하는 색을 고르세요</h2><br>
				<select name="color">
					<option value="red">빨강색</option>
					<option value="blue">파랑색</option>
					<option value="yellow">노랑색</option>
					<option value="black">검정색</option>
					<option value="gray">회색</option>
					<option value="green">초록색</option>
					<option value="purple">보라색</option>
					<option value="orange">주황색</option>
				</select>
				<br>
				<br>
				<br>
			<input type="submit" value="RESULT" id="ResultBtn">
			</form> 
		</div>
	</div>
</body>
</html>