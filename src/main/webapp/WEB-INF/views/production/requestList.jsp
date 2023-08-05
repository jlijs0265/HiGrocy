<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
<div class="container-scroller">
	<!-- partial:partials/_navbar.jsp -->
	<%@ include file="/WEB-INF/views/partials/_navbar.jsp"%>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
		<!-- partial:partials/_sidebar.jsp -->
		<%@ include file="/WEB-INF/views/partials/_sidebar.jsp"%>
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">
						 생산요청현황
					</h3>
				</div>
				<div class="row">
				<div class = "col-md-7 row">
					<div class= "col-sm-5">
						<input type = "date" id = "start">
					</div>
					<div class = "col-sm-2">
					<span> ~ </span>
					</div>
					<div class = "col-sm-5">
						<input type = "date" id = "end">
					</div>
					</div>
					<div class = "col-md-2">
					<button type="button" id="select" class="btn-sm btn-gradient-primary mr-2">조회</button>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body" id = "pm_list_card_body">
								<div class="table-responsive">
									<table class="table" id = "PM_list_table">
										<thead>
											<tr>
												<th>생산요청코드</th>
												<th>요청날짜</th>
												<th>담당자</th>
												<th>품목코드</th>
												<th>생산요청수량</th>
												<th>생산수량</th>
												<th>불량품수량</th>
												<th>생산여부</th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.jsp -->
			<%@ include file="/WEB-INF/views/partials/_footer.jsp"%>
			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
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
<script>

	//조회 버튼 눌렀을때
	//
	$("#select").on("click", function() {
		var BetweenDateVO = {
			start : $("#start").val(),
			end : $("#end").val()
		}
		console.log(BetweenDateVO);


		$.ajax({
			//요청 타입
			type : 'POST',
			//요청 URL
			url : '/production/requestList/get',
			//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
			data : JSON.stringify(BetweenDateVO),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				$("tbody").empty();
				for(var i = 0; i < result.length; i++) {
					$('tbody').append('<tr><td>'+result[i].pr_code+'</td><td>'+displayTime(result[i].request_date)+'</td><td>'+result[i].request_manager+'</td><td>'+result[i].item_code+'</td><td>'+result[i].amount+'</td><td><input type = "number" id = "product_amount" min = "1" max = "10000"></td><td><input type = "number" id = "defective_amount" min = "1" max = "10000"></td><td><button type="button" id="select" class="btn-sm btn-gradient-primary mr-2">생산</button></td></tr>');
					}
				},
			error : function(xhr, status, er) {
				if (er) {
					error(er);
				}
			}
		});
	});
	//생산 버튼 눌렀을때
	$("tbody").on("click", "button", function(){
		var pks = this.parentElement.parentElement.querySelectorAll('td');
		var input_elements = this.parentElement.parentElement.querySelectorAll('input');
		console.log(pks[0]);
		var product_recode = {
				item_code : parseInt(pks[3].textContent),
				pr_code : parseInt(pks[0].textContent),
				usage_time : $(input_elements[0]).val(),
				defective_amount : $(input_elements[1]).val()
		}
		console.log(JSON.stringify(product_recode));
		$.ajax({
    			type : 'post',
    			url : '/production/requestList/register',
    			data : JSON.stringify(product_recode),
				contentType : "application/json; charset=utf-8",
    			success : function(result, status, xhr) {
    				console.log(result);
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
		});
		console.log(this.parentElement.innerHTML = '<td>생산됨</td>');
	})
	//날짜 변경 함수
	const displayTime = function(timeValue){
		var dateObj = new Date(timeValue);
		var yy = dateObj.getFullYear();
		var mm = dateObj.getMonth() +1;
		var dd = dateObj.getDate();
		return [yy, '-', (mm > 9 ? '': '0')+mm, '-',(dd>9 ? '': '0')+dd].join('');
	}
	
	</script>
<!-- End custom js for this page -->
</body>
</html>
