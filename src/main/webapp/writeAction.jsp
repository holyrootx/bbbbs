<%@ page import="model.Board"%>
<%@ page import="model.Dao"%>
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
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author_id = (String)session.getAttribute("id");
	
	Dao dao = new Dao();
	Board board = new Board();
	
    board.setTitle(title);
    board.setContent(content);
    board.setAuthor_id(author_id);
    
    System.out.println(board.getTitle());
    System.out.println(board.getContent());
    System.out.println(board.getAuthor_id());
    dao.writeBoard(board);
	System.out.println("글쓰기 완료!");
	response.sendRedirect("board.jsp");
%>
</body>
</html>