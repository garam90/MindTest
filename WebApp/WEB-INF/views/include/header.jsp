<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<c:choose>
	<c:when test="${not empty sessionScope.name }">
		<span>[ ${sessionScope.name} ] 님 환영합니다.</span>
		<a href="/MindTest/member/logout">LOGOUT</a>
	</c:when>
	<c:otherwise>
		<span><a href="/MindTest/enter">로그인</a> 후에 더 많은 서비스를 즐기세요.</span>
	</c:otherwise>
</c:choose>

