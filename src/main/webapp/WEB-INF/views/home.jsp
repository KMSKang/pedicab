<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<%@ include file="commons/indexbg.jsp" %>
</head>
<body>
<%@ include file="commons/Header.jsp" %>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('/resources/imagesu/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
				data-scrollax-parent="true">
				<div class="col-md-7 ftco-animate mt-5"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">YOUR
						GUIDE, YOUR FRIEND</h1>
					<p class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">"COMING
						TOGETHER IS A BEGINNING, KEEPING TOGETHER IS A PROCESS, WORKING
						TOGETHER IS A SUCCESS"</p>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-no-pb ftco-no-pt">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="search-wrap-1 ftco-animate p-4">
						<form action="#" class="search-property-1">
							<div class="row">
								<div class="col-lg align-items-end">
									<div class="form-group">
										<label for="#">Destination</label>
										<div class="form-field">
											<div class="icon">
												<span class="ion-ios-search"></span>
											</div>
											<input type="text" class="form-control"
												placeholder="Search place">
										</div>
									</div>
								</div>
								<div class="col-lg align-items-end">
									<div class="form-group">
										<label for="#">Check-in date</label>
										<div class="form-field">
											<div class="icon">
												<span class="ion-ios-calendar"></span>
											</div>
											<input type="text" class="form-control checkin_date"
												placeholder="Check In Date">
										</div>
									</div>
								</div>
								<div class="col-lg align-items-end">
									<div class="form-group">
										<label for="#">Check-out date</label>
										<div class="form-field">
											<div class="icon">
												<span class="ion-ios-calendar"></span>
											</div>
											<input type="text" class="form-control checkout_date"
												placeholder="Check Out Date">
										</div>
									</div>
								</div>
								<div class="col-lg align-items-end">
									<div class="form-group">
										<label for="#">Price Limit</label>
										<div class="form-field">
											<div class="select-wrap">
												<div class="icon">
													<span class="ion-ios-arrow-down"></span>
												</div>
												<select name="" id="" class="form-control">
													<option value="">$5,000</option>
													<option value="">$10,000</option>
													<option value="">$50,000</option>
													<option value="">$100,000</option>
													<option value="">$200,000</option>
													<option value="">$300,000</option>
													<option value="">$400,000</option>
													<option value="">$500,000</option>
													<option value="">$600,000</option>
													<option value="">$700,000</option>
													<option value="">$800,000</option>
													<option value="">$900,000</option>
													<option value="">$1,000,000</option>
													<option value="">$2,000,000</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg align-self-end">
									<div class="form-group">
										<div class="form-field">
											<input type="submit" value="Search"
												class="form-control btn btn-primary">
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center pb-5">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<h2 class="mb-4">Best Course</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<div class="img">
							<img src="/resources/imagesu/destination-1.jpg" class="img-fluid"
								alt="Colorlib Template">
						</div>
						<div class="text">
							<h4 class="price">$500</h4>
							<span>15 Days Tour</span>
							<h3>
								<a href="project.html">Gurtnellen, Swetzerland</a>
							</h3>
							<div class="star d-flex clearfix">
								<div class="mr-auto float-left">
									<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
									<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
									<span class="ion-ios-star"></span>
								</div>
								<div class="float-right">
									<span class="rate"><a href="#">(120)</a></span>
								</div>
							</div>
						</div>
						<a href="imagesu/destination-1.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<div class="img">
							<img src="/resources/imagesu/destination-3.jpg" class="img-fluid"
								alt="Colorlib Template">
						</div>
						<div class="text">
							<h4 class="price">$400</h4>
							<span>15 Days Tour</span>
							<h3>
								<a href="project.html">Gurtnellen, Swetzerland</a>
							</h3>
							<div class="star d-flex clearfix">
								<div class="mr-auto float-left">
									<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
									<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
									<span class="ion-ios-star"></span>
								</div>
								<div class="float-right">
									<span class="rate"><a href="#">(120)</a></span>
								</div>
							</div>
						</div>
						<a href="/resources/imagesu/destination-3.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<div class="img">
							<img src="/resources/imagesu/destination-4.jpg" class="img-fluid"
								alt="Colorlib Template">
						</div>
						<div class="text">
							<h4 class="price">$400</h4>
							<span>15 Days Tour</span>
							<h3>
								<a href="project.html">Gurtnellen, Swetzerland</a>
							</h3>
							<div class="star d-flex clearfix">
								<div class="mr-auto float-left">
									<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
									<span class="ion-ios-star"></span> <span class="ion-ios-star"></span>
									<span class="ion-ios-star"></span>
								</div>
								<div class="float-right">
									<span class="rate"><a href="#">(120)</a></span>
								</div>
							</div>
						</div>
						<a href="/resources/imagesu/destination-4.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section services-section bg-light">
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon">
							<span class="flaticon-yatch"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Activities</h3>
							<p>203 Fake St. Mountain View, San Francisco, California, USA</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon">
							<span class="flaticon-around"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Travel Arrangements</h3>
							<p>A small river named Duden flows by their place and
								supplies.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon">
							<span class="flaticon-compass"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Private Guide</h3>
							<p>A small river named Duden flows by their place and
								supplies.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon">
							<span class="flaticon-map-of-roads"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Location Manager</h3>
							<p>A small river named Duden flows by their place and
								supplies.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<%@include file="commons/footer.jsp" %>
</body>
</html>
