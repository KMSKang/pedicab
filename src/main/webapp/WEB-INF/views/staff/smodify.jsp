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
<style>
	.center{
		margin-top: 30px;
	}
	div{
		margin-top: 15px;
	}
</style>
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
                <form class="form-validate form-horizontal" id="feedback_form"
                  method="post" action="smodify" enctype="multipart/form-data">
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
                    <label for="imgfile" class="control-label col-lg-2">이미지<span class="required">*</span></label>
                    <div class="col-lg-10">
                      <input class="form-control" id="imgfile" name="imgfile" type="file" required placeholder="${staff.simg }"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-primary" type="submit">저장</button>
                      <button class="btn btn-primary" type="button" onclick="location.href='slistAll'">취소</button>
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