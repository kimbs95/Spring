<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var ="contextPath" value="${pageContext.request.contextPath }" />
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:choose>
	<c:when test='${msg=="addMember" }'>
		<script>
			window.onload=function(){
				alert("회원을 등록했습니다.");
			}
		</script>
	</c:when>
	
	<c:when test="${msg=='modified' }">
		<script>
		window.onload =function(){
			alert("회원 정보를 수정했습니다.");
		}
		</script>
	
	</c:when>
	
		<c:when test="${msg=='deleted' }">
		<script>
		window.onload =function(){
			alert("회원 정보를 삭제했습니다.");
		}
		</script>
	
	</c:when>
</c:choose>


</head>
<body>
<table align="center" width="100%">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호 </td>
			<td width="5%">이름 </td>
			<td width="11%">이메일 </td>
			<td width="5%">가입일</td>
			<td width="5%">수정</td>
			<td width="5%">삭제</td>
		</tr>

	<c:choose>
		<c:when test = "${membersList == null }">
			<tr align="center" bgcolor="#99ccff">
				<td collspan =5>
					<b>등록된 회원이 없습니다.</b>
				</td>
			</tr>
		</c:when>
		<c:when test ="${membersList != null }">
			<c:forEach var="mem" items="${membersList }">
				<tr align="center" bgcolor="#99ccff">
					<td width="7%">${mem.id }</td>
					<td width="7%">${mem.pwd }</td>
					<td width="5%">${mem.name }</td>
					<td width="11%">${mem.email }</td>
					<td width="5%">${mem.joinDate }</td>
					<td><a href ="${contextPath }/member2/modMemberForm.do?id=${mem.id }">수정</a></td>
					<td><a href ="${contextPath }/member2/delMember.do?id=${mem.id }">삭제</a></td>
				</tr>
			</c:forEach>
		</c:when>
	</c:choose>
</table>

<a href="${contextPath }/member2/memberForm.do"><p class="cls2">회원 가입하기</p></a>
</body>
</html>