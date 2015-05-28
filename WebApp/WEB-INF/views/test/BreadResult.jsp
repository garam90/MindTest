<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빵 심리테스트</title>
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
		<img alt="" src="/MindTest/assets/images/${bread}.png"
			style="width: 70%;">
		<div id="btnDiv">
			<br>
			<h3>
				<a href="/MindTest/test/">홈으로</a>
			</h3>
			<br>
			<h3>
				<a href="/MindTest/test/breadInfo">다시하기</a>
			</h3>

			<a
				href="http://www.facebook.com/sharer/sharer.php?u=/MindTest/test/bread">
				<img src="/MindTest/assets/images/facebook.png"
				style="width: 50px; height: 50px">
			</a> <a
				href="https://twitter.com/intent/tweet?text=TEXT&url=/MindTest/test/bread">
				<img src="/MindTest/assets/images/twitter.png"
				style="width: 50px; height: 50px">
			</a>
		</div>
	</div>
</body>
</html>