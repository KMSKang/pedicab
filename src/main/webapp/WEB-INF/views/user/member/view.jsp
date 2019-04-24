<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/option.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/indexbg.jsp" %>
<script>
$(function(){
	$("#btnUpdate").click(function(){

		document.form1.action="${path}/member/modify.do";
		document.form1.submit();
	
	});
	$("#btnDelete").click(function(){
		
		if(confirm("삭제할건가요??")){
		document.form1.action="${path}/member/delete.do";
		document.form1.submit();
		}
	});
});

</script>
</head>
<body>
	<%@ include file="../commons/Header.jsp" %>
	<div class="hero-wrap js-fullheight"
		style="background-image: url('/resources/imagesu/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
				data-scrollax-parent="true">
				<div class="col-md-7 ftco-animate mt-5"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">My Info</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
	<div class="col-lg-3"></div>
	<div class="col-lg-6">
	<h3 class="page-header">회원정보</h3>
	<form name="form1" method="post">
		<table class="table table-striped table-advance table-hover">
			<tr>
				<td>아이디</td>
				<td><input name="uid" value="${vo.uid}" readonly></td>
														<!-- readonly:편집 못하게 설정 -->
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="upwd" type="password"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="uname" value="${vo.uname}"></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type="file" value="${vo.uimg}"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="uymd" value="${vo.uymd}"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td> 
					<%-- <input name="ugender" value="${vo.ugender}"> --%>
					<input type="radio" name="ugender" value="남자" > 남자
  					<input type="radio" name="ugender" value="여자" > 여자 
				</td>
			</tr>
			<tr>
				<td>휴대폰 번호</td>
				<td><input name="uphone" value="${vo.uphone}"></td>
			</tr>
			
			<tr>
				<td>가입일자</td>
				<td><fmt:formatDate value="${vo.udate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
				<div style = "color:red; ">${message }</div>
				</td>
			</tr>
		</table>
	</form>
	</div>
	<div class="col-lg-3"></div>
	</div>
	<br><br><br>
<%@include file="../commons/footer.jsp" %>
</body>
</html>