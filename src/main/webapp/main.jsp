<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Fontawesome 연결 Embed Code Start-->
    <script src="https://kit.fontawesome.com/0f39c44f6d.js" crossorigin="anonymous"></script> <!-- Fontawesome 연결 -->
    <!-- Fontawesome 연결 Embed Code End-->
    <!-- Google Font Dongle Embed Code  Start-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&display=swap" rel="stylesheet">
    <!-- Google Font Dongle Embed Code  End -->
    <!-- Google Font Noto Sans Embed Code  Start-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<!-- Google Font Noto Sans Embed Code  End --> 
    <title>Document</title>
    <link rel="stylesheet" href="static/css/default.css" /> <!-- Css 외부 파일 연결 -->
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = (String)session.getAttribute("id");
	if (userId == null) {
%>
	<jsp:include page="static/html/pre_login_header.html"></jsp:include>
<% 		
	} else {
%>
	<jsp:include page="static/html/login_header.html"></jsp:include>
<%
	}
%>

<div style="background-color:#ffffff; padding:20px; text-align:center; width: 100%; height: 580px;"></div>
<jsp:include page="static/html/footer.html"></jsp:include>
</body>
</html>