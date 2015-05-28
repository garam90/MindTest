<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<div id="boardinput">
					<form action="/MindTest/board/update" method="post">
					<input type="hidden" name="no" value="${requestScope.board.no }">
					<table class="boardTable" id="updateTable">
						<tr>
							<td><a href="/MindTest/board">LIST</a></td>
						</tr>
						<tr>
							<th>TITLE</th>
							<td><input type="text" name="title" value="${requestScope.board.title }" size="68"></td>
						</tr>
						<tr>
							<th>CONTENT</th>
							<td>
								<textarea rows="25" cols="70" name="content">
									${requestScope.board.content }
								</textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="btn">
									<input type="submit" value="UPDATE">
								</div>
							</td>
						</tr>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>