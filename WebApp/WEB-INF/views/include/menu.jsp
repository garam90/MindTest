<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<ul id="menuList">
		  <li><a href="/MindTest/main">HOME</a></li>
		  <li><a href="/MindTest/test">심리테스트</a></li>
		  <li><a href="/MindTest/guestbook"> 방명록 </a></li>
		  <li><a href="/MindTest/board"> 게시판 </a></li>
		  <li><a href="/MindTest/game"> 게임방 </a></li>
		</ul>
	</c:when>
	<c:otherwise>
		<ul id="menuList">
		  <li><a href="/MindTest/main">HOME</a></li>
		  <li><a href="/MindTest/guestbook"> 방명록 </a></li>
		  <li><a href="/MindTest/board"> 게시판 </a></li>
		</ul>
	</c:otherwise>
</c:choose>