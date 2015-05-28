<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="wf-fredokaone-n4-active wf-active">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/MindTest/assets/css/huddle.css">
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Fredoka+One&amp;subset=latin"
	media="all">
<title>:: 허들게임 ::</title>
</head>
<body>
<div id="head">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>	
	</div>
	<div id="menu">
		<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
	</div>
	<div id="container">
	<iframe id="hplogo-complex"
		src="//www.google.com/logos/2012/hurdles-2012-hp.html" frameborder="0"
		height="304px" width="900px" style="margin-top: 20px;">
		
		</iframe>
	</div>
	<script>
		(function() {
			window.google || (window.google = {});
			google.doodle || (google.doodle = {});
			google.doodle.url = "/search?q=London+2012+hurdles";
			google.doodle.alt = "London 2012 Hurdles";
			if (!google.doodle || !google.doodle.loaded) {
				var a = [ "google", "doodle", "loaded" ], b = this;
				!(a[0] in b) && b.execScript && b.execScript("var " + a[0]);
				for ( var c; a.length && (c = a.shift());)
					!a.length ? b[c] = !0 : b = b[c] ? b[c] : b[c] = {};
				var d = document.createElement("script");
				d.src = "/logos/2012/hurdles12-5.js";
				d.async = !0;
				document.body.appendChild(d)
			}
			;
		})();
	</script>
	<script src="/logos/2012/hurdles12-5.js" async=""></script>
	<script src="http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js"
		type="text/javascript" async=""></script>
</body>
</html>