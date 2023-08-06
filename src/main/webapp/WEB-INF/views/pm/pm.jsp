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
<div>
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-xl modal-dialog-scrollable">
		  <div class="modal-content">
			<div class="modal-header">
			  <h1 class="modal-title fs-5" id="exampleModalLabel">기계목록 페이지</h1>
			  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-7 grid-margin stretch-card">
						<div class="card">
							<div class="card-body" id="M_list_card_body">
								<h4 class="card-title">기계목록</h4>
								<div class="table-responsive">
									<table class="table" id = "M_list_table">
										<thead>
											<tr>
												<th>기계코드</th>
												<th>기계종류</th>
												<th>온실가스 배출량(kcal/h)</th>
												<th>에너지소모량(kj/h)</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${MList}" var="M">
												<tr>
													<td><c:out value="${M.machine_code}" /></td>
													<td><c:out value="${M.type}" /></td>
													<td><c:out value="${M.gas_emissions}" /></td>
													<td><c:out value="${M.energy_usage}" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5 grid-margin stretch-card">
						<div class="card">
							<div class="card-body" id="m_list_card_body">
								<h4 class="card-title" id = "M_list_detail_title">등록 페이지</h4>
								<form class="forms-sample" id="m_list_detail">
									<div class="form-group row">
										<label for="input_machine_code"
											class="col-sm-4 col-form-label">기계코드</label>
										<div class="col-sm-8">
											<input type="text" class="form-control"
												id="input_machine_code" placeholder="기계코드" readonly="readonly" >
										</div>
									</div>
									<div class="form-group row">
										<label for="input_type" class="col-sm-4 col-form-label">기계종류</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" id="input_type"
												placeholder="기계종류">
										</div>
									</div>
									<div class="form-group row">
										<label for="input_gas_emissions"
											class="col-sm-4 col-form-label">온실가스배출량</label>
										<div class="col-sm-8">
											<input type="text" class="form-control"
												id="input_gas_emissions" placeholder="온실가스배출량">
										</div>
									</div>
									<div class="form-group row">
										<label for="input_energy_usage"
											class="col-sm-4 col-form-label">에너지소모량</label>
										<div class="col-sm-8">
											<input type="text" class="form-control"
												id="input_energy_usage" placeholder="에너지소모량">
										</div>
									</div>
									<button type="button" id = "MReg" class="btn-sm btn-gradient-primary mr-2">등록</button>
									<button type="button" id = "MUp" class="btn-sm btn-gradient-primary mr-2">수정</button>
									<button type="button" id = "MDel" class="btn-sm btn-gradient-primary mr-2">삭제</button>
									<button type="button" id = "MSel" class="btn-sm btn-gradient-primary mr-2">선택</button>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
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
					<div class="col-md-7 grid-margin stretch-card">
						<div class="card">
							<div class="card-body" id = "pm_list_card_body">
								<h4 class="card-title">생산기계목록</h4>
								<div class="table-responsive">
									<table class="table" id = "PM_list_table">
										<thead>
											<tr>
												<th>생산기계코드</th>
												<th>기계명</th>
												<th>공장명</th>
												<th>위치</th>
												<th>기계코드</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${PMList}" var="PM">
												<tr>
													<td><c:out value="${PM.pm_list_code}" /></td>
													<td><c:out value="${PM.name}" /></td>
													<td><c:out value="${PM.factory_name}" /></td>
													<td><c:out value="${PM.location}" /></td>
													<td><c:out value="${PM.machine_code}" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title" id = "PM_list_detail_title">등록 페이지</h4>
								<form class="forms" id="pm_list_detail">
									<div class="form-group row">
										<label for="input_machine_code"
											class="col-sm-4 col-form-label">기계코드</label>
										<div class="col-sm-8">
											<input type="text" class="form-control"
												id="input_machine_code" placeholder="기계코드" data-bs-toggle="modal" data-bs-target="#exampleModal" readonly = "readonly">
										</div>
									</div>
									<div class="form-group row">
										<label for="input_machine_name"
											class="col-sm-4 col-form-label">기계명</label>
										<div class="col-sm-8">
											<input type="text" class="form-control"
												id="input_machine_name" placeholder="기계명">
										</div>
									</div>
									<div class="form-group row">
										<label for="input_factory_name"
											class="col-sm-4 col-form-label">공장명</label>
										<div class="col-sm-8">
											<input type="text" class="form-control"
												id="input_factory_name" placeholder="공장명">
										</div>
									</div>
									<div class="form-group row">
										<label for="input_location" class="col-sm-4 col-form-label">위치</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" id="input_location"
												placeholder="위치">
										</div>

									</div>
									<button type="button" id="pmListReg"
										class="btn-sm btn-gradient-primary mr-2">등록</button>
									<button type="button" id="pmListUp"
										class="btn-sm btn-gradient-primary mr-2">수정</button>
									<button type="button" id="pmListDel"
										class="btn-sm btn-gradient-primary mr-2">삭제</button>

								</form>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<script>
  $("#pmListDel").hide();
  $('#pmListUp').hide();
	let pm_list_code_v = -1;
  $("#MDel").hide();
  $('#MUp').hide();
  $('#MSel').hide();
	let m_code_v = -1;
	//생산기계목록 등록 버튼 눌렀을때
	//
	$("#pmListReg").on("click", function() {
		var pm_list = {
			pm_list_code : pm_list_code_v,
			machine_code : document.getElementById("input_machine_code").value,
			name : document.getElementById("input_machine_name").value,
			factory_name : document.getElementById("input_factory_name").value,
			location : document.getElementById("input_location").value
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
  //기계목록의 등록버튼을 눌렀을때
	$("#MReg").on("click", function() {
		var m_list = {
			machine_code : m_code_v,
			type : document.getElementById("input_type").value,
			gas_emissions : document.getElementById("input_gas_emissions").value,
			energy_usage : document.getElementById("input_energy_usage").value
		}

		$.ajax({
			//요청 타입
			type : 'post',
			//요청 URL
			url : 'pm/register',
			//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
			data : JSON.stringify(m_list),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				$("#pm_list_detail")[0].reset();
				$('#exampleModal').modal('hide');
      },
			error : function(xhr, status, er) {
				if (er) {
					error(er);
				}
			}
		});
	});
	
  //빈 table 공간선택시 등록페이지로 변경되게 수정
  $("#pm_list_card_body").on("click", function(e){
    e.stopPropagation();
    $("#pmListReg").show();
    $("#pmListDel").hide();
    $('#pmListUp').hide();
    $("#PM_list_detail_title").text("등록 페이지");
  });

    //빈 table 공간선택시 등록페이지로 변경되게 수정
  $("#M_list_card_body").on("click", function(e){
	console.log('기계목록 table 선택됨');
    e.stopPropagation();
    $("#MReg").show();
    $("#MDel").hide();
    $('#MUp').hide();
	$('#MSel').hide();
	$("#M_list_detail_title").text("등록 페이지");
  });

  
  //table 한 행 클릭시 상세페이지에 값 반영되게 수정
  $("#PM_list_table tr").on("click", function(e){
    e.stopPropagation();
    var tr = $(this);
	var td = tr.children();
	
	pm_list_code_v = td.eq(0).text();
	var name = td.eq(1).text();
	var factory_name = td.eq(2).text();
	var location = td.eq(3).text();
  var machine_code = td.eq(4).text();
  console.log(pm_list_code_v);
	
	document.getElementById("input_machine_code").value = machine_code;
	document.getElementById("input_machine_name").value = name;
	document.getElementById("input_factory_name").value = factory_name;
	document.getElementById("input_location").value = location;

  $("#pmListReg").hide();
    $("#pmListDel").show();
    $('#pmListUp').show();
    $("#PM_list_detail_title").text("상세페이지");
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
	$('#MSel').show();
    $("#M_list_detail_title").text("상세페이지");
  })
  $('#MSel').on('click', function(){
	$('#exampleModal').modal('hide');
  });
  
  
  
  $("#pmListUp").on("click", function() {
		var pm_list = {
			pm_list_code : pm_list_code_v,
			machine_code : document.getElementById("input_machine_code").value,
			name : document.getElementById("input_machine_name").value,
			factory_name : document.getElementById("input_factory_name").value,
			location : document.getElementById("input_location").value
		}

		$.ajax({
			//요청 타입
			type : 'put',
			//요청 URL
			url : 'pmlist/update',
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

  $("#pmListDel").on("click", function() {

		$.ajax({
			//요청 타입
			type : 'delete',
			//요청 URL
			url : 'pmlist/delete',
			//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
			data : pm_list_code_v,
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
<!-- End custom js for this page -->
</body>
</html>
