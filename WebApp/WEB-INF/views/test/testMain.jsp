<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 심리테스트 ::</title>
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/MindTest/assets/js/jquery/jquery-1.9.0.js"></script>
<script type="text/javascript">
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
		<div id="gameMenu">
			<c:choose>
				<c:when test="${not empty sessionScope.id }">
					<a href="/MindTest/test/desertInfo"><span>사막테스트</span></a>
					<a href="/MindTest/test/animal2"><span>동물테스트</span></a>
					<a href="/MindTest/test/color"><span>색깔테스트</span></a>
					<a href="/MindTest/test/breadInfo"><span>빵테스트</span></a>
				</c:when>
				<c:otherwise>
					<a href="/MindTest/enter"><span>로그인</span></a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>

