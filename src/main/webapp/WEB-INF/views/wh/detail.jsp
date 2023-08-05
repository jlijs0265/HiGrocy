<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hi Grocy</title>
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
							<table id="DetailList"
								class="table table-bordered table-responsive special">
								<thead style="background-color: #A3B5E6;">
									<tr id="thead">
										<th>품목코드</th>
										<th>품목명</th>
										<th>재고수량</th>
									</tr>
								</thead>
								<tbody>
								<!-- TODO 백단부터 연결하고 데이터 받아오면 다시 시작 -->
									<c:forEach items="${DetailList}" var="DetailList">
										<tr class="" id="DetailItem">
											<td id="r_wh_code">
											<c:out value="${DetailList}" /></td>
											<td id="r_item_code"><c:out value="${DetailList}" /></td>
											<td id="r_item_name"><c:out value="${DetailList}" /></td>
											<td id="r_item_amount"><c:out value="${DetailList}" /></td>
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

		var memory = 0;
		/* List Row Click event */
		$(DetailList).on("dblclick", "tbody > tr", function(e) {
			e.stopPropagation();
			var tr = $(this);
			var td = tr.children();
			memory = tr;

			tr.each(function(index) {
				var text = $(this).text(); // 현재 항목의 텍스트 가져오기
				console.log("인덱스 " + index + ": " + text);
			})
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
			
		})

	})//end window
</script>
</html>
