<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/MindTest/assets/css/cube.css" rel="stylesheet" type="text/css">
<link href="/MindTest/assets/css/main.css" rel="stylesheet" type="text/css">
<title>:: 큐브 ::</title>
<style type="text/css">
#hplogo {
	background: url(/logos/2014/rubiks/bg.png) no-repeat;
	background-position: center top;
	height: 500px;
	outline: none;
	overflow: hidden;
	position: relative;
	width: 570px;
	-moz-user-select: -moz-none;
	-ms-user-select: none;
	-webkit-tap-highlight-color: transparent;
	-webkit-user-select: none
}

#hplogosl::-ms-clear {
	display: none
}
</style>
</head>
<body>
<div id="head">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>	
	</div>
	<div id="menu">
		<c:import url="/WEB-INF/views/include/menu.jsp"></c:import>
	</div>
	<div id="container">
		<div id="hplogo" dir="ltr" tabindex="0" style="cursor: pointer;">
			<iframe scrolling="no"
				src="https://gstatic.com/logos/2014/rubiks/iframe/index.html#data=%7B%22dir%22%3A%22%22%2C%22fpdoodle%22%3A%220%22%2C%22hl%22%3A%22en%22%2C%22origin%22%3A%22https%3A%2F%2Fwww.google.com%22%2C%22session%22%3A%2214320218388330.055593697587028146%22%7D"
				style="border: none; height: 464px; left: 0px; position: absolute; top: 0px; width: 100%;"></iframe>
			<canvas width="200" height="230">
						</canvas>
		</div>
		<div>
			<img alt="cube" src="/MindTest/assets/images/cube.png">
		</div>
		<script type="text/javascript" async="" src="https://ssl.google-analytics.com/ga.js"></script>
		<script>
			(function() {
				window.google || (window.google = {});
				google.doodle || (google.doodle = {});
				google.doodle.url = "/search?q=Rubik%27s%20Cube%20invention";
				google.doodle.shortlink = "//www.google.com/doodles/rubiks-cube";
				google.doodle.msgs = {
					"Automatically Replaced Translations" : "Translations"
				};
				if (!google.doodle || !google.doodle.loaded) {
					var a = [ "google", "doodle", "loaded" ], b = this;
					a[0] in b || !b.execScript || b.execScript("var " + a[0]);
					for ( var c; a.length && (c = a.shift());)
						a.length ? b[c] ? b = b[c] : b = b[c] = {} : b[c] = !0;
					var d = document.createElement("script");
					d.src = "/logos/2014/rubiks/rubiks14.js";
					d.async = !0;
					document.body.appendChild(d)
				}
				;
			})();
		</script>
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push([ '_setAccount', 'UA-25773869-2' ]);
			_gaq.push([ '_setCookiePath', '/doodles/' ]);
			_gaq.push([ '_trackPageview' ]);
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl'
						: 'http://www')
						+ '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();
		</script>
	</div>
	<!-- <div id="goHome">
		<a href="/MindTest/test/"><span>HOME</span></a>
	</div> -->
</body>
</html>