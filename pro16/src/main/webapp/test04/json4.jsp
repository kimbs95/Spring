<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#checkJson").click(function(){
		var jsonStr= '{"members":[{"name":"박지성","age":"25","gender":"남자","nickname":"날센도리"}'
			+',{"name":"손흥민","age":"30","gender":"남자","nickname":"탱크"}]}';
		var jsonInfo = JSON.parse(jsonStr);
		var output = "회원정보 <br>";
		output += "=======<br>";
		for(var i in jsonInfo.members){
			output += "이름:" + jsonInfo.members[i].name +"<br>";
			output += "나이:" + jsonInfo.members[i].age +"<br>";
			output += "성별:" + jsonInfo.members[i].gender +"<br>";
			output += "별명:" + jsonInfo.members[i].nickname +"<br><br><br>";
		}
		$("#output").html(output);
		
	});
});
</script>
</head>
<body>
<h1>출력</h1>
<h1 id="output"></h1>
<input type="button" value="보여줘?" id="checkJson" />
</body>
</html>