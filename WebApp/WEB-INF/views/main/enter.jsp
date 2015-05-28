<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 심리테스트 ::</title>
<link href="/MindTest/assets/css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/MindTest/assets/js/jquery/jquery-1.9.0.js"></script>
<script type="text/javascript">
	var flag = false;

	$(function(){
		$("#id").change(function() {
			flag = false;
			$("#dupCheck").show();
		});
	});
	
	function join() {
		$("#enterBtnDiv").hide();
		$("#joinForm").fadeIn();
	}
	function login() {
		$("#enterBtnDiv").hide();
		$("#loginForm").fadeIn();
	}
	function reset() {
		
		$("#joinForm").hide();
		$("#loginForm").hide();
		$("#enterBtnDiv").fadeIn();
	}
	
	function checked(){
		if(flag){
			return true;
		}else{
			alert("ID 중복체크를 해주세요.");
			return false;
		}
	}
	
	function checkDup(){
		
		event.preventDefault();
		
		var url = "/MindTest/member/checkDup";

		$.ajax({
			url: url,
			data:{
				"id": $("#id").val()	
			},
			dataType:"json",
			success: result
		});
		
		function result(response){
			if(response.result == 'dup'){
				alert("사용불가");
				$("#dupCheck").show();
			}else{
				alert("사용가능");
				flag = true;
				$("#dupCheck").hide();
			}
		}
		
	}
	
</script>
</head>
<body>
	<div id="enterBtnDiv">
		<button class="enter" onclick="join()">JOIN</button>
		<button class="enter" onclick="login()">LOGIN</button>
	</div>
	<div id="hidenForm">
		<!-- joinForm -->
		<div id="joinForm" style="display: none;">
			<form action="/MindTest/member/join" method="post" onsubmit="return checked()">
				<h1>JOIN</h1>
				<table>
					<tr>
						<th>
							<label>NAME</label>		
						</th>
						<td>
							<input type="text" name="name" id="name" required="required">
						</td>
						<td rowspan="4">
							<input type="submit" value="JOIN">
						</td>
					</tr>
					<tr>
						<th>
							<label>I  D</label>
						</th>
						<td>
							<input type="text" name="id" id="id" required="required">
						</td>
					</tr>
					<tr>
						<th></th>
						<td>
							<button id="dupCheck" onclick="checkDup()">CHECK</button>
						</td>
					</tr>
					<tr>
						<th>
							<label>PASSWORD</label>		
						</th>
						<td>
							<input type="password" name="password" id="password" required="required">
						</td>
					</tr>
					<tr>
						<th>
							<label>GRADE</label>
						</th>
						<td>
							<input type="radio" name="grade" value="charged"> 유료
							<input type="radio" name="grade" value="free" checked="checked"> 무료
						</td>
					</tr>
					
				</table>
			</form>		
			<button onclick="reset()" class="enter return">BACK</button>
		</div>
		<!-- loginForm -->
		<div id="loginForm" style="display: none;">
			<form action="/MindTest/member/login" method="post">
				<h1>LOGIN</h1>
				<table>
					<tr>
						<th>
							<label>I   D</label>
						</th>
						<td>
							<input type="text" name="id">
						</td>
						<td rowspan="2">
							<input type="submit" value="LOGIN">
						</td>					
					</tr>
					<tr>
						<th>
							<label>PASSWORD</label>
						</th>
						<td>
							<input type="password" name="password">
						</td>					
					</tr>
				</table>
			</form>
			<button onclick="reset()" class="enter return">BACK</button>
		</div>
	</div>
</body>
</html>