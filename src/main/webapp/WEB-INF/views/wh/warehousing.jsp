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

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
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
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Storage List</h4>
							<table id="storageList"
								class="table table-bordered table-responsive special">
								<thead style="background-color: #A3B5E6;">
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
											<td id="r_item_code"><c:out value="${WHList.item_code}" /></td>
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
	<!-- partial:partials/_footer.jsp -->
	<%@ include file="../partials/_footer.jsp"%>
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
