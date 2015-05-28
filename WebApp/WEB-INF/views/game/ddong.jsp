<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 똥피하기 ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" media="screen" type="text/css" href="/MindTest/assets/css/dung.css">
<script type="text/javascript" src="/MindTest/assets/js/prototype.js"></script>
<script type="text/javascript" src="/MindTest/assets/js/dung.js"></script>
<script type="text/javascript">
	Event.observe(window, "load", function() {
		new DungGame("screen", 15, "score");
	});
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
	<a href="#" id="screen" onclick="return false;">
		<div style="position: absolute; text-align: center; font-size: 20px; font-family: Tahoma; left: 59px; top: 149.5px; visibility: visible;">

		</div>
	</a>
	<input type="text" id="score" value="0" readonly="true" size="5">
	</div>
</body>
</html>

