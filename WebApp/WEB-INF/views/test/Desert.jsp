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
<style type="text/css">
	#container{
		background-image: url();
		background-size: cover;
	}
</style>

</head>
<body>

<div id="head">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>	
	</div>
	<div id="menu">
		<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
	</div>
	<div id="container">
	
	<img alt="" src="/MindTest/assets/images/back.png" style="width: 70%; position: relative;">
	
	<form action="/MindTest/test/desertResult" method="post" style="position: absolute;">
		<textarea rows="" cols="" name="monkey" class="monkey"></textarea>
		<textarea rows="" cols="" name="bird" class="bird"></textarea>
		<textarea rows="" cols="" name="snake" class="snake"></textarea>
		<br><br>
		<input style="margin-left:950px" type="submit" value="RESULT" id="ResultBtn">
	</form>
	</div>
</body>
</html>