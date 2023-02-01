<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//String id = (String)request.getAttribute("id");
	//String name = (String)request.getAttribute("name");
	//String point = (String)request.getAttribute("point");
	
	session = request.getSession();
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");
	String point = (String)session.getAttribute("point");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인 페이지</title>
		<style type="text/css">
			.container{
				width: 1065px;
				
			}
			.main_div{
				display: flex;
				justify-content: space-between;
				margin-right: 10px;
			}
			.main_center_img_div{
				display: flex;
				
			}
			.img_div1{
				margin-left: 2px;
				flex-direction: column;
				text-align: center;
			}
			.main_bottom_banner_div{
				border: 1px solid grey;
				margin-top: 30px;
				float: right;
			}
			.logout_form{
				display: inline;
			}
			
			
		</style>
	</head>
	<body>
		<div class="container">
			<div class="main_div">
				<h1>메인 페이지</h1>
				<div>
					<span><%= name %>(<%= id %>)님 안녕하세요</span>
					<form class="logout_form" action="logout" >
						<input class="loginout_btn" type="submit" value="로그아웃"> </br>
					</form>
					<span>포인트 : <%= point %>점</span>
				</div>
			</div>
			
			<div class="main_center_div">
				<div>
					<div>
						<h3>구입할 컨텐츠를 선택하세요.</h3>
					</div>
					<div class="main_center_img_div">
						<div class="img_div1">
							<img src="img/Intro_350_408.png">
							<span>100,000포인트</span>
						</div>
						
						<div class="img_div1">
							<img src="img/Java_350_408.png">
							<span>500,000포인트</span>
						</div>
						
						<div class="img_div1">
							<img src="img/Cpp_350_408.png">
							<span>300,000포인트</span>
						</div>
						
					</div>
				</div>
				
			</div>
			
			<div class="main_bottom_div">
				<div class="main_bottom_banner_div">
					<span class="main_bottom_span">&lt;광고&gt;</span></br>
					<img alt="" src="img/korea_it.png">
				</div>
			</div>
		</div>
		
	</body>
</html>