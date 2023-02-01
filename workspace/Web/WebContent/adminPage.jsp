<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자페이지(회원정보수정)</title>
		<style type="text/css">
			.container{
				margin-left: 10px;
			}
			.adminPage_center{
				
			}
			.input_id{
				margin-left: 28px
			}
			.input_pw{
				margin-left: 20px
			}
			.input_name{
				
			}
			.input_point{
				margin-left: 5px
			}
			.submit_btn{
				margin-top: 3px;
				width: 225px;
			}
		</style>
	</head>
	
	<body>
		<div class="container">
			<div class="adminPage_top">
				<h1>회원관리-수정관리자</h1>
			</div>
			
			<div class="adminPage_center">
				<form action="" onsubmit="return test()">
					<span>ID</span> <input class="input_id" type="text"> </br>
					<span>PW</span> <input class="input_pw" type="text"> </br>
					<span>Name</span> <input class="input_name" type="text"> </br>
					<span>point</span> <input class="input_point" type="text"> </br>
					<input class="submit_btn" type="submit">
				</form>
			</div>
		</div>
	</body>
</html>