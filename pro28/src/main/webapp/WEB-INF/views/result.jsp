<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var ="contextPath" value="${pageContext.request.contextPath }" />
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 나왔습니당~</title>
</head>
<body>
	<h1>업로드 완료</h1>
	<label>아이디 =</label>
	<input type ="text" name ="id" value="${map.id }" readonly> <br>
	<label>이름 =</label>
	<input type="text" name ="name" value="${map.name }" readonly> <br>
	<div class="result-images">
		<c:forEach var ="imageFileName" items ="${map.fileList }" >
		<%-- <img src ="${pageContext.request.contextPath}download?imageFileName=${imageFileName}" style="width:150px;"> --%>
		<img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName}">
		<br><br><br><br>
		</c:forEach>
		
		<p><a href="${pageContext.request.contextPath }/form">다시 업로드 하기</a></p>
	</div>
</body>
</html>