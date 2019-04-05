<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../../commons/mh.jsp"%>
</head>
<body>
	<section id="container" class="">
		<%@include file="../../commons/mhd.jsp"%>
		<%@include file="../../commons/mfj.jsp"%>
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
				<h3 class="page-header">Courseinfo(${course.cname})</h3>
					<div class="col-lg-12">
						<form>
						    <div class="form-group">
						    <label class="col-lg-2 control-label">img</label>
						    <div class="col-lg-10">
						    <p class="form-control-static"><img src="/uploadFile/coursePhoto/${course.cimg }" style="width:200px;heigth:200px;"></p>
						    </div>
						    </div>
							<div class="form-group">
								<label class="col-lg-2 control-label">name</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cname }</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">info</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cinfo }</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">price</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cprice }</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">start point</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cstart}</p>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>