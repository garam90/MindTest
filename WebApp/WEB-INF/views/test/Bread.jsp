<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빵 심리테스트</title>
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/MindTest/assets/css/bread.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="head">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>	
	</div>
	<div id="menu">
		<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
	</div>
	<div id="container">
	<img alt="" src="/MindTest/assets/images/bread.png" style="width: 70%;">
	
	<form action="/MindTest/test/bread" method="post">
		<div id="radioDiv">
		<input type="radio" value="a" name="bread" checked="checked"><span class="label">A</span>
		<input type="radio" value="b" name="bread"><span class="label">B</span>
		<input type="radio" value="c" name="bread"><span class="label">C</span>
		<input type="radio" value="d" name="bread"><span class="label">D</span>
		</div>
		<input type="submit" value="RESULT" id="breadResultBtn">
	</form>
	</div>
</body>
</html>