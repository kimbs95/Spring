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
    	$("checkJson").click(function(){
    		var _jsonInfo ='{"name":"박지성","age":"25","gender":"남자","nickname":"날센돌이"}';
    		$.ajax({
    			type:"post",
    			asnyc:false,
    			url:"$(contextPath)/json"
    		})
    	})
    })
    </script>
</head>
<body>

</body>
</html>