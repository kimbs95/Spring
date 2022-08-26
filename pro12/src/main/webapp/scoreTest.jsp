<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	int score=Integer.parseInt(request.getParameter("score"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>시험점수</h1>
	<%
	if(score>=90){
	%>
	<h2>A여 ? 잘했네 </h2>
	<%}else if(score<90 &&score >= 80){
	%>
	<h2>B여 ? 잘했어</h2>
	<%}else if(score>= 70 && score<80){ %>
	<h2>C여 ? 뭐하냐</h2>
	<%}else if(score >=60 && score<70){ %>
	<h2>D여 ? 죽어라 </h2>
	<%}else{  %>
	<h2>f여 ? 나가죽어</h2>
	<%} %>
	<br>
	<a href="scoreTest.html">계산 다시해봐</a>
</body>
</html>