<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE htm>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보 수정 페이지</title>
<%@include file="../commons/mh.jsp"%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
	.center{
		margin-top: 30px;
	}
	div{
		margin-top: 15px;
	}
</style>
<script>
	$(document).ready(function(){
		var formObj = $("form[role='form']");
		console.log(formObj);
		
		$("#submitbtn").on("click", function(){
			formObj.submit();
		});
	});
</script>
</head>
<body>
<section id="container" class="">
  <%@include file="../commons/mhd.jsp"%>
  <%@include file="../commons/mfj.jsp"%>
  <section id="main-content">
    <section class="wrapper">
      <div class="row">
        <div class="col-lg-12">
          <h3>STAFF MODIFY</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <section class="panel">
            <header class="panel-heading">
              MODIFY PAGE
            </header>
            <div class="panel-body">
              <div class="form">
                <form role="form" class="form-validate form-horizontal" action="/staff/smodify" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="sphone" class="control-label col-lg-2">폰번호<span class="required">*</span></label>
                    <div class="col-lg-10">
                      <input class="form-control" id="sphone" name="sphone" min="5" type="text" required placeholder="${staff.sphone }" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="snickname" class="control-label col-lg-2">닉네임<span class="required">*</span></label>
                    <div class="col-lg-10">
                      <input class="form-control" id="snickname" name="snickname" type="text" required placeholder="${staff.snickname }" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="simg" class="control-label col-lg-2">현재 이미지<span class="required">*</span></label>
                    <div class="col-lg-10">
                    	<img src="/uploadFile/staffphoto/${staff.simg }" style="widht:50px; height:50px;">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="imgfile" class="control-label col-lg-2">이미지<span class="required">*</span></label>
                    <div class="col-lg-10">
                      <input class="form-control" id="imgfile" name="imgfile" type="file" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button id="submitbtn" class="btn btn-primary" type="submit">저장</button>
                      <button class="btn btn-primary" type="button" onclick="location.href='/staff/slistAll'">취소</button>
                    </div>
                  </div>           
                </form>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>
  </section>
</section>
<%@include file="../commons/mjs.jsp"%>

</body>
</html>