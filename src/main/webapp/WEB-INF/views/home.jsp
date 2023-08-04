<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Purple Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="resources/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="resources/assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="resources/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="resources/assets/images/favicon.ico">


<style type="text/css">/* Chart.js */
@
keyframes chartjs-render-animation {
	from {opacity: .99
}

to {
	opacity: 1
}

.bg-gradient-custom1 {
  background: -webkit-gradient(linear, left top, right top, from(#F0B661), to(#E4A25B)) important;
  background: linear-gradient(to right, #F0B661, #E4A25B) important; 
  }
  
.chartjs-render-monitor {
	animation: chartjs-render-animation 1ms
}

.chartjs-size-monitor, .chartjs-size-monitor-expand,
	.chartjs-size-monitor-shrink {
	position: absolute;
	direction: ltr;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	overflow: hidden;
	pointer-events: none;
	visibility: hidden;
	z-index: -1
}

.chartjs-size-monitor-expand>div {
	position: absolute;
	width: 1000000px;
	height: 1000000px;
	left: 0;
	top: 0
}

.chartjs-size-monitor-shrink>div {
	position: absolute;
	width: 200%;
	height: 200%;
	left: 0;
	top: 0
}

.custom-card {
	width: 100%;
	height: 80%;
}
</style>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@ include file="partials/_navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="partials/_sidebar.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header"></div>

					<!-- Card Layout No Chart -->
					<div class="row p-4">
						<!-- Left Component -->
						<div class="col-md-6 justify-content-center align-items-center">
							<div class="custom-card p-4 h-100">
								<div
									class="card bg-gradient-custom1 card-img-holder text-white h-100">
									<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
										<h4 class="font-weight-normal mb-3">
											Weekly Sales <i
												class="mdi mdi-chart-line mdi-24px float-right"></i>
										</h4>
										<h2 class="mb-5">$ 15,0000</h2>
										<h6 class="card-text">Increased by 60%</h6>
									</div>
								</div>
							</div>
						</div>
						<!-- Right Component -->
						<div class="col-md-6">
							<!-- Right Row -->
							<div class="row d-flex justify-content-center"">
								<div class="custom-card p-4">
									<!-- Element_1 -->
									<div class="card bg-gradient-info card-img-holder text-white">
										<div class="card-body">
										<img src="/resources/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
											<h4 class="font-weight-normal mb-3">
												Weekly Orders <i
													class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
											</h4>
											<h2 class="mb-5">45,6334</h2>
											<h6 class="card-text">Decreased by 10%</h6>
										</div>
									</div>
								</div>
								<div class="custom-card p-4">
									<!-- Element_2 -->
									<div
										class="card bg-gradient-success card-img-holder text-white">
										<div class="card-body">
										<img src="/resources/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
											<h4 class="font-weight-normal mb-3">
												Visitors Online <i
													class="mdi mdi-diamond mdi-24px float-right"></i>
											</h4>
											<h2 class="mb-5">95,5741</h2>
											<h6 class="card-text">Increased by 5%</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- End Row -->



					<!-- Card Layout Chart -->
					<div class="row p-4">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<div class="clearfix">
										<h4 class="card-title float-left">Visit And Sales
											Statistics</h4>
										<div id="visit-sale-chart-legend"
											class="rounded-legend legend-horizontal legend-top-right float-right">
											<ul>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(218, 140, 255, 1), rgba(154, 85, 255, 1))"></span>CHN</li>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))"></span>USA</li>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))"></span>UK</li>
											</ul>
										</div>
									</div>
									<canvas id="visit-sale-chart"
										class="mt-4 chartjs-render-monitor"
										style="display: block; height: 200px; width: 500px;"
										width="700" height="400"></canvas>
								</div>
							</div>
						</div>
						<div class="col-md-5 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<h4 class="card-title">Traffic Sources</h4>
									<canvas id="traffic-chart" width="306" height="153"
										style="display: block; height: 102px; width: 204px;"
										class="chartjs-render-monitor"></canvas>
									<div id="traffic-chart-legend"
										class="rounded-legend legend-vertical legend-bottom-left pt-4">
										<ul>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))"></span>Search
												Engines<span class="float-right">30%</span></li>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(6, 185, 157, 1), rgba(132, 217, 210, 1))"></span>Direct
												Click<span class="float-right">30%</span></li>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))"></span>Bookmarks
												Click<span class="float-right">40%</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<%@ include file="partials/_footer.jsp"%>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="resources/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="resources/assets/vendors/chart.js/Chart.min.js"></script>
	<script src="resources/assets/js/jquery.cookie.js"
		type="text/javascript"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="resources/assets/js/off-canvas.js"></script>
	<script src="resources/assets/js/hoverable-collapse.js"></script>
	<script src="resources/assets/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="resources/assets/js/dashboard.js"></script>
	<script src="resources/assets/js/todolist.js"></script>
	<!-- End custom js for this page -->

</body>
</html>
