<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="m" class="sec01.ex01.MemberBean" />
    <jsp:setProperty name="m" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr align="center">
		<td><%=m.getId() %></td>
		<td><%=m.getPwd() %></td>
		<td><%=m.getName() %></td>
		<td><%=m.getEmail() %></td>
		</tr>
		<tr align="center">
			<td>${m.id }</td>
			<td>${m.pwd }</td>
			<td>${m.name }</td>
			<td>${m.email }</td>
			
		</tr>
	</table>
</body>
</html>