<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼 만들기</title>
</head>
<body>
 <h2>회원가입</h2>
 <hr>
  <div id="regform" >
   <form name = "form1">
   	<label>이름</label> <br>
   	<input type = 'text' name='name' size='40'><br>
   	<hr>
   	<label>이메일</label> <br>
   	<input type="email" name ="email" size = '40'> <br>
   	 <button type='button' onClick="signUP() "> 가입</button>
   	 
   </form>
 </div>

 	<form action="" name = "name" >></form>
</body>
</html>