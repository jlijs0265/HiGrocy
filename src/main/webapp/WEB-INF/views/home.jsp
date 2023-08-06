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
	background: -webkit-gradient(linear, left top, right top, from(#F0B661),
		to(#E4A25B)) !important;
	background: linear-gradient(to right, #F0B661, #E4A25B) !important;
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
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-xl modal-dialog-scrollable">
			<div class="modal-content" style="background-color: #DDE4F6;">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">기계목록 페이지</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body" id="M_list_card_body">
									<h4 class="card-title">기계목록</h4>
									<div class="table-responsive">
										<table class="table" id="M_list_table">
											<thead>
												<tr style="background-color: #A3B5E6;">
													<th>기계코드</th>
													<th>기계타입</th>
													<th>금일 온실가스 배출량(tCO2eq)</th>
													<th>에너지 소비량(TOE)</th>
													<th>사용시간</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${ECODate_List}" var="EcoDate">
													<tr>
														<td><c:out value="${EcoDate.machine_code}" /></td>
														<td><c:out value="${EcoDate.type}" /></td>
														<td><c:out value="${EcoDate.green_gas_date}" /></td>
														<td><c:out value="${EcoDate.energy_date}" /></td>
														<td><c:out value="${EcoDate.total}" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@ include file="partials/_navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="partials/_sidebar.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper" style="background-color: #DDE4F6;">
					<div class="page-header"></div>



					<!-- Card Layout No Chart -->
					<div class="row p-4">
						<!-- Left Component -->
						<div class="col-md-6 justify-content-center align-items-center">
							<div class="custom-card p-4 h-100">
								<div
									class="card  card-img-holder text-white h-100">
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
										<h4 class="card-title float-left">산업평균 에너지 소비량 비교</h4>
									</div>
									<canvas id="barChart2" class="mt-4 chartjs-render-monitor"
										style="display: block; height: 200px; width: 500px;"
										width="700" height="400"></canvas>
								</div>c
									
								</div>
							</div>
						</div>
						<!-- Right Component -->
						<div class="col-md-6">
							<!-- Right Row -->
							<div class="row d-flex justify-content-center"">
								<div class="custom-card p-4">
									<!-- Element_1 -->
									<div
										class="card bg-gradient-custom2 card-img-holder text-white">
										<div class="card-body">
											<img src="../../resources/assets/images/dashboard/circle.svg"
												class="card-img-absolute" alt="circle-image">
											<h4 class="font-weight-normal mb-3">
												금일 온실가스 배출량(tCO2eq/일) <i
													class="mdi mdi-leaf mdi-24px float-right"></i>
											</h4>
											<h2 class="mb-5" id="tdGreenGas"></h2>
										</div>
									</div>
								</div>
								<div class="custom-card p-4">
									<!-- Element_2 -->
									<div
										class="card bg-gradient-custom3 card-img-holder text-white">
										<div class="card-body">
											<img src="../../resources/assets/images/dashboard/circle.svg"
												class="card-img-absolute" alt="circle-image">
											<h4 class="font-weight-normal mb-3">
												금일 에너지 소모량(KJ/일) <i
													class="mdi mdi-power mdi-24px float-right"></i>
											</h4>
											<h2 class="mb-5" id="tdEnergy"></h2>
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
										<h4 class="card-title float-left">산업 평균 온실가스 배출량</h4>
									</div>
									<canvas id="barChart" class="mt-4 chartjs-render-monitor"
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
									<h4 class="card-title">Today TOP3 Green Gas</h4>
									<canvas id="energy-chart" width="306" height="153"
										style="display: block; height: 102px; width: 204px;"
										class="chartjs-render-monitor" data-bs-toggle="modal"
										data-bs-target="#exampleModal"></canvas>
									<div id="traffic-chart-legend"
										class="rounded-legend legend-vertical legend-bottom-left pt-4">
										
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
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0/dist/chart.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
	<!-- Custom Javascript -->

	<script type="text/javascript">
$(function(){
	
/********************************CHART Custom************************************/
	Chart.register(ChartDataLabels);
	
	
	//서버 동작 순서 JAVA->JSTL->HTML->JAVASCRIPT 
	  var ecoDataList = [];
	    <c:forEach items="${ECODate_List}" var="EcoDate">
	        var ecoData = {
	            machine_code: "<c:out value='${EcoDate.machine_code}' />",
	            type:"<c:out value="${EcoDate.type}" />",
	            green_gas_date: "<c:out value='${EcoDate.green_gas_date}' />",
	            energy_date: "<c:out value='${EcoDate.energy_date}' />",
	            total: "<c:out value='${EcoDate.total}' />"
	        };
	        ecoDataList.push(ecoData);
	    </c:forEach>
		var Top3_total = 0; //top3 온실가스 배출량
		var All_total_green_gas=0; //금일 온실가스 배출량 총합
		var All_total_TJ=0;//금일 에너지 소비량 총합
		
		// JavaScript에서 데이터 활용 예시
	    for (var i = 0; i <3; i++) {
	        var ecoData = ecoDataList[i];
	        console.log("기계코드:", ecoData.machine_code);
	        console.log("금일 온실가스 배출량:", ecoData.green_gas_date);
	        console.log("에너지 소비량:", ecoData.energy_date);
	        console.log("사용시간:", ecoData.total);
	        console.log("------------");
	        Top3_total+=parseInt(ecoData.green_gas_date);
	    }
	    for (var i = 0; i <ecoDataList.length; i++) {
	        var ecoData = ecoDataList[i];
	        console.log("기계코드:", ecoData.machine_code);
	        console.log("금일 온실가스 배출량:", ecoData.green_gas_date);
	        console.log("에너지 소비량:", ecoData.energy_date);
	        console.log("사용시간:", ecoData.total);
	        console.log("------------");
	        All_total_green_gas+=parseInt(ecoData.green_gas_date);
	        All_total_TJ+=parseInt(ecoData.energy_date);
	    }
	    const GreenGasPercentages = [
	          ((parseInt(ecoDataList[0].green_gas_date) / Top3_total) * 100).toFixed(1),
	          ((parseInt(ecoDataList[1].green_gas_date) / Top3_total) * 100).toFixed(1),
	          ((parseInt(ecoDataList[2].green_gas_date) / Top3_total) * 100).toFixed(1)
	      ];

		
	    console.log("GreenGasPercentagesTest "+GreenGasPercentages[0]);
	    //KJ->TJ변환 1TJ=1000000KJ
	    All_total_TJ=(All_total_TJ/1000000);
// 	    All_total_TJ=(All_total_TJ/23.8846).toFixed(2);
	    
		/* ********************동적 태그 생성 부분********************** */
		
	 var html = `<ul>
	<li><span class="legend-dots" 
	style="background: linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))"></span>
	<span class="float-right" id="percent_1"></span></li>
	<li><span class="legend-dots" 
	style="background: linear-gradient(to right, rgba(6, 185, 157, 1), rgba(132, 217, 210, 1))"></span>
	<span class="float-right" id="percent_2"></span></li>
	<li><span class="legend-dots" 
	style="background: linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))"></span>
	<span class="float-right" id="percent_3"></span></li>
	</ul>`;

	$("#traffic-chart-legend").append(html);

	document.getElementById("percent_1").textContent = ecoDataList[0].type + " : " + GreenGasPercentages[0] +"%";
	document.getElementById("percent_2").textContent = ecoDataList[1].type + " : " + GreenGasPercentages[1]+"%";
	document.getElementById("percent_3").textContent = ecoDataList[2].type + " : " + GreenGasPercentages[2]+"%";
	document.getElementById("tdGreenGas").textContent = All_total_green_gas+"  (tCO2eq/일)";
	document.getElementById("tdEnergy").textContent = All_total_TJ*1000000+"  (KJ/일)";
	   
	    console.log(Top3_total);
	    console.log("GreenGasPercentages"+GreenGasPercentages[0]);
	    console.log(GreenGasPercentages[1]);
	    console.log(GreenGasPercentages[2]);

	    /* Chart Canvas Connetion */
		var canvas = document.getElementById('energy-chart');
		var context = canvas.getContext('2d');
		
		var canvas2 = document.getElementById('barChart');
		var context2 = canvas2.getContext('2d');
		
		var canvas3 = document.getElementById('barChart2');
		var context3 = canvas3.getContext('2d');
		
		/* Chart Gradient Effect Edit */
		var gradient = context.createLinearGradient(0, 0, canvas.width, 0);
		gradient.addColorStop(0, 'rgba(54, 215, 232, 0.5)');
		gradient.addColorStop(1, 'rgba(177, 148, 250, 0.5)');
		
		var gradient2 = context.createLinearGradient(0, 0, canvas.width, 0);
		gradient2.addColorStop(0, 'rgba(6, 185, 157, 1)');
		gradient2.addColorStop(1, 'rgba(132, 217, 210, 1)');
		
		var gradient3 = context.createLinearGradient(0, 0, canvas.width, 0);
		gradient3.addColorStop(0, 'rgba(255, 191, 150, 1)');
		gradient3.addColorStop(1, 'rgba(254, 112, 150, 1)');
		
		
	var doughnutPieData = {
		    datasets: [{
		      data: [
		    	  GreenGasPercentages[0],
		    	  GreenGasPercentages[1],
		    	  GreenGasPercentages[2]
		    	  ],
		      backgroundColor: [
		    	  gradient,
		          gradient2,
		          gradient3
		          
		      ],
		      borderColor: [
		    	  gradient,
		    	  gradient2,
		    	  gradient3
		      ],
		    }],
		    // These labels appear in the legend and in the tooltips when hovering different arcs
		    labels: [
		    	"CODE["+ecoDataList[0].machine_code+"] : "+ecoDataList[0].type,
		    	"CODE["+ecoDataList[1].machine_code+"] : "+ecoDataList[1].type,
		    	"CODE["+ecoDataList[2].machine_code+"] : "+ecoDataList[2].type,
		    ]
		  };
		  var doughnutPieOptions = {
		    responsive: true,
		    animation: {
		      animateScale: true,
		      animateRotate: true
		    }
		  };

		  var myChart = new Chart(context, {
	            type: 'doughnut', // 도넛 차트 타입
	            data: doughnutPieData,
	            plugins: [ChartDataLabels],
	            options: {
	                // 차트 설정 옵션을 추가할 수 있습니다
	                plugin:{
	                	datalabels:{
	                		formatter: (value) =>{
	                			return +"%";	
	                		}	
	                	}	                	
	                }
	            }
        });
		  

		  /* ***********************JSON 데이터 받아오는 부분************** *******/
				// 서버에서 가져올 JSON 데이터의 URL
				// AJAX 요청 보내기
				// 데이터를 저장할 변수
					var mafraData;
					
					// AJAX 요청 보내기
					$.ajax({
					url: "/resources/json/2021_MAFRA_JSON.json",
					  type: "GET",
					  dataType: "json",
					  success: function(data) {
					    // 데이터를 받아와서 변수에 저장
					    mafraData = data;
					
					    // 데이터를 활용하여 원하는 작업을 수행하는 함수 호출
					    processData(mafraData);
					  },
					  error: function(xhr, status, error) {
					    console.error("Error fetching JSON data:", error);
					  }
					});
				
				function processData(data) {
					  console.log("mafra data:", data);
					  var sheet1 = data["시트1"];
					  var keysArray = Object.keys(sheet1);
					  
					  var TJ_avg = 0;
					  var GreenGasAvg = 0;
					  
					  var mafra2021_avg = {
							    TJ_avg: TJ_avg,
							    GreenGasAvg: GreenGasAvg
							};
					  
					  keysArray.forEach(function(key) {
						    var item = data["시트1"][key];
						    
						    mafra2021_avg.TJ_avg+=parseInt(item["에너지 사용량(TJ)"]);
						    mafra2021_avg.GreenGasAvg+=parseInt(item["온실가스 배출량(tCO2-eq)"]);
						    // 이제 각각의 데이터 아이템(item)에 대해 원하는 작업을 수행할 수 있습니다.
						    console.log("Key:", key);
						    console.log("Data:", item);
						    console.log("length:", keysArray.length);
						});
/****************농림 축산 식품부 MAFRA 산업평균 에너지 소비량 및 온실가스 배출량 산출****************/
					  mafra2021_avg.TJ_avg = (mafra2021_avg.TJ_avg/keysArray.length);
					  
					  mafra2021_avg.GreenGasAvg=(mafra2021_avg.GreenGasAvg/keysArray.length);    
					
					  // 여기에서 데이터를 활용하여 필요한 작업을 수행할 수 있습니다.
					  // 예를 들어, 차트 생성 등...
					
					  /* ********************BAR CHART********************** */
					  
					  
					  var multiLineData = {
							    labels: ["산업 평균 온실가스 배출량", "금일 대비 예상 온실가스 배출량"],
							    datasets: [
							        {
							        	label: '산업 평균 온실가스 배출량(tCO2eq)',
// 							            data: [mafra2021_avg.TJ_avg, All_total_TJ],
							            data: [mafra2021_avg.GreenGasAvg, All_total_green_gas*365],
							            backgroundColor: [
									    	  gradient,
									          gradient2,
									          gradient3
									      ],
							            borderColor: gradient,
							            borderWidth: 2,
							            fill: true
							        }
							    ]
							};
							var options = {
							    scales: {
							        yAxes: [{
							            ticks: {
							                beginAtZero: true,
							                callback: function(value, index, values) {
							                    return value + ' TJ'; // 단위를 추가하여 반환
							                }
							            }
							        }]
							    }, 
							    elements: {
							        point: {
							            radius: 0
							        }
							    }
							};

							var multiLineData2 = {
								    labels: ["산업 평균 에너지 소비량(TJ)","금일 대비 예상 에너지 소비량(TJ)"],
								    datasets: [
								        {
								        	label: '산업 평균 에너지 소비량(TJ)',
								            data: [mafra2021_avg.TJ_avg,(All_total_TJ*365).toFixed(2)],
								            backgroundColor: [
										    	  gradient,
										          gradient2,
										          gradient3
										      ],
								            borderColor: gradient,
								            borderWidth: 2,
								            fill: true
								        }
								    ]
								};
								var options = {
								    scales: {
								        yAxes: [{
								            ticks: {
								                beginAtZero: true
								                
								            }
								        }]
								    }, 
								    elements: {
								        point: {
								            radius: 0
								        }
								    }
								};
								
								
/* *************************BarChart Create******************************** */
							var EnergyBarChart = new Chart(context2, {
							    type: 'bar', // 바 차트 타입
							    data: multiLineData,
							    options: options
							});
							
							var GasBarChart = new Chart(context3, {
							    type: 'bar', // 바 차트 타입
							    data: multiLineData2,
							    options: options
							});
					}

				
		  
	})//End Window

</script>
</body>
</html>