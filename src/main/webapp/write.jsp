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
    <link rel="stylesheet" href="static/css/write.css" /> <!-- Css 외부 파일 연결 -->
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = (String)session.getAttribute("id");
	if (userId == null) {
%>
	<script type="text/javascript">
    	alert("로그인 후 접근가능한 페이지 입니다.");
    	window.location.href = "loginForm.jsp";
	</script>		
<% 		
	} else {
%>
	<jsp:include page="static/html/login_header.html"></jsp:include>
<%
	}
%>
<div class="write-main-container">
    <form action="writeAction.jsp" method="post">
        <div class="write-input-container">
            <input class="input-size-setting-title input-design-setting user-write" type="text" name="title" placeholder="글 제목을 입력하세요" required autofocus>
        </div>
        <div class="write-input-container">
            <input class="input-size-setting-contents input-design-setting user-write" type="text" name="content" placeholder="글 내용을 입력하세요" required>
        </div>
        <div class="write-input-container write-btn-container">
            <input class="input-size-setting-write input-design-setting write-btn" type="submit" value="글쓰기">
        </div>
    </form>
    <div class="border-line"></div>
</div>
<div style="background-color:#ffffff; padding:20px; text-align:center; width: 100%; height: 580px;"></div>
<jsp:include page="static/html/footer.html"></jsp:include>
</body>
</html>