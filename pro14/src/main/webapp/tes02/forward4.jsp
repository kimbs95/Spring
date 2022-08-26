<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	request.setAttribute("id", "lee");
    	request.setAttribute("pwd","1234");
    	session.setAttribute("name","김병성");
    	application.setAttribute("email","lifee456@naver.com");
    	request.setAttribute("address","대전시");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<jsp:forward page="member4.jsp" />
</body>
</html>