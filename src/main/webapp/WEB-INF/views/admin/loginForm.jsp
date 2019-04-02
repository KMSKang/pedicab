<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/option.jsp"%>
<script>
$(function(){
	$("#btnLogin").click(function(){
		var uid=$("#uid").val();
		var upwd=$("#upwd").val();
		if(uid==""){
			alert("아이디를 입력하세요.");
			$("#uid").focus(); /* focus(): 커서를이동시킨다. */
			return;
		}
		if(upwd==""){
			alert("비밀번호를 입력하세요.");
			$("#upwd").focus();
			return ;
		}
		document.form1.action="${path}/admin/loginCheck.do"; //다 됐으면 login_check.do로 넘어감 
		document.form1.submit();
	});
});

</script>
</head>
<body>
	<%@ include file="../commons/loginMenu.jsp"%>
	<h2>관리자 로그인</h2>
	<form name="form1" method="post">
		<table border="1" width="400">
			
			<!-- 아이디/비밀번호의 name ="변수명"이 컨트롤러에 @ModelAttribute로 넘어감 -->
			<tr>
				<td>아이디</td>
				<td><input id="uid" name="uid"></td>  
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="upwd" name="upwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<!-- type이 버튼이라 전송기능이 없어, 자바스크립트 코드를 사용한다 -->
					<button type="button" id="btnLogin">로그인</button> 
					
					<c:if test="${param.message == 'nologin' }">
						<div style="color:red;">먼저 로그인을 하세요.</div>
					</c:if> 
					
					<c:if test="${message == 'error' }">
						<div style="color:red;">아이디 또는 비밀번호가 일치하지 않습니다.</div>
					</c:if> 
					
					<c:if test="${message == 'logout' }">
						<div style="color:red;">로그아웃 되었습니다.</div>
					</c:if>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>