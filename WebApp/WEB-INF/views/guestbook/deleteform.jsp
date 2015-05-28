<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/MindTest/assets/css/guestbook.css" rel="stylesheet" type="text/css">
<title>방명록</title>
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
		<h1 class="pageTitle">삭제하시겠습니까?</h1>
			<div id="guestbook" class="delete-form">
				<form method="post" action="/MindTest/guestbook/delete">
					<input type='hidden' name="no"
						value="${no}">
					<table class="del_pass">
						<tr>
							<td>PASSWORD</td>
						</tr>
						<tr>
							<td><input type="password" name="password" id="passInput"></td>
						</tr>
						<tr>
							<td>
								<input type="reset" value="RESET" id="resetBtn">
								<input type="submit" value="DELETE" id="deleteBtn">
							</td>
						</tr>
					</table>
				</form>
				<a href="/MindTest/guestbook/list" id="listBtn">LIST</a>
			</div>
		</div>
	</div>
</body>
</html>