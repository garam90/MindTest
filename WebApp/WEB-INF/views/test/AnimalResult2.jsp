<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 심리테스트 결과</title>
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
	<h1>${animal }</h1>

		<c:choose>
			<c:when test="${animal == '호랑이' }">
				<pre>
					반복적인 생활로 인해 지루함을 느끼고 스트레스를 받음
					자신의 감정을 잘 표출하지 못함
					스트레스를 푸는 자신만의 방법을 만드는 것이 좋습니다.
				</pre>
			</c:when>
			<c:when test="${animal == '새' }">
				<pre>
					자신의 감정을 표현하지 못하고 마음속에만 담아두고 있음
					속마음을 나눌 친구를 만나거나 가벼운 운동을 하는 등의
					스트레스 표출법이 필요해요
				</pre>
			</c:when>
			<c:when test="${animal == '강아지' }">
				<pre>
					자기주도적으로 행동하지 못하고 있는 사람
					개인시간을 정해서 자신이 원하는 취미생활을 즐겨보세요
				</pre>
			</c:when>
			<c:when test="${animal == '햄스터' }">
				<pre>
					주의 사람들로 인해 스트레스를 받고 있음
					마음을 풀고 다른사람들에게 다다갈 필요가 있고
					주변에 내 이야기를 들어줄 사람을 찾아보세요
				</pre>
			</c:when>
			<c:when test="${animal == '거북이' }">
				<pre>
					주의 사람들로 인해 스트레스를 받고 있음
					마음을 풀고 다른사람들에게 다다갈 필요가 있고
					주변에 내 이야기를 들어줄 사람을 찾아보세요
				</pre>
			</c:when>
		</c:choose>






<div id="btnDiv">
		<br><h3><a href="/MindTest/test/">홈으로</a></h3>
	<h3><a href="/MindTest/test/animal2">다시하기</a></h3>
	
	<a href="http://www.facebook.com/sharer/sharer.php?u=/background/DesertResult">
	<img src="/MindTest/assets/images/facebook.png" style="width:50px;height:50px"></a>
	
	<a href="https://twitter.com/intent/tweet?text=TEXT&url=/background/DesertResult">
	<img src="/MindTest/assets/images/twitter.png" style="width:50px;height:50px"></a>
</div>
</div>
</body>
</html>