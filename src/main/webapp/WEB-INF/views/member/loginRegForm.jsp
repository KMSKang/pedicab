<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/option.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../commons/loginMenu.jsp"%>
	<h2>회원 등록폼</h2>
	<form name="form1" method="post" action="${path}/member/insert.do">
		<table border="1" width="400px">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid"></td>
				<!-- <td><button type="button" value="인증"></button></td> -->
			</tr>
			<!-- <tr>
				<td>인증번호</td>
				<td><button type="button" value="확인"></button></td>
			</tr> -->
			<tr>
				<td>비밀번호</td>
				<td><input name="upwd" type="password"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type="file" name="uimg"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="uymd"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td> 
					<input type="radio" name="ugender" value="남자" checked> 남자
  					<input type="radio" name="ugender" value="여자"> 여자
				</td>
			<tr>
				<td>휴대폰 번호</td>
				<td><input name="uphone"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="확인">	</td>
			</tr>
		</table>
	</form>

</body>
</html>