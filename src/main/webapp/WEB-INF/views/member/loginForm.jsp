<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/option.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
  background: #456;
  font-family: 'Open Sans', sans-serif;
}

.login {
  width: 400px;
  margin: 16px auto;
  font-size: 16px;
}

/* Reset top and bottom margins from certain elements */
.login-header,
.login p {
  margin-top: 0;
  margin-bottom: 0;
}

/* The triangle form is achieved by a CSS hack */
.login-triangle {
  width: 0;
  margin-right: auto;
  margin-left: auto;
  border: 12px solid transparent;
  border-bottom-color: #28d;
}

.login-header {
  background: #28d;
  padding: 20px;
  font-size: 1.4em;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  color: #fff;
}

.login-container {
  background: #ebebeb;
  padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
  padding: 12px;
}

.login input {
  box-sizing: border-box;
  display: block;
  width: 100%;
  border-width: 1px;
  border-style: solid;
  padding: 16px;
  outline: 0;
  font-family: inherit;
  font-size: 0.95em;
}

.login input[type="uid"],
.login input[type="upwd"] {
  background: #fff;
  border-color: #bbb;
  color: #555;
}

/* Text fields' focus effect */
.login input[type="uid"]:focus,
.login input[type="upwd"]:focus {
  border-color: #888;
}

.login input[type="submit"] {
  background: #28d;
  border-color: transparent;
  color: #fff;
  cursor: pointer;
}

.login input[type="submit"]:hover {
  background: #17c;
}

/* Buttons' focus effect */
.login input[type="submit"]:focus {
  border-color: #05a;
}
</style>

<script>

</script>

</head>
 <body>
 
 <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">사용자 계정</h2>

  <form class="login-container" action="${path}/member/loginCheck.do">
    <p><input type="text" name="uid" placeholder="ID(이메일을 입력하세요.)"></p>
    <p><input type="password" name="upwd" placeholder="비밀번호"></p>
    <p><input type="submit" value="로그인"></p>
	<p>
		<button type="submit" formaction="${path}/member/write.do" >회원가입</button>
		<button type="submit" formaction="${path}/member/write.do" >아이디/비밀번호 찾기</button>
	</p>    
  </form>
</div>
 
 </body>
</html>


<%-- 
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
			/* focus(): 커서를이동시킨다. */
			$("#uid").focus(); 
			return;
		}
		if(upwd==""){
			alert("비밀번호를 입력하세요.");
			$("#upwd").focus();
			return ;
		}
		document.form1.action="${path}/member/loginCheck.do"; //다 됐으면 login_check.do로 넘어감 
		document.form1.submit();
	});
});

</script>
</head>
<body>
	<%@ include file="../commons/loginMenu.jsp"%>
	
	<h2>로그인 폼</h2>
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
			<tr>
				<td colspan="2" align="center">
					<button type="submit" formaction="${path}/member/write.do" >회원가입</button>
					<button type="submit" formaction="reserve/rlistAll" >아이디/비밀번호 찾기</button> 
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
 --%>