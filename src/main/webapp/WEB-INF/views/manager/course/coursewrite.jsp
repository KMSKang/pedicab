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
			<section id="wrapper">
				<div class="row">
					<h3 class="page-header">Course</h3>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<section class="panel">
							<header class="panel-heading"> Basic Forms </header>
							<div class="panel-body">
								<form role="form" action="">
									<div class="form-group">
										<label for="cinfo">Coursename</label> <input
											type="text" name="cname" id="cname"class="form-control" 
											placeholder="Enter CourseName">
									</div>
									<div class="form-group">
										<label for="cinfo">Coursename</label> <input
											type="text" name="cname" id="cname"class="form-control" 
											placeholder="Enter CourseName">
									</div>
									<div class="form-group">
										<label for="cinfo">Coursename</label> <input
											type="text" name="cname" id="cname"class="form-control" 
											placeholder="Enter CourseName">
									</div>
									<div class="form-group">
										<label for="cinfo">Coursename</label> <input
											type="text" name="cname" id="cname"class="form-control" 
											placeholder="Enter CourseName">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">File input</label> <input
											type="file" id="exampleInputFile">
										<p class="help-block">Example block-level help text here.</p>
									</div>
									<button type="submit" class="btn btn-primary">Submit</button>
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