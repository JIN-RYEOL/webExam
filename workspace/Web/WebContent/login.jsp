<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	request.getAttribute("id");
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		.input_id{
			margin-left: 7px;
		}
		.login_btn{
			margin-top: 3px;
			width: 215px;
		}
		.signup_btn{
			margin-top: 3px;
			width: 215px;
		}
	</style>
	<script type="text/javascript">
		function login_check(){
			return true;
		}
		function signup_page() {
			location.href="signup.jsp";
		}
	</script>
</head>

<body>
	<h1>로그인</h1>
	<form action="login" onsubmit="return login_check()" method="post">
		<div>
			<span>ID : </span> <input class="input_id" name="id" type="text"> </br>
			<span>PW : </span> <input class="input_pw" name="pw" type="password" >
		</div>
		<div>
			<div>
				<input class="login_btn" type="submit" value="로그인">
			</div>
			<div>
				<input class=signup_btn type="button" onclick="signup_page()" value="회원가입">
			</div>
		</div>
	</form>
</body>
</html>