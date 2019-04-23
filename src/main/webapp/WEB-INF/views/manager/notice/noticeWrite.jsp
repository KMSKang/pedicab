<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>
<style>
#td {
	width: 300px;
	word-break: break-all;
	wrap: hard;
}
</style>
<%@include file="/WEB-INF/views/user/commons/mh.jsp"%>
</head>
<body>
	<section id="container" class="">
		<%@include file="/WEB-INF/views/user/commons/mhd.jsp"%>
		<%@include file="/WEB-INF/views/user/commons/mfj.jsp"%>
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">Notice</h3>
						<section class="panel">
							<header class="panel-heading"> Write Notice </header>
							<div class="panel-body">
								<div class="form">
									<form class="form-validate form-horizontal" id="feedback_form"
										method="POST" action="/manager/notice/noticeWriteOK">
										<div class="form-group ">
											<label for="cname" class="control-label col-lg-2">title
											</label>
											<div class="col-lg-10">
												<input class="form-control" id="cname" name="notitle"
													minlength="5" type="text" required />
											</div>
										</div>

										<div class="form-group ">
											<label for="ccomment" class="control-label col-lg-2">content</label>
											<div class="col-lg-10">
												<textarea class="form-control " id="ccomment" name="nocontent"
													required style="height: 600px;"></textarea>
											</div>
										</div>
										<div class="form-group">
											<div class="col-lg-offset-2 col-lg-10">
												<button class="btn btn-primary" type="submit">Enrollment</button>
												<button class="btn btn-default" type="button">Cancel</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</section>



						<!-- <button type="submit" class="btn btn-default" id="Erollment">등록</button> -->
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="/WEB-INF/views/user/commons/mjs.jsp"%>
</body>
</html>
