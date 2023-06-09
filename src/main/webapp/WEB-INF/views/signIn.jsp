<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	String id = request.getParameter("inputId");
	String pw[] = request.getParameterValues("inputPw");
	String name = request.getParameter("inputName");
	String email = request.getParameter("inputEmail");
	String hobby[] = request.getParameterValues("hobby");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 결과</title>
</head>
<body>

	<%
		String hobbyResult = "";
	
		for(String temp : hobby){
			hobbyResult += temp + " ";		
		}
	%>
	
	<% if(!pw[0].equals(pw[1])){ %>
		<h3>비밀번호가 일치하지 않습니다</h3>
	<% } else{ %>
		String hobbyResult 
		<ul>
			<li>아이디 : <%= id %></li>
			<li>비밀전호 : <%= pw[0] %></li>
			<li>이름 : <%= name %></li>
			<li>이메일 : <%= email %></li>
			<li>취미 : <%= hobbyResult %></li>
		</ul>	
		<h3><%= name %>님의 회원 가입이 완료되었습니다.</h3>
	<% } %>
	
	
</body>
</html>