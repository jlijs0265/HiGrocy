<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>




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
				<div class="content-wrapper">

					<div class="page-header">
						<h3 class="page-title">
							<span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>
							</span> Dashboard
						</h3>
						<nav aria-label="breadcrumb">
							<ul class="breadcrumb">
								<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
									<i
									class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
								</li>
							</ul>
						</nav>
					</div>

					<div class="row">
						<div class="col-md-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">거래처목록</h4>
									<div class="table-responsive">
										<table class="table" id="AC_list_table">
											<thead>
												<tr>
													<th>거래처코드</th>
													<th>거래처명</th>
													<th>거래처번호</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${accList}" var="AC">
													<tr>
														<td><c:out value="${AC.account_code}" /></td>
														<td><c:out value="${AC.name}" /></td>
														<td><c:out value="${AC.phone_number}" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title" id="AC_list_detail_title">등록 페이지</h4>
									<form class="forms" id="AC_list_detail">
										<div class="form-group row">
											<label for="input_account_code"
												class="col-sm-4 col-form-label">거래처코드</label>
											<div class="col-sm-8">
												<input type="text" class="form-control"
													id="input_account_code" placeholder="거래처코드">
											</div>
										</div>
										<div class="form-group row">
											<label for="input_account_name"
												class="col-sm-4 col-form-label">거래명</label>
											<div class="col-sm-8">
												<input type="text" class="form-control"
													id="input_account_name" placeholder="거래명">
											</div>
										</div>
										<div class="form-group row">
											<label for="input_account_phone_number"
												class="col-sm-4 col-form-label">거래처번호</label>
											<div class="col-sm-8">
												<input type="text" class="form-control"
													id="input_account_phone_numbe" placeholder="거래처번호">
											</div>
										</div>

										<button type="button" id="accListReg"
											class="btn-sm btn-gradient-primary mr-2">등록</button>
										<button type="button" id="accListUp"
											class="btn-sm btn-gradient-primary mr-2">수정</button>
										<button type="button" id="accListDel"
											class="btn-sm btn-gradient-primary mr-2">삭제</button>

									</form>
								</div>
							</div>
						</div>
					</div>



				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<%@ include file="../partials/_footer.html"%>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
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

	<script>
	
	$("#accListDel").hide();
	$("#accListUp").hide();
	 		let pm_list_code_v  = -1;
	 		
	 		$("#accListReg").on("click",fuction(){
	 				var acc_list = {
	 						
	 						machine_code : m_code_v,
	 						type : document.getElementById("input_type").value,
	 						gas_emissions : document.getElementById("input_gas_emissions").value,
	 						energy_usage : document.getElementById("input_energy_usage").value
	 				
	 				}
	 				
	 				$.ajax({
	 					
	 					
	 					//요청 타입
	 					type : 'post',
	 					//요청 URL
	 					url : 'pmlist/register',
	 					//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
	 					data : JSON.stringify(pm_list),
	 					contentType : "application/json; charset=utf-8",
	 					success : function(result, status, xhr) {
	 						$("#pm_list_detail")[0].reset();
	 		        $(location).attr('href','/pm');

	 		      },
	 					error : function(xhr, status, er) {
	 						if (er) {
	 							error(er);
	 						}
	 					}
	 			
	 					 	
	 		      
	 				});
	 				
	 		});
	
	 		
	 	    //빈 table 공간선택시 등록페이지로 변경되게 수정
	 		//TODO:이거안됨 수정필요
	 		
	 		  $("#m_list_card_body").on("click", function(e){
	 			    e.stopPropagation();
	 			    $("#MReg").show();
	 			    $("#MDel").hide();
	 			    $('#MUp').hide();
	 			    $("#M_list_detail_title").text("등록페이지");
	 			  })
	 		
	 		
	 			      //table 한 행 클릭시 상세페이지에 값 반영되게 수정
  $("#M_list_table tr").on("click", function(e){
    e.stopPropagation();
    var tr = $(this);
	var td = tr.children();
	
	m_code_v = td.eq(0).text();
	var type = td.eq(1).text();
	var gas_emissions = td.eq(2).text();
	var energy_usage = td.eq(3).text();
	
	var mac_code = document.querySelectorAll("#input_machine_code");
	mac_code[0].value = m_code_v;
	mac_code[1].value = m_code_v;
	document.getElementById("input_type").value = type;
	document.getElementById("input_gas_emissions").value = gas_emissions;
	document.getElementById("input_energy_usage").value = energy_usage;

  $("#MReg").hide();
    $("#MDel").show();
    $('#MUp').show();
    $("#M_list_detail_title").text("상세페이지");
  })
  
  
  $("#MUp").on("click", function() {
	  var m_list = {
				machine_code : m_code_v,
				type : document.getElementById("input_type").value,
				gas_emissions : document.getElementById("input_gas_emissions").value,
				energy_usage : document.getElementById("input_energy_usage").value
			}

		$.ajax({
			//요청 타입
			type : 'put',
			//요청 URL
			url : 'pm/update',
			//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
			data : JSON.stringify(m_list),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				$("#m_list_detail")[0].reset();
      $(location).attr('href','/pm');
      //TODO: 생산기계목록에 수정해줘야함.
			},
			error : function(xhr, status, er) {
				if (er) {
					error(er);
				}
			}
		});
	});
	 		
	 		 $("#MDel").on("click", function() {

	 			$.ajax({
	 				//요청 타입
	 				type : 'delete',
	 				//요청 URL
	 				url : 'pm/delete',
	 				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
	 				data : m_code_v,
	 				contentType : "application/json; charset=utf-8",
	 				success : function(result, status, xhr) {
	 					$("#m_list_detail")[0].reset();
	 	      $(location).attr('href','/pm');
	 				},
	 				error : function(xhr, status, er) {
	 					if (er) {
	 						error(er);
	 					}
	 				}
	 			});
	 		});
	 			  
	</script>



	<script src="/resources/assets/js/dashboard.js"></script>
	<script src="/resources/assets/js/todolist.js"></script>
	<!-- End custom js for this page -->
</body>