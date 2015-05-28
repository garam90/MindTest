<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/MindTest/assets/css/board.css" rel="stylesheet" type="text/css">
<title>게시판</title>
</head>
<body>
<div id="head">
			<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		</div>
		<div id="menu">
			<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
		</div>
	<div id="container">
		<div id="content">
			<div id="boardlist">
				<h1 class="pageTitle">BOARD</h1>
				<!-- 게시판 table 작성 -->
				<!-- 검색 -->
				<table class="boardTable">
					<tr class="search">
						<td colspan="5">
							<div id="boardSearch">
							<form action="/MindTest/board/search" method="post">
								<input type="text" name="keyword">
								<input type="submit" value="FIND">
							</form>
							</div>
						</td>
					</tr>
					<tr class="tableHead">
						<td class="no">NO.</td>
						<td class="title">TITLE</td>
						<td class="user">작성자</td>
						<td class="date">DATE</td>
						<td class="view">VIEW</td>
					</tr>
					<c:forEach var="board" items="${requestScope.list }" varStatus="index">
					<tr>
						<td>${index.count }</td>
						<td>
							<a href="/MindTest/board/detail/${board.no }" class="list_title">
								${board.title }
							</a>
						</td>
						<td>${board.member_name }</td>
						<td>${board.reg_date }</td>
						<td>${board.view_cnt }</td>
					</tr>					
					</c:forEach>
					<tr>
						<td colspan="5" class="lastTd">
						</td>
					</tr>					
					<c:if test="${not empty sessionScope.id }">
					<tr class="newBoard">
						<td colspan="5" class="btn">
							<input type="button" onclick="location.href='/MindTest/board/insert'" value="NEW">
						</td>
					</tr>
					</c:if>
				</table>
			</div>
		</div>
	</div>
</body>
</html>