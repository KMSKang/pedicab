<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>
<%@include file="/WEB-INF/views/user/commons/mh.jsp"%>
<%@ include file="option.jsp"%>
</head>
<body>
<section id="container" class="">
	<%@include file="/WEB-INF/views/user/commons/mhd.jsp"%>
		<%@include file="/WEB-INF/views/user/commons/mfj.jsp"%>
	<section id="main-content">
		<section class="wrapper">
		 <div class="row">
		 <div class="col-lg-12">
		 <h3 class="page-header">Member List</h3>
		 <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>Date</th>
                    <th>Action</th>
                  </tr>
            	  <c:forEach var="row" items="${list}">
					<!-- 컨트롤러에서 넘어온 변수 -->
				  <tr>
					<td>${row.uid}</td>
					<td>${row.uname}</td>
					<td>${row.uphone}</td>
					<td><fmt:formatDate value="${row.udate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
				<%-- <td><a href="${path}/member/view.do?userid=${row.userid}">${row.name}</a></td> --%>
					 <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="/manager/member/view.do?uid=${row.uid}">조회</a>
                        <a class="btn btn-danger" href="/manager/member/delete.do?uid=${row.uid}">삭제</a>
                      </div>
                    </td>
				  </tr>
				 </c:forEach>        
                </tbody>
         </table>
		 </div>
        </div>
        </section>
		</section>
	</section>
	<%@include file="/WEB-INF/views/user/commons/mjs.jsp"%>
</body>
</html>
