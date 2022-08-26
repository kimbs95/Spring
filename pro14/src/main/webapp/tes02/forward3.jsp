<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import ="java.util.* ,sec01.ex01.* "%>
    <%
    	request.setCharacterEncoding("utf-8");
    	List membersList =new ArrayList();
    	MemberBean m1= new MemberBean("lee","1234","이경은","lee!@nttxt.com");
    	MemberBean m2= new MemberBean("kim","1234","김병성","kim!@nttxt.com");
    	membersList.add(m1);
    	membersList.add(m2);
    	request.setAttribute("membersList", membersList);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page ="member3.jsp" />
</body>
</html>
