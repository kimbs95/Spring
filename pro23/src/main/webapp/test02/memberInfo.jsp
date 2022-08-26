<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=" java.io.* , java.util.* " isELIgnored="false"%>
    <%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }" />
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
<table border="1" align="center" width="100%">
	<tr align="center" bgcolor="lightgrenn">
		<td> <b>아이디</b> </td>
		<td> <b>비밀번호</b> </td>
		<td> <b>이름</b> </td>
		<td> <b>이메일</b> </td>
		<td> <b>가입일</b> </td>
	</tr>
	<tr align="center">
		<td>${member.id }</td>
		<td>${member.pwd }</td>
		<td>${member.name }</td>
		<td>${member.email }</td>
		<td>${member.joinDate }</td>
	</tr>
</table>
<a href="${contextPath }/member/memberForm.do"> <h1 style="text-align:center"> 회원가입 </h1> </a>
</body>
</html>