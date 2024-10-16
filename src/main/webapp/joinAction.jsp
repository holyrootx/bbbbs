<%@ page import="model.Dao" %>
<%@ page import="model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	Dao dao = new Dao();
%>
<jsp:useBean id="user" class="model.User"></jsp:useBean>  
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
	System.out.println(user.getId());
	
%>
</body>
</html>