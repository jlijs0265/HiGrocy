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
<style type="text/css">
.table-responsive {
	overflow-x: auto;
}

.table th, .table td .special {
	white-space: normal;
}
</style>
<meta id="_csrf" name="_csrf" th:content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" th:content="${_csrf.headerName}" />
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.jsp -->
		<%@ include file="../partials/_navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.jsp -->
			<%@ include file="../partials/_sidebar.jsp"%>
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
											placeholder="Storage Search" id="">
										<div class="input-group-append">
											<button class="btn btn-sm btn-gradient-primary" type="button" id="storageSerchBtn">Search</button>
										</div>
									</div>

									<h4 class="card-title">Storage List</h4>
									<table id="storageList" class="table table-bordered">
										<thead style="background-color: #A3B5E6;">
											<tr>
												<th>창고 코드</th>
												<th>창고명</th>
												<th>창고 위치</th>
												<th>담당자</th>
											</tr>
										</thead>
										<tbody class="tbody">
											<c:forEach items="${storageList}" var="storageList">
                                                      <tr class="" id="storageItem">
                                                      <td id="rcode"><c:out value="${storageList.storage_code}" /></td>
                                                      <td id="rname"><c:out value="${storageList.name}" /></td>
                                                      <td id="rlocation"><c:out value="${storageList.location}" /></td>
                                                      <td id="rmanager"><c:out value="${storageList.manager}" /> </td>
                                                    </tr>
                                                  </c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">창고 입력</h4>
									<form class="forms-storage">
									<div class="form-group editForm" style="display: none;">
											<label for="storageCodeLabel">StorageCode</label> 
											<input type="text" class="form-control" id="storageCode"
												name="storageCode" placeholder=no readonly="readonly" >
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
											<label for="storageManager">Admin</label> <input type="text"
												class="form-control" id="storageManager" name="storageManager"
												placeholder="storageManager">
										</div>
											<button type="button" id="storageReg"
											class="btn btn-gradient-info btn-rounded btn-fw regForm" style="display: block">Submit</button>
											<button type="button" id="storageEdit" class="btn btn-gradient-info btn-rounded btn-fw editForm" style="display: none;">Edit</button> 
											<button type="button" id="storageDel" class="btn btn-light btn-rounded btn-fw editForm" style="display: none;">Delete</button>									
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
	<!-- partial:partials/_footer.jsp -->
	<%@ include file="../partials/_footer.jsp"%>
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

	var token = $("meta[name='_csrf']").attr("th:content");
	var header = $("meta[name='_csrf_header']").attr("th:content");
	$(function() {
		console.log("Custom Script Start!!");

		var storageRegBtn = $("#storageReg");
		var storageEditBtn = $("#storageEdit");
		var storageDelBtn = $("#storageDel");
		var storageList = $("#storageList");
		var storageSearchBtn =$("storageSerchBtn");
		var memory = 0;
		/* List Row Click event */
		$(storageList).on("dblclick","tbody > tr",function(e){
			e.stopPropagation();
			var tr = $(this);
			var td = tr.children();
			memory = tr;
			var no = td.eq(0).text();
			var storageName = td.eq(1).text();
			var address = td.eq(2).text();
			var adminName = td.eq(3).text();
			console.log("클릭한 ROW의 모든 데이터 "+no);
			console.log("클릭한 ROW의 모든 데이터 "+storageName);
			console.log("클릭한 ROW의 모든 데이터 "+address);
			console.log("클릭한 ROW의 모든 데이터 "+adminName);
			
		
			document.getElementById("storageCode").value = no;
			document.getElementById("storage").value = storageName;
			document.getElementById("storageLocation").value = address;
			document.getElementById("storageManager").value = adminName;
			
			var regform = $(".regForm");
			var editform = $(".editForm");
			regform.css("display", "none");
			/* Table Row Background-Color Change */
			//선택된 행이 이미 선택되어 있다면
				if (tr.hasClass("selected")) {
					tr.removeClass("selected");
					tr.css("background-color", "white");
					tr.css("transform", "scale(1.00)");
					tr.css("transition", "transform 0.3s ease");
				} else {
					tr.addClass("selected");
					tr.css("background-color", "#E5E5E5");
					tr.css("transform", "scale(1.03)");
					tr.css("transition", "transform 0.3s ease");
				}
			editform.css("display", "inline-block");
		})
			
		/************Call storageBtn************/
		$(storageRegBtn).on("click", function() {
			var data = {
				storage_code : document.getElementById("storageCode").value,
				name : document.getElementById("storage").value,
				location : document.getElementById("storageLocation").value,
				manager : document.getElementById("storageManager").value,
			}
			
			$.ajax({
				//요청 타입
				type : 'post',
				//요청 URL
				url : 'insert/storage',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				beforeSend : function(xhr) {
			        xhr.setRequestHeader(header, token);
			    },
				success : function(result, status, xhr) {
					$(".forms-storage")[0].reset();
					if (callback) {
						callback(result);
					}
					let box = $("<tr id=" + storageItem + ">" +
				               "<td id='rcode'>" + data.storage_code + "</td>" +
				               "<td id='rname'>" + data.name + "</td>" +
				               "<td id='rlocation'>" + data.location + "</td>" +
				               "<td id='rmanager'>" + data.manager + "</td>" +
				             "</tr>");

				$(".tbody").append(box);
				
				},
				error : function(xhr, status, er) {
					if (er) {
						error(er);
					}
				}
			});
	        $(location).attr('href','/storage/storage');

			
			console.log(data);
		})//end storageRegBtn Function
		
		function callback(result) {
			  console.log(result);
			}
		
		$(storageEditBtn).on("click",function(){
			var data = {
					storage_code : document.getElementById("storageCode").value,
					name : document.getElementById("storage").value,
					location : document.getElementById("storageLocation").value,
					manager : document.getElementById("storageManager").value
			}
			
			$.ajax({
				//요청 타입
				type : 'put',
				//요청 URL
				url : 'storage',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				beforeSend : function(xhr) {
			        xhr.setRequestHeader(header, token);
			    },
				success : function(result, status, xhr) {
					$(".forms-storage")[0].reset();
					var regform = $(".regForm");
					var editform = $(".editForm");
					/* Table Row Background-Color Reset */
					memory.css("background-color", "white");
					 regform.css("display", "block");
					 editform.css("display", "none");
					
				},
				error : function(xhr, status, er) {
					if (er) {
						error(er);
					}
				}
			});
			$(location).attr('href','/storage/storage');
			console.log(data);
		})//end storageEditBtn Function
		
		
		$(storageDelBtn).on("click", function() {
		    var storage_code = document.getElementById("storageCode").value;
		    
		    $.ajax({
		        // 요청 타입
		        type: 'DELETE',
		        // 요청 URL에 storageCode 포함
		        url: 'storage/',
		        data : storage_code,
		        // 요청의 Content-Type 무시
		        contentType: "application/json; charset=utf-8",
		        beforeSend : function(xhr) {
			        xhr.setRequestHeader(header, token);
			    },
		        success: function(result, status, xhr) {
		            $(".forms-storage")[0].reset();
		            var regform = $(".regForm");
					var editform = $(".editForm");
					/* Table Row Background-Color Reset */
					memory.css("background-color", "white");
					 regform.css("display", "block");
					 editform.css("display", "none");
		        },
		        error: function(xhr, status, er) {
		            if (er) {
		                error(er);
		            }
		        }
		    });
		    $(location).attr('href','/storage/storage');
		});
		
		$(storageSerchBtn).on("click",function(){
			var search_Code = document.getElementById("search_Code").value;
			
			$.ajax({
				//요청 타입
				type : 'post',
				//요청 URL
				url : 'search/storage',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : search_Code,
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
	        $(location).attr('href','/storage/storage');
		})

	})//end window
</script>
</html>
