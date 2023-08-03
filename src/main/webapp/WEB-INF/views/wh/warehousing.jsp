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
    <link rel="stylesheet" href="/resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="/resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="/resources/assets/images/favicon.ico" />
    
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<style type="text/css">
 .table-responsive { 
 	overflow-x: auto; 
 } 

body {
	font-family: 'Noto Serif', serif;
}

.table th, .table td .special {
	white-space: normal;
}
</style>


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
				
<!-- 				Modal -->
<!-- 				<div class="modal fade" id="exampleModal" tabindex="-1" -->
<!-- 					aria-labelledby="exampleModalLabel" aria-hidden="true"> -->
<!-- 					<div class="modal-dialog modal-dialog-scrollable"> -->
<!-- 						<div class="modal-content"> -->
<!-- 							<div class="modal-header"> -->
<!-- 								<h1 class="modal-title fs-5" id="exampleModalLabel">Modal -->
<!-- 									title</h1> -->
<!--  								<button type="button" class="btn-close" data-bs-dismiss="modal" --> -->
<!--  									aria-label="Close"></button> --> -->
<!-- 							</div> -->
<!-- 							<div class="modal-body"> -->
<!-- 								원자재 품목 가져오기 -->
<!-- 								<div class="table-responsive"> -->
<!-- 									<table class="table table-bordered border-secondary rawTable"> -->
<!-- 										<thead> -->
<!-- 											<tr> -->
<!-- 												<th>코드</th> -->
<!-- 												<th>자재분류</th> -->
<!-- 												<th>자재명</th> -->
<!-- 												<th>단위</th> -->
<!-- 												<th>원산지</th> -->
<!-- 											</tr> -->
<!-- 										</thead> -->
<!-- 										<tbody class="rawbody"> -->
<!-- 											<tr class="rawitem"> -->
<!-- 												<td class="rcode"></td> -->
<!-- 												<td class="rtype"></td> -->
<!-- 												<td class="rname"></td> -->
<!-- 												<td class="runit"></td> -->
<!-- 												<td class="rorigin"></td> -->
<!-- 											</tr> -->
<!-- 										</tbody> -->
<!-- 									</table> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="modal-footer"> -->
<!-- 								<button type="button" class="btn btn-secondary" -->
<!-- 									data-bs-dismiss="modal">Close</button> -->
<!-- 								<button type="button" class="btn btn-primary">Save -->
<!-- 									changes</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				End Modal -->
				
<!-- 					<button type="button" data-bs-toggle="modal" -->
<!-- 						data-bs-target="#exampleModal">모달 등장</button> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-lg-12 grid-margin stretch-card"> -->
<!-- 							<div class="card"> -->
<!-- 								<div class="card-body"> -->
<!-- 									<div class="input-group"> -->
<!-- 										<input type="text" class="form-control" -->
<!-- 											placeholder="Storage Search"> -->
<!-- 										<div class="input-group-append"> -->
<!-- 											<button class="btn btn-sm btn-gradient-primary" type="button">Search</button> -->
<!-- 										</div> -->
<!-- 									</div> -->

									<h4 class="card-title">Storage List</h4>
									<table id="storageList"
										class="table table-bordered table-responsive special">
										<thead>
											<tr>
												<th>입출고 내역 코드</th>
												<th>품목코드</th>
												<th>창고코드</th>
												<th>입출고 유형</th>
												<th>입출고 날짜</th>
												<th>재고 수량</th>
												<th>입출고 유형별 코드</th>
												<th>유통기한</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${WHList}" var="WHList">
												<tr class="" id="WHListItem">
													<td id="r_wh_code"><c:out
															value="${WHList.warehousing_record_code}" /></td>
													<td id="r_item_code"><c:out
															value="${WHList.item_code}" /></td>
													<td id="r_storage_code"><c:out
															value="${WHList.storage_code}" /></td>
													<td id="r_wh_type"><c:out
															value="${WHList.warehousing_type}" /></td>
													<td id="r_wr_date"><c:out value="${WHList.wr_date}" /></td>
													<td id="r_amount"><c:out value="${WHList.amount}" /></td>
													<td id="r_wh_type_code"><c:out
															value="${WHList.warehousing_type_code}" /></td>
													<td id="r_keep_date"><c:out
															value="${WHList.keeping_date}" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- END ROW -->

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

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script>
	$(function() {

		var memory = 0;
		/* List Row Click event */
		$(storageList).on("dblclick", "tr", function(e) {
			e.stopPropagation();
			var tr = $(this);
			var td = tr.children();
			memory = tr;

			tr.each(function(index) {
				var text = $(this).text(); // 현재 항목의 텍스트 가져오기
				console.log("인덱스 " + index + ": " + text);
			})

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
		})

	})//end window
</script>
</html>
