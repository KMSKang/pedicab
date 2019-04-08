<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CourseWrite</title>
<%@include file="../../commons/mh.jsp"%>
</head>
<body>
	<section id="container" class="">
		<%@include file="../../commons/mhd.jsp"%>
		<%@include file="../../commons/mfj.jsp"%>
		<section id="main-content">
			<section id="wrapper">
				<div class="row">
					<h3 class="page-header">Course</h3>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<section class="panel">
							<header class="panel-heading">코스등록</header>
							<div class="panel-body">
								<form role="form" action="/manager/course/coursewrite" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label for="cname">코스명</label> <input
											type="text" name="cname" id="cname"class="form-control" 
											placeholder="Enter CourseName">
									</div>
									<div class="form-group">
										<label for="cinfo">코스소개</label> <textarea
											 name="cinfo" id="cinfo"class="form-control" 
											placeholder="Enter Courseinfo"></textarea>
									</div>
									<div class="form-group">
										<label for="cstart">출발장소</label> <input
											type="text" name="cstart" id="cstart"class="form-control" 
											placeholder="Enter Startpoint">
									</div>
									<div class="form-group">
										<label for="cprice">요금</label> <input
											type="text" name="cprice" id="cname"class="form-control" 
											placeholder="Enter price">
									</div>
									<div class="form-group">
										<label for="imgfile">코스사진등록</label> <input
											name="imgfile"
											type="file" id="imgfile">
									</div>
									<button type="submit" class="btn btn-primary">등록</button>
								</form>
							</div>
						</section>
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>