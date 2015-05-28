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
			<h1 class="pageTitle">NEW BOARD</h1>
			<div id="boardinput">
				<form action="/MindTest/board/insert" method="post">
				<table class="boardTable" id="insertTable">
					<tr>
						<td class="aTag">
							<a href="/MindTest/board">LIST</a>
						</td>
					</tr>
					<tr>
						<th>TITLE</th>
						<td>
							<input type="text" name="title" size="68" required="required">
						</td>
					</tr>
					<tr>
						<th>CONTENT</th>
						<td>
							<textarea rows="20" cols="10" name="content" wrap="hard" required="required"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="lastTd">
							<div class="btn">
								<input type="submit" value="OK">
								<input type="reset" value="RESET">
							</div>
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>