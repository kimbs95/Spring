<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
<script type="text/javascript">
	$(function (){
		$("#checkJson").click(function(){
			var jsonStr = '{"name":["홍길동","이순신","이경은"]}';
			var jsonInfo = JSON.parse(jsonStr);
			var output ="회원이름<br>";
			output += "======<br>";
			for(var i in jsonInfo.name){
				output += jsonInfo.name[i] + "<br>" ;
			}
			$("#output").html(output);
		})
	})
</script>
</head>
<body>
	<h1>출력</h1>
	<h1 id="output"></h1>
	<input type="button" value ="눌러라" id="checkJson" />
</body>
</html>