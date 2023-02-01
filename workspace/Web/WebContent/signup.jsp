<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
		.input_id{
			margin-left: 28px;
		}
		.input_pw{
			margin-left: 20px;
		}
		.login_btn{
			margin-top: 3px;
			width: 215px;
		}
		.signup_submit_btn{
			margin-top: 3px;
			width: 235px;
		}
	</style>
	<script type="text/javascript">
		
	</script>
	</head>
	
	<body>
		<h1>회원가입</h1>
		<form action="signup" method="post">
			<div>
				<span>ID : </span> <input class="input_id" name="id" type="text"> </br>
				<span>PW : </span> <input class="input_pw" name="pw" type="password" > </br>
				<span>NAME : </span> <input class="input_name" name="u_name" type="text" >
			</div>
			<div>
				<div>
					<input class="signup_submit_btn" type="submit" value="작성완료">
				</div>
			</div>
		</form>
	</body>
</html>