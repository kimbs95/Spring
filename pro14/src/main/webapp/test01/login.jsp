<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contexPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/test04/result.jsp">
		아이디: <input type="text" size=20 /> <br>
		비밀번호: <input type="password" size=20 /> <br>
		<input type="submit" value="로그인" /><input type="reset" value="다시입력" />
	</form>
	<br> <br>
	<%--<a href ="${pageContext.request.contexPath}/memberForm.jsp">회원가입하기</a> --%>
	<%--
	<a href="<%=request.getContextPath()%>/test01/memberForm.jsp">회원가입하기</a>
	 --%>
	 <a href="${pageContext.request.contextPath}/test01/memberForm.jsp">회원가입하기</a>
</body>
</html>