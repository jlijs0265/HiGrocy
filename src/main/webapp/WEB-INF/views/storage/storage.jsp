<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Purple Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="/resources/assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="/resources/assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="/resources/assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="/resources/assets/images/favicon.ico" />

</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@ include file="../partials/_navbar.html"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="../partials/_sidebar.html"%>
			<!-- partial -->
			<div class="main-panel">
				<!-- -------------------------------Container Start---------------------------------------------- -->
				<div class="content-wrapper" style="background-color: #DDE4F6;">
					<div class="row">
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Storage Search">
										<div class="input-group-append">
											<button class="btn btn-sm btn-gradient-primary" type="button">Search</button>
										</div>
									</div>

									<h4 class="card-title">Storage List</h4>
									<table id="storageList" class="table table-bordered">
										<thead style="background-color: #A3B5E6;">
											<tr>
												<th>#</th>
												<th>창고 코드</th>
												<th>창고명</th>
												<th>창고 위치</th>
												<th>담당자</th>
												<th>진행도</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>001</td>
												<td>분당 1창고</td>
												<td>경기도 성남시 분당구 삼평동 123-45</td>
												<td>백설</td>
												<td>
													<div class="progress">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: 25%" aria-valuenow="25" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">창고 입력</h4>
									<form class="forms-storage" action="insert/storage" method="post">
										<div class="form-group">
											<label for="storageCodeLabel">StorageCode</label> 
											<input type="text" class="form-control" id="storageCode"
												name="storageCode" placeholder=no >
										</div>
										<div class="form-group">
											<label for="storageCodeLabel">Storage</label> <input
												type="text" class="form-control" id="storage" name="storage"
												placeholder=storageName>
										</div>
										<div class="form-group">
											<label for="storageLocationLabel">Location</label> <input
												type="text" class="form-control" id="storageLocation"
												name="storageLocation" placeholder="Location">
										</div>
										<div class="form-group">
											<label for="storageAdmin">Admin</label> <input type="text"
												class="form-control" id="storageAdmin" name="storageAdmin"
												placeholder="storageAdmin">
										</div>
										<button type="button" id="storageReg"
											class="btn btn-gradient-info btn-rounded btn-fw">Submit</button>
										<button type="button" id="storageEdit" class="btn btn-gradient-info btn-rounded btn-fw">Edit</button> 
										<button type="button" id="storageDel" class="btn btn-light">Cancel</button>
									</form>
								</div>
								<!-- cardbody end -->
							</div>
						</div>
					</div>
					<!-- end Row  -->
				</div>
				<!-- content-wrapper ends -->
				<!-- ---------------------------------Container End-------------------------------- -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- partial:partials/_footer.html -->
	<%@ include file="../partials/_footer.html"%>
	<!-- partial -->
</body>
<!-- plugins:js -->
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
<script src="/resources/assets/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="/resources/assets/vendors/chart.js/Chart.min.js"></script>
<script src="/resources/assets/js/jquery.cookie.js"
	type="text/javascript"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="/resources/assets/js/off-canvas.js"></script>
<script src="/resources/assets/js/hoverable-collapse.js"></script>
<script src="/resources/assets/js/misc.js"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="/resources/assets/js/dashboard.js"></script>
<script src="/resources/assets/js/todolist.js"></script>
<!-- End custom js for this page -->


<script>
	$(function() {
		console.log("Custom Script Start!!");

		var storageRegBtn = $("#storageReg");
		var storageEditBtn = $("#storageEdit");
		var storageDelBtn = $("#storageDel");
		var storageList = $("#storageList");
		
		/* List Row Click event */
		$(storageList).on("click","tr",function(e){
			e.stopPropagation();
			var tr = $(this);
			var td = tr.children();
			
			var no = td.eq(1).text();
			var storageName = td.eq(2).text();
			var address = td.eq(3).text();
			var adminName = td.eq(4).text();
			console.log("클릭한 ROW의 모든 데이터 "+no);
			console.log("클릭한 ROW의 모든 데이터 "+storageName);
			console.log("클릭한 ROW의 모든 데이터 "+address);
			console.log("클릭한 ROW의 모든 데이터 "+adminName);
			
			document.getElementById("storageCode").value = no;
			document.getElementById("storage").value = storageName;
			document.getElementById("storageLocation").value = address;
			document.getElementById("storageAdmin").value = adminName;
			
		})
			
		/************Call storageBtn************/
		$(storageRegBtn).on("click", function() {
			var data = {
				storageCode : document.getElementById("storageCode").value,
				storage : document.getElementById("storage").value,
				location : document.getElementById("storageLocation").value,
				admin : document.getElementById("storageAdmin").value,
			}
			
			$.ajax({
				//요청 타입
				type : 'post',
				//요청 URL
				url : 'insert/storage',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$(".forms-storage")[0].reset();
					if (callback) {
						callback(result);
					}
				},
				error : function(xhr, status, er) {
					if (er) {
						error(er);
					}
				}
			});
			
			console.log(data);
		})//end storageRegBtn Function
		
		$(storageEditBtn).on("click",function(){
			var data = {
					storageCode : document.getElementById("storageCode").value,
					storage : document.getElementById("storage").value,
					location : document.getElementById("storageLocation").value,
					admin : document.getElementById("storageAdmin").value,
			}
			
			$.ajax({
				//요청 타입
				type : 'put',
				//요청 URL
				url : 'storage',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$(".forms-storage")[0].reset();
					if (callback) {
						callback(result);
					}
				},
				error : function(xhr, status, er) {
					if (er) {
						error(er);
					}
				}
			});
			console.log(data);
		})//end storageEditBtn Function
		
		$(storageDelBtn).on("click", function() {
		    var storageCode = document.getElementById("storageCode").value;

		    $.ajax({
		        // 요청 타입
		        type: 'DELETE',
		        // 요청 URL에 storageCode 포함
		        url: 'storage/',
		        data : storageCode,
		        // 요청의 Content-Type 무시
		        contentType: "application/json; charset=utf-8",
		        success: function(result, status, xhr) {
		            $(".forms-storage")[0].reset();
		            if (callback) {
		                callback(result);
		            }
		        },
		        error: function(xhr, status, er) {
		            if (er) {
		                error(er);
		            }
		        }
		    });
		});

		
		/* $(storageDelBtn).on("click",function(){
			var storageCode = document.getElementById("storageCode").value;
			
			$.ajax({
				//요청 타입
				type : 'DELETE',
				//요청 URL
				url : 'storage',
				data : storageCode,
				success : function(result, status, xhr) {
					$(".forms-storage")[0].reset();
					if (callback) {
						callback(result);
					}
				},
				error : function(xhr, status, er) {
					if (er) {
						error(er);
					}
				}
			});
			console.log(data);
		}) */
		
		
	})//end window
</script>
</html>
