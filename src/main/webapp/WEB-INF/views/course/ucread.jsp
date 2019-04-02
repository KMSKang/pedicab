<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/hdjs.jsp"%>
<style>
#coursenum {
	display: none;
	visibility: hidden;
}
</style>
</head>
<body class="index-1">
	<%@ include file="../commons/Header.jsp"%>
	<br>
	<br>
	<h3>${dto.cname}</h3>
	<section id="content" >
		<div class="full-width-container block-1">
			<div class="container">
				<div class="row">
					<div>
						<div class="grid_4">
							<div class="img_block">
								<img src="/uploadFile/CoursePhoto/${dto.cimg }" alt="코스사진">
							</div>
							<article>

								<h4>코스소개</h4>
								<p>${dto.cinfo}</p>
								<h4>출발지점</h4>
								<p>${dto.cstart}</p>
								<h4>요금</h4>
								<p style="text-align: center;">${dto.cprice }<br> <br>※요금기준※<br>
									- 인력거 1대당 정원은 성인 2명이며 만 4세 미만 유아 한 명까지 무료 동승 가능합니다.<br> -
									만 4세 미만 유아를 동반하실 때에는 결제시에 메시지에 적어주시기 바랍니다.<br>
								</p>

							</article>
						</div>
						<div class="grid_4">
							<article>
								<h4>예약하기</h4>
								<form action="/reserve/rregist" method="post">
									<div>
										<p>
											시간선택 <select name="rtime">
												<option value="10:00">10:00~11:00</option>
												<option value="11:00">11:00~12:00</option>
												<option value="12:00">12:00~13:00</option>
												<option value="13:00">13:00~14:00</option>
												<option value="14:00">15:00~16:00</option>
												<option value="15:00">17:00~18:00</option>
											</select>
										</p>
										<p>
											환불은행 <input type="text" name="rbank">
										</p>
										<p>
											계좌번호 <input type="text" name="raccount">
										</p>
										<p>
											요청사항 <input type="text" name="rmemo">
										</p>
										<input type="text" id="coursenum" name="cseq"
											value="${dto.cseq}">
										<p>
											1. 예약 환불<br> - 예약 확정후 투어 시작 96시간 전까지 취소 요청 시 100% 환불.<br>
											- 투어 시작 96시간 전 ~ 48시간 전까지 취소 요청시 50% 환불. <br> - 투어 시작
											48시간 전 ~ 투어 당일은 취소 및 환불 불가능.<br> - 눈, 비 등의 천재지변 등으로 인한
											투어 취소는 본사 판단하 진행되며, 해당 상황시 100% 환불.<br> - 예약시간 변경은 투어 시작
											48시간 전까지만 가능.<br> <br> 2. 예약 시간 준수<br> - 예약시간에
											늦으시더라도 투어종료시간은 동일합니다. 투어 시작 전에 와주시기 바랍니다.
										</p>
										<input type="submit" class="btn btn-primary" value="예약하기">
									</div>
								</form>
							</article>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>