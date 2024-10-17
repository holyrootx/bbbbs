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
    <link rel="stylesheet" href="static/css/login-form.css" /> <!-- Css 외부 파일 연결 -->
<title>Insert title here</title>
</head>
<body>
<jsp:include page="static/html/pre_login_header.html"></jsp:include>
<div class="main-container">
    <div class="heading-container">
    	<h1 class="delete-margin">로그인 페이지!</h1>
    </div>
    <div class="heading-container">
	    <h2 class="delete-margin">로그인하고 글써재끼면서 놀자!!</h2>
    </div>
    <div class="login-form-container">
        <form action="loginAction.jsp" method="post">
            <div class="login-input-container">
                <input class="input-size-setting input-design-setting user-input" type="text" name="id" placeholder="아이디를 입력하세요" required autofocus>
            </div>
            <div class="login-input-container">
                <input class="input-size-setting input-design-setting user-input" type="password" name="pass" placeholder="비밀번호를 입력하세요" required>
            </div>
            <div class="login-input-container login-btn-container">
                <input class="input-size-setting input-design-setting login-btn" type="submit" value="Login">
            </div>
            <div class="find-pass-container">
                <a href="findPass.jsp"class="find-pass">비밀번호를 잊어버리셨나요?</a>
            </div>
            
        </form>
    </div>    
</div>
<jsp:include page="static/html/footer.html"></jsp:include>
</body>
</html>