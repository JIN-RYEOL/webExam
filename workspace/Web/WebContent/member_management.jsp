<%@page import="Login.LoginVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	ArrayList<LoginVO> memlist = (ArrayList<LoginVO>)request.getAttribute("memlist");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원관리</title>
		<style type="text/css">
			table{
				text-align: center;
				width: 100%;
			    border: 1px solid #444444;
			    border-collapse: collapse;
			}
			tr, td{
				border: 1px solid #444444;
			}
			tr:first-child{
				font-weight: bold;
			}
			.member_manager_top_div{
				display: flex;
				justify-content: space-between;
			}
			.container{
				width: 610px;
			}
			.login_btn{
				margin-top: 20px;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="member_manager_top_div">
				<h1>회원관리</h1>
				<div>
					<input class="login_btn" type="button" value="로그인">
				</div>
			</div>
			
			<div class="member_manager_center_div">
				<table>
				
					<tr>
						<td>ID</td>
						<td>PW</td>
						<td>Name</td>
						<td>Point</td>
						<td>수정</td>
						<td>삭제</td>
					</tr>
					<% for(int i=0; i<memlist.size(); i++) { %>
						<tr>
							<td><%= memlist.get(i).getId() %></td>
							<td><%= memlist.get(i).getPw() %></td>
							<td><%= memlist.get(i).getName() %></td>
							<td><%= memlist.get(i).getPoint() %></td>
							<td><input type="button" value="수정"></td>
							<td><input type="button" value="삭제"></td>
						</tr>
					<%} %>
				</table>
			</div>
			
			<div class="member_manager_bottom_div">
				<div>
					<h1>스케줄러관리</h1>
				</div>
				<div>
					<input type="button" value="스케줄러(20초마다 포인트1 증가) 실행 시작">
					<input type="button" value="스케줄러 실행 종료">
				</div>
			</div>
		</div>
	</body>
</html>























