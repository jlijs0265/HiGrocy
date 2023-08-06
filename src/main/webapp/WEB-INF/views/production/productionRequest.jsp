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
	<div class="modal fade" id="itemModal" tabindex="-1" aria-labelledby="exampleItemModal" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleItemModal">품목 선택</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
				<!-- 원자재 품목 가져오기 -->
				<div class="table-responsive" id="modalWarp">
            	
			</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	


	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@ include file="/WEB-INF/views/partials/_navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="/WEB-INF/views/partials/_sidebar.jsp"%>
			<!-- partial:partials/_footer.html -->
			<!-- main-panel  -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title p-3">생산요청서</h3>
					 </div>
					<div class="row h-100">
						<!-- 원부자재 목록 조회 부분 -->
						<div class="col-md-5 grid-margin stretch-card">
							<div class="card">
								<div class="card-body list-body">
									<h4 class="card-title pb-3">품목 선택</h4>
										<form class="forms-sample" id="itemForm">
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">품목코드</label>
					                        <input type="text" class="form-control" id="itemCode" placeholder="품목코드" readonly="readonly" data-bs-toggle="modal" data-bs-target="#itemModal" data-bs-whatever="@item">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputEmail1">품명</label>
					                        <input type="text" class="form-control" id="itemName" placeholder="품명" readonly="readonly">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputConfirmPassword1">수량</label>
					                        <input type="text" class="form-control" id="amount" placeholder="수량">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">단가</label>
					                        <input type="text" class="form-control" id="price" placeholder="단가" readonly="readonly">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">공급가액</label>
					                        <input type="text" class="form-control" id="supplyValue" placeholder="공급가액" readonly="readonly">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">부가세</label>
					                        <input type="text" class="form-control" id="vat" placeholder="부가세" readonly="readonly">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">합계금액</label>
					                        <input type="text" class="form-control" id="total" placeholder="합계금액" readonly="readonly">
					                      </div>
					                      <div class="position-relative">
					                      	<button type="button" class="btn btn-gradient-primary mr-2 position-absolute end-0 addBtn">추가</button>
					                      </div>
					                    </form>
									
								</div>
							</div>
						</div>
						<!-- 원부자재 목록 조회 부분 끝-->
						<!-- 원부자재 등록 부분 -->
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title" id="raw-title">생산요청서 작성</h4>
									<div class="table-responsive pt-3">
										<table class="table table-bordered ">
					                      <thead>
					                        <tr>
					                          <th class="col-3 table-active"> 생산요청코드</th>
					                          <th>생산요청코드</th>
					                        </tr>
					                      </thead>
					                      <tbody>
					                      
					                        <tr>
					                          <td class="table-active">생산요청일</td>
					                          <td id="today"></td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">창고</td>
					                          <td data-bs-toggle="modal" data-bs-target="#itemModal" data-bs-whatever="@storage" id="storageCode"></td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">사원</td>
					                          <td id="employee"><c:out value="${user}"></c:out></td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">총 합계금액</td>
					                          <td id="totalPlus">0</td>
					                        </tr>
					                      </tbody>
					                    </table>
					                    
					                    
									</div>
									
									<div class="pt-5">
										<h4 class="card-title" id="raw-title">품목 내역</h4>
										<div class="border border-secondary p-3 table-responsive" id="bomForm">
											<table class="table table-bordered">
						                      <thead>
						                        <tr>
						                          <th> 품목코드</th>
						                          <th> 품명</th>
						                          <th> 수량 </th>
						                          <th> 단가</th>
						                          <th> 공급가액</th>
						                          <th> 부가세 </th>
						                          <th> 합계금액</th>
						                        </tr>
						                      </thead>
						                      <tbody id="itemDataTbody">
						                        
						                      </tbody>
						                    </table>
					                      </div>
									</div>
									
									<div class="position-relative pt-5">
					                      	<button type="button" class="btn btn-gradient-primary mr-2 position-absolute end-0" id="registerBtn">등록</button>
				                      </div>
				                      
								</div>

							</div>
						</div>
						<!-- 원부자재 등록 부분 끝-->

					</div>
				</div>


				<%@ include file="/WEB-INF/views/partials/_footer.jsp"%>

			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script type="text/javascript">
	
		var today = new Date();
		var year = today.getFullYear();
		var month = ('0' + (today.getMonth() + 1)).slice(-2);
		var day = ('0' + today.getDate()).slice(-2);
		
		var dateString = year + '-' + month  + '-' + day;
		$('#today').text(dateString);

		console.log(dateString);
	
		const itemModal = document.getElementById('itemModal');
		itemModal.addEventListener('show.bs.modal', event => {
		  // Button that triggered the modal
		  const button = event.relatedTarget
		  // Extract info from data-bs-* attributes
		  const recipient = button.getAttribute('data-bs-whatever')
		  // If necessary, you could initiate an AJAX request here
		  // and then do the updating in a callback.
		  
		  // 품목 정보를 담을 변수
		  var items = "";
		  var storages = "";
		  
		  
		  if(recipient == '@item') {
			// 품목 정보를 가져올 ajax 통신
			  $.ajax({
				  type : 'get',
				  url : '/item',
				  contentType : "application/json; charset-utf-8",
				  success : function(result, status, xhr) {
					  console.log(result);
					  // 태그에 붙일 텍스트 만들기
					  items = '<table class="table table-bordered border-secondary rawTable"><thead> <tr><th>코드</th><th>품명</th></tr></thead><tbody class="rawbody">';
					  for(var i = 0; i < result.length; i++) {
						  items += '<tr class="rawitem" id="itemRaw"><td class="icode">'; 
			              items += result[i].product_code; 
			              items += '</td><td class="type">' ;
			              items += result[i].name;
			              items += '</td></tr>';	
					  }
					  items += '</tbody></table>';
					  $('#modalWarp').html(items);
				  },
				  error : function(xhr, status, er) {
					  cosnsoel.log(er);
				  }
			  });
			
		  } else if(recipient == '@storage') {
			// 창고 정보를 가져올 ajax 통신
			  $.ajax({
				  type : 'get',
				  url : '/storage/list',
				  contentType : "application/json; charset-utf-8",
				  success : function(result, status, xhr) {
					  console.log(result);
					  // 태그에 붙일 텍스트 만들기
					  storages = '<table class="table table-bordered border-secondary rawTable"><thead> <tr><th>창고코드</th><th>창고명</th><th>위치</th></tr></thead><tbody class="rawbody">';
					  for(var i = 0; i < result.length; i++) {
						  storages += '<tr class="rawitem" id="storageRaw"><td class="scode">'; 
						  storages += result[i].storage_code; 
						  storages += '</td><td class="sname">' ;
						  storages += result[i].name;
						  storages += '</td><td class="location">' ;
						  storages += result[i].location;
						  storages += '</td></tr>';
					  }
					  storages += '</tbody></table>';
					  $('#modalWarp').html(storages);
				  },
				  error : function(xhr, status, er) {
					  console.log(er);
				  }
			  });
		  } else {
			  console.log('error');
		  }
		  
		  
		 
		});
		
		$('#modalWarp').on('click', '#itemRaw' ,function() {
			console.log(this);
			code = $(this).find('.icode').text();
			$('#itemCode').val(code);
			$('#itemName').val($(this).find('.type').text());
			
			console.log(code);
			$.ajax({
				type : 'post',
				url : '/itemAmount',
				data : code,
				dataType : 'text',
				contentType : "application/json; charset-utf-8",
				success : function(result, status, xhr) {
					console.log(result);
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
			});
			
			$('#itemModal').modal('hide');
		});
		
		$('#modalWarp').on('click', '#storageRaw' ,function() {
			console.log(this);
			$('#storageCode').text($(this).find('.scode').text());
			$('#itemModal').modal('hide');
		});
		
		$('.addBtn').on('click', function() {
			// 추가 버튼 누르면 테이블에 데이터 추가됨
			let trData = '<tr class="prListTr"><td class="itemRawCode">'
			+ $('#itemCode').val()
			+'</td><td class="itemRawName">'
			+ $('#itemName').val()
			+ '</td><td class="itemRawAmount">'
			+ $('#amount').val()
			+ '</td><td class="itemRawPrice">'
			+ $('#price').val()
			+ '</td><td class="itemRawSValue">' 
			+ $('#supplyValue').val()
			+ '</td><td class="itemRawVat">'
			+ $('#vat').val()
			+ '</td><td class="itemRawTotal">' 
			+ $('#total').val()
			+ '</td></tr>';
			
			$('#itemDataTbody').append(trData);
			
			
			
			// 총 합계 금액 추가하기
			var num1 = Number($('#totalPlus').text());
			console.log(num1);
			var num2 = Number($('#total').val());
			console.log(num2);
			console.log(num1 + num2);
			$('#totalPlus').text(num1 + num2);
			
			$('#itemForm')[0].reset();
		});
		
		$('#amount').on('change', function() {
			
			// 품목코드와 수량 가져오기
			var itemCode = $('#itemCode').val();
			var amount = $('#amount').val();
			
			// 단가 구하기
			/* $.ajax({
				
			}); */
			
			$('#price').val(200);
			$('#supplyValue').val(amount*200);
			$('#vat').val( (amount*200) * 0.1 );
			$('#total').val( Number($('#supplyValue').val())+ Number($('#vat').val()) );
		});
		
		$('#registerBtn').on('click', function() {
			
			var prRecord = {
					request_date : $('#today').text(),
					request_manager : $('#employee').text()
			}
			
			
			var prRecordList = [];
			
			// 같은 name을 가진 태그들 선택
    		const codeElements = document.querySelectorAll('.itemRawCode');
    		const amountElements = document.querySelectorAll('.itemRawAmount');
			
			for(var i = 0; i < codeElements.length; i++) {
				var pr = {
					item_code : codeElements[i].childNodes[0].nodeValue,
					amount : amountElements[i].childNodes[0].nodeValue
				}
				prRecordList.push(pr);
			}
			
			console.log(prRecordList);
			
			var totalList = {
					prRecord : JSON.stringify(prRecord),
					prRecordList : JSON.stringify(prRecordList)
			};
			
			var totalJson = JSON.stringify(totalList);
			console.log(totalJson);
			$.ajax({
    			type : 'post',
    			url : '/pr/register',
    			data : {totalList : totalJson},
    			dataType : 'json',
    			async : false,
    			success : function(result, status, xhr) {
    				console.log(result);
    				location.href = '/production/requestList';
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
    		});
			
			
			
			
		});
		
	</script>
	
</body>
</html>