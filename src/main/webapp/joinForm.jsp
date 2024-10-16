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
    <link rel="stylesheet" href="static/css/join-form.css" /> <!-- Css 외부 파일 연결 -->
    
    
<title>Insert title here</title>
</head>
<body>
<%
	/* 로그인 세션 확인하는 절차 넣기  */
%>
<jsp:include page="static/html/pre_login_header.html"></jsp:include>
<div class="main-container">
    <div class="heading-container">
        <h1 class="delete-margin">회원 가입 페이지!</h1>
    </div>
    <div class="join-form-container">
        <form action="joinAction.jsp" method="post">
            <div class="join-input-container">
                <input class="input-size-setting-halve input-design-setting user-input" type="text" name="lastName" placeholder="성" required>
                <input class="input-size-setting-halve input-design-setting user-input" type="text" name="firstName" placeholder="이름" required>
            </div>
            <div class="join-input-container">
                <select class="input-size-setting-third input-design-setting user-input" name="year" required>
                    <option value="2024">2024년</option>
                    <option value="2023">2023년</option>
                    <option value="2022">2022년</option>
                    <option value="2021">2021년</option>
                    <option value="2020">2020년</option>
                    <option value="2019">2019년</option>
                    <option value="2018">2018년</option>
                    <option value="2017">2017년</option>
                    <option value="2016">2016년</option>
                    <option value="2015">2015년</option>
                    <option value="2014">2014년</option>
                    <option value="2013">2013년</option>
                    <option value="2012">2012년</option>
                    <option value="2011">2011년</option>
                    <option value="2010">2010년</option>
                    <option value="2009">2009년</option>
                    <option value="2008">2008년</option>
                    <option value="2007">2007년</option>
                    <option value="2006">2006년</option>
                    <option value="2005">2005년</option>
                    <option value="2004">2004년</option>
                    <option value="2003">2003년</option>
                    <option value="2002">2002년</option>
                    <option value="2001">2001년</option>
                    <option value="2000">2000년</option>
                    <option value="1999">1999년</option>
                    <option value="1998">1998년</option>
                    <option value="1997">1997년</option>
                    <option value="1996">1996년</option>
                    <option value="1995">1995년</option>
                    <option value="1994">1994년</option>
                    <option value="1993">1993년</option>
                    <option value="1992">1992년</option>
                    <option value="1991">1991년</option>
                    <option value="1990">1990년</option>
                    <option value="1989">1989년</option>
                    <option value="1988">1988년</option>
                    <option value="1987">1987년</option>
                    <option value="1986">1986년</option>
                    <option value="1985">1985년</option>
                    <option value="1984">1984년</option>
                    <option value="1983">1983년</option>
                    <option value="1982">1982년</option>
                    <option value="1981">1981년</option>
                    <option value="1980">1980년</option>
                    <option value="1979">1979년</option>
                    <option value="1978">1978년</option>
                    <option value="1977">1977년</option>
                    <option value="1976">1976년</option>
                    <option value="1975">1975년</option>
                    <option value="1974">1974년</option>
                    <option value="1973">1973년</option>
                    <option value="1972">1972년</option>
                    <option value="1971">1971년</option>
                    <option value="1970">1970년</option>
                    <option value="1969">1969년</option>
                    <option value="1968">1968년</option>
                    <option value="1967">1967년</option>
                    <option value="1966">1966년</option>
                    <option value="1965">1965년</option>
                    <option value="1964">1964년</option>
                    <option value="1963">1963년</option>
                    <option value="1962">1962년</option>
                    <option value="1961">1961년</option>
                    <option value="1960">1960년</option>
                    <option value="1959">1959년</option>
                    <option value="1958">1958년</option>
                    <option value="1957">1957년</option>
                    <option value="1956">1956년</option>
                    <option value="1955">1955년</option>
                    <option value="1954">1954년</option>
                    <option value="1953">1953년</option>
                    <option value="1952">1952년</option>
                    <option value="1951">1951년</option>
                    <option value="1950">1950년</option>
                    <option value="1949">1949년</option>
                    <option value="1948">1948년</option>
                    <option value="1947">1947년</option>
                    <option value="1946">1946년</option>
                    <option value="1945">1945년</option>
                    <option value="1944">1944년</option>
                    <option value="1943">1943년</option>
                    <option value="1942">1942년</option>
                    <option value="1941">1941년</option>
                    <option value="1940">1940년</option>
                    <option value="1939">1939년</option>
                    <option value="1938">1938년</option>
                    <option value="1937">1937년</option>
                    <option value="1936">1936년</option>
                    <option value="1935">1935년</option>
                    <option value="1934">1934년</option>
                    <option value="1933">1933년</option>
                    <option value="1932">1932년</option>
                    <option value="1931">1931년</option>
                    <option value="1930">1930년</option>
                </select>
                <select class="input-size-setting-third input-design-setting user-input" name="month" required>
                    <option value="01">1월</option>
                    <option value="02">2월</option>
                    <option value="03">3월</option>
                    <option value="04">4월</option>
                    <option value="05">5월</option>
                    <option value="06">6월</option>
                    <option value="07">7월</option>
                    <option value="08">8월</option>
                    <option value="09">9월</option>
                    <option value="10">10월</option>
                    <option value="11">11월</option>
                    <option value="12">12월</option>
                </select>
                <select class="input-size-setting-third input-design-setting user-input" name="day" required>
                    <option value="01">1일</option>
                    <option value="02">2일</option>
                    <option value="03">3일</option>
                    <option value="04">4일</option>
                    <option value="05">5일</option>
                    <option value="06">6일</option>
                    <option value="07">7일</option>
                    <option value="08">8일</option>
                    <option value="09">9일</option>
                    <option value="10">10일</option>
                    <option value="11">11일</option>
                    <option value="12">12일</option>
                    <option value="13">13일</option>
                    <option value="14">14일</option>
                    <option value="15">15일</option>
                    <option value="16">16일</option>
                    <option value="17">17일</option>
                    <option value="18">18일</option>
                    <option value="19">19일</option>
                    <option value="20">20일</option>
                    <option value="21">21일</option>
                    <option value="22">22일</option>
                    <option value="23">23일</option>
                    <option value="24">24일</option>
                    <option value="25">25일</option>
                    <option value="26">26일</option>
                    <option value="27">27일</option>
                    <option value="28">28일</option>
                    <option value="29">29일</option>
                    <option value="30">30일</option>
                    <option value="31">31일</option>
                </select>
            </div>
            <div class="join-input-container">
                <select class="input-size-setting input-design-setting user-input" name="gender" required>
                    <option value="" disabled selected>성별</option>
                    <option value="남">남자</option>
                    <option value="여">여자</option>
                </select>
            </div>
            <div class="join-input-container">
                <input class="input-size-setting input-design-setting user-input" type="email" name="email" placeholder="이메일을 입력하세요" required>
            </div>
            <div class="join-input-container">
                <input class="input-size-setting input-design-setting user-input" type="text" name="id" placeholder="아이디를 입력하세요" required autofocus>
            </div>
            <div class="join-input-container">
                <input class="input-size-setting input-design-setting user-input" type="password" name="pass" placeholder="비밀번호를 입력하세요" required>
            </div>
            <div class="join-input-container">
                <input class="input-size-setting input-design-setting user-input" type="tel" name="tel" placeholder="전화번호를 입력하세요" required>
            </div>
            
            <div class="join-input-container join-btn-container">
                <input class="input-size-setting input-design-setting join-btn" type="submit" value="JOIN">
            </div>
        </form>
    </div>      
</div>
<jsp:include page="static/html/footer.html"></jsp:include>
</body>
</html>