<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<title>MySite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/MindTest/assets/css/guestbook.css" rel="stylesheet" type="text/css">
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
			<h1 class="pageTitle">GUESTBOOK</h1>
			<div id="guestbook">
				<form action="/MindTest/guestbook/insert" method="post">
					<table border=1 width=500 class="form" id="guestbookinput">
						<tr>
							<td class="label">이름</td>
							<td><input type="text" name="name"
								value="${sessionScope.name }"></td>
							<td class="label">비밀번호</td>
							<td><input type="password" name="password" required="required"></td>
						</tr>
						<tr>
							<td colspan=4>
								<textarea name="message" cols=60 rows=5 wrap="hard" required="required">
								</textarea>
							</td>
						</tr>
						<tr>
							<td colspan=4 align=right><input type="submit" VALUE=" OK " id="okBtn"></td>
						</tr>
					</table>
				</form>
				<ul>
					<li><c:forEach items="${requestScope.list }" var="guest"
							varStatus="status">
							<table width=510 border=1 class="list">
								<tr>
									<td id="list_count" class="label">[${status.count}]</td>
									<td id="list_name" class="label">${guest.name }</td>
									<td id="list_date" class="label">${guest.reg_date }</td>
									<td id="list_delete" class="label"><a
										href="/MindTest/guestbook/deleteform/${guest.no }">DELETE</a></td>
								</tr>
								<tr>
									<td colspan=4 id="guestbook_msg"><pre>${guest.message }</pre></td>
								</tr>
							</table>
							<br>
						</c:forEach></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>