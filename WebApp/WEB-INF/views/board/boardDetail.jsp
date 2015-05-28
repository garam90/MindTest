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
		<h1 class="pageTitle">BOARD</h1>
			<div id="board">
				<table class="boardTable" id="detail">
					<tr>
						<td colspan="4" class="aTag">
							<a href="/MindTest/board/list" class="left">LIST</a>
						</td>
					</tr>
					<tr class="tableHead">
						<th colspan="1">제 목</th>
						<td colspan="3">${board.title }</td>
					</tr>				
					<tr>
						<th>작성자</th>
						<td>${board.member_name }</td>
						<th>작성날짜</th>
						<td>${board.reg_date }</td>
					</tr>
					<tr>
						<td colspan="4" class="detail_content"><pre>${board.content }</pre></td>
					</tr>
					<c:if test="${sessionScope.id == board.member_id}">
					<tr>
						<td colspan="4" class="btn">
							<input type="button" onclick="location.href='/MindTest/board/delete/${board.no }'" value="DELETE">
							&nbsp;&nbsp;&nbsp;
							<input type="button" onclick="location.href='/MindTest/board/update/${board.no }'" value="UPDATE">
						</td>
					</tr>
					</c:if>
				</table>
			</div>
		</div>
	</div>
</body>
</html>