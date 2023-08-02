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
	<!-- partial:partials/_navbar.html -->
	<%@ include file="/WEB-INF/views/partials/_navbar.html"%>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
		<!-- partial:partials/_sidebar.html -->
		<%@ include file="/WEB-INF/views/partials/_sidebar.html"%>
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
								<h4 class="card-title">생산기계목록</h4>
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
											<%-- <c:forEach items="${PMList}" var="PM">
												<tr>
													<td><c:out value="${PM.pm_list_code}" /></td>
													<td><c:out value="${PM.name}" /></td>
													<td><c:out value="${PM.factory_name}" /></td>
													<td><c:out value="${PM.location}" /></td>
													<td><c:out value="${PM.machine_code}" /></td>
												</tr>
											</c:forEach> --%>
											<tr>
												<td>생산요청코드</td>
												<td>요청날짜</td>
												<td>담당자</td>
												<td>품목코드</td>
												<td>생산요청수량</td>
												<td>생산수량</td>
												<td>불량품</td>
												<td><button type="button" id="select" class="btn-sm btn-gradient-primary mr-2">생산</button>
</td>
											</tr>
											<tr>
												<td>생산요청코드</td>
												<td>요청날짜</td>
												<td>담당자</td>
												<td>품목코드</td>
												<td>생산요청수량</td>
												<td><input type = "number" id = "product_amount" min = "1" max = "10000"></td>
												<td><input type = "number" id = "defective_amount" min = "1" max = "10000"></td>
												<td><button type="button" id="select" class="btn-sm btn-gradient-primary mr-2">생산</button></td>
											</tr>
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.html -->
			<%@ include file="/WEB-INF/views/partials/_footer.html"%>
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
				//TODO:희진이꺼보고 배낄것
      },
			error : function(xhr, status, er) {
				if (er) {
					error(er);
				}
			}
		});
	});
	</script>
	<!--
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
  $("#pm_list_card_body").on("click", function(e){
    e.stopPropagation();
    $("#pmListReg").show();
    $("#pmListDel").hide();
    $('#pmListUp').hide();
    $("#PM_list_detail_title").text("등록페이지");
  })

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
    $("#M_list_detail_title").text("상세페이지");
  })
  
  
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

</script>  -->
<!-- End custom js for this page -->
</body>
</html>
