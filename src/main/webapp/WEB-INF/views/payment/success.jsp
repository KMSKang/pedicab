<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	<div class="card" style="height:100vh; text-align:center">
		<div class="card-body">
			<div class="card-title">결제 성공</div>
			<hr>
			<div class="card-text">결제에 성공했습니다.<br> 창을 닫아주세요.</div>
		</div>
		<div class="card-footer">
			<div class="btn btn-primary" id="close">창 닫기</div>
		</div>
	</div>
	
	<script>
		document.querySelector('#close').onclick = function(){
			console.log('close')
			window.close();
		}
	</script>

</body>
</html>