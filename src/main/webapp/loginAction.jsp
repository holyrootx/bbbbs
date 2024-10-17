<%@ page import="model.Dao" %>
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
	String userId = request.getParameter("id");
	String userPass = request.getParameter("pass");
	
	Dao dao = new Dao();
	if (dao.loginUser(userId,userPass)) {
		/*  id가 데이터베이스내에 있는 경우*/
		session.setAttribute("id", userId);
		response.sendRedirect("main.jsp");
	} else {
%>
<script type="text/javascript">
    alert("아이디,비밀번호를 확인해주세요");
    window.history.back();
</script>		
<%}
%>
</body>
</html>