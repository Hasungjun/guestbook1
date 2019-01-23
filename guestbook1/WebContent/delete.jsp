<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzon.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
 request.setCharacterEncoding("utf-8");
 String nono =request.getParameter("no");
 String password = request.getParameter("password");
 long no = Long.parseLong(nono);

 

	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(password);
	new GuestbookDao().delete(vo);
	

	response.sendRedirect("/guestbook1");
 %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>