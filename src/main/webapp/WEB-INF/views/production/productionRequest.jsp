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
		<%@ include file="../partials/_navbar.html"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="../partials/_sidebar.html"%>
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
										<form class="forms-sample">
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
					                        <input type="text" class="form-control" id="" placeholder="공급가액" readonly="readonly">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">부가세</label>
					                        <input type="text" class="form-control" id="" placeholder="부가세" readonly="readonly">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">합계금액</label>
					                        <input type="text" class="form-control" id="" placeholder="합계금액" readonly="readonly">
					                      </div>
					                      <div class="position-relative">
					                      	<button type="submit" class="btn btn-gradient-primary mr-2 position-absolute end-0">추가</button>
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
					                          <td>자동 반영</td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">창고</td>
					                          <td data-bs-toggle="modal" data-bs-target="#itemModal" data-bs-whatever="@storage" id="storageCode"></td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">사원</td>
					                          <td>자동반영</td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">총 합계금액</td>
					                          <td>자동반영 0</td>
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
						                      <tbody>
						                        <tr>
						                          <td> 1 </td>
						                          <td> Herman Beck </td>
						                          <td>ㅁㅁ</td>
						                          <td>ㅁㅁ</td>
						                          <td>ㅁㅁ</td>
						                          <td>ㅁㅁ</td>
						                          <td>ㅁㅁ</td>
						                        </tr>
						                      </tbody>
						                    </table>
					                      </div>
									</div>
									
									<div class="position-relative pt-5">
					                      	<button type="submit" class="btn btn-gradient-primary mr-2 position-absolute end-0">추가</button>
				                      </div>
								</div>

							</div>
						</div>
						<!-- 원부자재 등록 부분 끝-->

					</div>
				</div>


				<%@ include file="../partials/_footer.html"%>

			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script type="text/javascript">
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
			
			$.ajax({
				type : 'get',
				url : '/itemAmount',
				data : JSON.stringify({"item_code" : code}),
				contentType : "application/json; charset-utf-8",
				success : function(result, status, xhr) {
					console.log(result);
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
			});
			
			$('#itemModal').modal('hide');
		})
		
		$('#modalWarp').on('click', '#storageRaw' ,function() {
			console.log(this);
			$('#storageCode').text($(this).find('.scode').text());
			$('#itemModal').modal('hide');
		})
		
	</script>
	
</body>
</html>