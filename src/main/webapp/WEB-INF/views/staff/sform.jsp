<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 등록</title>
<%@ include file="../commons/mh.jsp" %>
<style>
</style>
</head>
<body>
<section id="container">
  <%@include file="../commons/mhd.jsp"%>
  <%@include file="../commons/mfj.jsp"%>
  <section id="main-content">
    <section class="wrapper">
      <div class="row">
        <div class="col-lg-12">
          <h3>STAFF INSERT</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <section class="panel">
            <header class="panel-heading">
              INSERT PAGE
            </header>
            <div class="form">
              <form class="form-validate form-horizontal">
                <div class="form-group">
                  <label for="sname" class="control-label col-lg-2">이름<span class="required">*</span></label>
                  <div class="col-lg-10">
                    <input class="form-control" id="sname" type="text" name="sname" required />
                  </div>
                </div>
                <div class="form-group">
                  <label for="sphone" class="control-label col-lg-2">폰번호<span class="required">*</span></label>
                  <div class="col-lg-10">
                    <input class="form-control" id="sphone" type="text" name="sphone" required />
                  </div>
                </div>
                <div class="form-group">
                  <label for="snickname" class="control-label col-lg-2">닉네임<span class="required">*</span></label>
                  <div class="col-lg-10">
                    <input class="form-control" id="snickname" type="text" name="snickname" required />
                  </div>
                </div>
                <div class="form-group">
                  <label for="imgfile" class="control-label col-lg-2">이름<span class="required">*</span></label>
                  <div class="col-lg-10">
                    <input class="form-control" id="imgfile" name="imgfile" type="file" required />
                  </div>
                </div>
                <div class="form-group">
                  <label for="imgfile" class="control-label col-lg-2">이름<span class="required">*</span></label>
                  <div class="col-lg-10">
                    <button class="btn btn-primary" type="submit">저장</button>
                    <button class="btn btn-primary" type="button" onclick="location.href='slistAll'">취소</button>
                  </div>
                </div>
              </form>
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