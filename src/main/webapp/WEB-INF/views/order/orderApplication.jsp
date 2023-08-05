<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- jquery -->

<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
</head>

<body>

	<!-- Modal -->
	<div class="modal fade" id="itemModal" tabindex="-1"
		aria-labelledby="exampleItemModal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
						title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- 원자재 품목 가져오기 -->
					<div class="table-responsive">
						<table class="table table-bordered border-secondary rawTable">
							<thead>
								<tr>
									<th>코드</th>
									<th>자재분류</th>
									<th>자재명</th>
									<th>단위</th>
									<th>원산지</th>
								</tr>
							</thead>
							<tbody class="rawbody">
								<c:forEach items="${rawList}" var="rawMaterial">
									<tr class="rawitem">
										<td class="rcode"><c:out
												value="${rawMaterial.raw_materials_code}" /></td>
										<td class="rtype"><c:out value="${rawMaterial.type}" /></td>
										<td class="rname"><c:out value="${rawMaterial.name}" /></td>
										<td class="runit"><c:out value="${rawMaterial.unit}" /></td>
										<td class="rorigin"><c:out value="${rawMaterial.origin}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="accountModal" tabindex="-1"
		aria-labelledby="exampleItemModal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
						title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- 거래처 가져오기 -->
					<div class="col-md-6 stretch-card">

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
										<tr class="accRow">
											<td class="acode"><c:out value="${AC.account_code}" /></td>
											<td class="aname"><c:out value="${AC.name}" /></td>
											<td class="aphone"><c:out value="${AC.phone_number}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-md-6 stretch-card">
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
									<button type="button" id="select"
										class="btn-sm btn-gradient-primary mr-2">입력</button>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@ include file="../partials/_navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="../partials/_sidebar.jsp"%>
			<!-- partial:partials/_footer.html -->
			<!-- main-panel  -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title p-3">발주요청서</h3>
					</div>
					<div class="row h-100">
						<!-- 원부자재 목록 조회 부분 -->
						<div class="col-md-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body list-body" id="js_card">
									<h4 class="card-title pb-3">품목 선택</h4>
									<form class="forms-sample" id="itemForm">
										<div class="form-group">
											<label for="exampleInputUsername1">품목코드</label> <input
												type="text" class="form-control" id="itemCode"
												placeholder="품목코드" readonly="readonly"
												data-bs-toggle="modal" data-bs-target="#itemModal"
												data-bs-whatever="@item">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">품명</label> <input type="text"
												class="form-control" id="itemName" placeholder="품명"
												readonly="readonly">
										</div>

										<div class="form-group">
											<label for="amount">수량</label> <input type="text"
												class="form-control" id="amount" placeholder="수량">
										</div>
										<div class="form-group">
											<label for="price">단가</label> <input type="text"
												class="form-control" id="price" placeholder="단가">
										</div>
										<div class="form-group">
											<label for="sum">공급가액</label> <input type="text"
												class="form-control" id="sum" placeholder="공급가액"
												readonly="readonly">
										</div>
										<div class="form-group">
											<label for="tax">부가세</label> <input type="text"
												class="form-control" id="tax" placeholder="부가세"
												readonly="readonly">
										</div>
										<div class="form-group">
											<label for="total">합계금액</label> <input type="text"
												class="form-control" id="total" placeholder="합계금액"
												readonly="readonly">
										</div>
										<div class="position-relative">
											<button type="button"
												class="btn btn-gradient-primary mr-2 position-absolute end-0" id="addBtn">추가</button>
										</div>
									</form>

								</div>
							</div>
						</div>
						<!-- 원부자재 목록 조회 부분 끝-->


						<!-- 원부자재 등록 부분 -->
						<div class="col-md-8 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title" id="raw-title">발주요청서 작성</h4>
									<div class="table-responsive pt-3">
										<table class="table table-bordered ">

											<tbody>
												<tr>
													<td class="table-active">거래처코드</td>
													<td><input id="accountCode" readonly="readonly"></input></td>
												</tr>
												<tr>
													<td class="table-active">거래처</td>
													<td><input data-bs-toggle="modal"
														data-bs-target="#accountModal" data-bs-whatever="@account"
														id="accountname" readonly="readonly"></input></td>
												</tr>
												<!--TODO: 로그인했을시 로그인한 유저이름으로 수정
												<tr>
													<td class="table-active">사원</td>
													<td>로그인한 유저이름</td>
												</tr>
												-->
											</tbody>
										</table>
									</div>

									<div class="pt-5">
										<h4 class="card-title" id="raw-title">품목 내역</h4>
										<div class="border border-secondary p-3 table-responsive"
											id="bomForm">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>품목코드</th>
														<th>품명</th>
														<th>수량</th>
														<th>단가</th>
														<th>공급가액</th>
														<th>부가세</th>
														<th>합계금액</th>
													</tr>
												</thead>
												<tbody id="itemDataTbody">

												</tbody>
											</table>
										</div>
									</div>

									<div class="position-relative pt-5">
										<button type="button"
											class="btn btn-gradient-primary mr-2 position-absolute end-0" id="register">작성</button>
									</div>
								</div>

							</div>
						</div>
						<!-- 원부자재 등록 부분 끝-->

					</div>
				</div>


				<%@ include file="../partials/_footer.jsp"%>

			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		// 품목 정보를 담을 변수
		var items = "";
		var storages = "";

		//품목 모달의 row 클릭시.
		$('#itemModal').on('click', '.rawitem', function() {
			console.log(this);
			$('#itemCode').val($(this).find('.rcode').text());
			$('#itemName').val($(this).find('.rname').text());
			$('#itemModal').modal('hide');
		})

		//거래처 모달의 row 클릭시
		$('#accountModal')
				.on(
						'click',
						'.accRow',
						function() {
							console.log(this);
							$('#input_account_code').val(
									$(this).find('.acode').text());
							$('#input_account_name').val(
									$(this).find('.aname').text());
							$('#input_account_phone_numbe').val(
									$(this).find('.aphone').text());
							$('#accountCode')
									.val($(this).find('.acode').text());
							$('#accountname')
									.val($(this).find('.aname').text());

						});
		//모달창내에 선택버튼을 클릭하면
		$('#select').on('click', function() {
			$('#accountModal').modal('hide');
		});

		$('#addBtn').on('click', function(event) {
			event.preventDefault();            // 추가 버튼 누르면 테이블에 데이터 추가됨
            let trData = '<tr><td class="itemRawCode">'
            + $('#itemCode').val()
            +'</td><td class="itemRawName">'
            + $('#itemName').val()
            + '</td><td class="itemRawAmount">'
            + $('#amount').val()
            + '</td><td class="itemRawPrice">'
            + $('#price').val()
            + '</td><td class="itemSum">' 
            + $('#sum').val()
            + '</td><td class="itemTax">'
            + $('#tax').val()
            + '</td><td class="itemTotal">' 
            + $('#total').val()
            + '</td></tr>';

            $('#itemDataTbody').append(trData);

                        $('#itemForm')[0].reset();
        });

        $('#price').on('change', function() {

            // 가격과 수량 가져오기
            var price = Number($('#price').val());
            var amount = Number($('#amount').val());
			var sum = amount * price;
			var tax = sum/10;
			$('#sum').val(sum);
			$('#tax').val(tax);
			$('#total').val(sum+tax);
        });

		//거래처 등록 버튼 눌렀을때
	$("#accListReg").on("click", function() {
		var accList = {
			input_account_code : document.getElementById("input_account_code").value,
			input_account_name : document.getElementById("input_account_name").value,
			input_account_phone_numbe : document.getElementById("input_account_phone_numbe").value,
		}

		$.ajax({
			//요청 타입
			type : 'post',
			//요청 URL
			url : '/account/resister',
			//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
			data : JSON.stringify(accList),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				$("#AC_list_detail")[0].reset();
				$('#accountModal').modal('hide');

      },
			error : function(xhr, status, er) {
				if (er) {
					error(er);
				}
			}
		});
	});

		//거래처 수정 버튼 눌렀을때
		$("#accListUp").on("click", function() {
			var accList = {
				input_account_code : document.getElementById("input_account_code").value,
				input_account_name : document.getElementById("input_account_name").value,
				input_account_phone_numbe : document.getElementById("input_account_phone_numbe").value,
			}
	
			$.ajax({
				//요청 타입
				type : 'put',
				//요청 URL
				url : '/account/update',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(accList),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$("#AC_list_detail")[0].reset();
					//새로고침이상하면 지울것
					$('#accountModal').modal('hide');
	
		  },
				error : function(xhr, status, er) {
					if (er) {
						error(er);
					}
				}
			});
		});

		//거래처 삭제 버튼 눌렀을때
		$("#accListUp").on("click", function() {
			const input_account_code = document.getElementById("input_account_code").value
			$.ajax({
				//요청 타입
				type : 'delete',
				//요청 URL
				url : '/account/delete',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(Number(input_account_code)),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$("#AC_list_detail")[0].reset();
					//새로고침이상하면 지울것
					$('#accountModal').modal('hide');
	
		  },
				error : function(xhr, status, er) {
					if (er) {
						error(er);
					}
				}
			});
		});

		//작성 버튼 눌렀을때
	$("#register").on("click", function() {
		const itmeRowElements = document.querySelectorAll('#itemDataTbody tr');
		var orderRecord = {
			order_code : 0,
			account_code : document.getElementById("input_account_code").value,
			order_date : '',
			order_manager : '송희문 사원',
		}

		itemList = [];
    		
    	for(var i = 0; i < itmeRowElements.length; i++) {
    		var orderList = {
    			order_code : 0,
				item_code : itmeRowElements[i].getElementsByClassName("itemRawCode"),
				account_code : document.getElementById("input_account_code").value,
				price : itmeRowElements[i].getElementsByClassName("itemRawPrice"),
    			amount : itmeRowElements[i].getElementsByClassName("itemRawAmount")
    			}
    			itemList.push(orderList);
    		}
    		console.log(itemList);
		var totalList = {
			orderList : orderList,
			orderRecord : orderRecord
		}
		console.log(totalList);

		//$.ajax({
			//요청 타입
		//	type : 'post',
			//요청 URL
		//	url : '/order/resister',
			//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
		//	data : JSON.stringify(totalList),
		//	contentType : "application/json; charset=utf-8",
		//	success : function(result, status, xhr) {
		//$(location).attr('href','/order');

     // },
		//	error : function(xhr, status, er) {
		//		if (er) {
		//			error(er);
		//		}
		//	}
		//});
	});

	
	</script>
</body>
</html>