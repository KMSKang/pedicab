<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>라이더 리스트</title>
<meta charset="UTF-8">
<%@include file="../commons/mh.jsp"%>

</head>
<body>
<section id="container" class="">
  
  <%@include file="../commons/mhd.jsp"%>
  <%@include file="../commons/mfj.jsp"%>
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
          	<h3>STAFF LIST</h3>
          	<table class="table table-striped table-advance table-hover">
         	  <tbody>
         	    <tr>
         	      <th>NO</th>
         	      <th>NAME</th>
         	      <th>PHONE</th>
         	      <th>NICKNAME</th>
         	      <th>ACTION</th>
         	    </tr>
         	    <c:forEach var="staff" items="${list}">
         	    <tr>
         	      <td>${staff.sseq }</td>
         	      <td>${staff.sname }</td>
         	      <td>${staff.sphone }</td>
         	      <td>${staff.snickname }</td>
         	      <td>
         	        <div class="btn-group">
         	          <a class="btn btn-success" href="smodify?sseq=${staff.sseq }">수정</a>
         	          <a class="btn btn-danger" href="sremove?sseq=${staff.sseq }">삭제</a>
         	        </div>
         	      </td>
         	    </tr>
         	    </c:forEach>
         	  </tbody>
          	</table>
          <button class="btn btn-primary" type="button" onclick="location.href='sform'">사원추가</button>
          </div>
        </div>
      </section>
    </section>
</section>

<%@include file="../commons/mjs.jsp"%>
</body>
</html>