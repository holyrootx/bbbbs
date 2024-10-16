<%@page import="java.time.LocalDate"%>
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
	int day = Integer.parseInt(request.getParameter("day"));
	int month = Integer.parseInt(request.getParameter("month"));
	int year = Integer.parseInt(request.getParameter("year"));
	user.setBirthday(LocalDate.of(year,month,day));
	
	dao.joinUser(user);
	response.sendRedirect("main.jsp");
%>
</body>
</html>