<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
  </head>
  <body>
  <div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
				<!-- 기계목록 가져오기 -->
				<div class="table-responsive">
            	<table class="table table-bordered border-secondary rawTable">
                     <thead> 
                       <tr>
                         <th>기계코드</th>
                         <th>기계종류 </th>
                         <th>온실가스배출량</th>
                         <th>에너지소모량</th>
                       </tr>
                     </thead>
                     <tbody class="rawbody">
						<c:forEach items="${m_Lists}" var="m_list">
		              		<tr class="m_row">
			                   <td class="machine_code"> <c:out value="${m_list.machine_code}" /></td>
			                   <td class="type"> <c:out value="${m_list.type}" /></td>
			                   <td class="gas_emissions"><c:out value="${m_list.gas_emissions}" /></td>
			                   <td class="energy_usage"> <c:out value="${m_list.energy_usage}" /></td>
		                 </tr>
		              	</c:forEach>
              	</tbody>
                  </table>
			</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>
  
	
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <%@ include file="../partials/_navbar.html" %>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <%@ include file="../partials/_sidebar.html" %>          <!-- partial:partials/_footer.html -->
				<!-- main-panel  -->
		       <div class="main-panel">
		       		
		       		<div class="content-wrapper">
		       			<div class="row h-100">
		       				<!-- 생산품 목록 조회 부분 -->
		       				<div class="col-md-6 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body list-body">
					                    <h4 class="card-title">생산품 목록</h4>
					                    
					                    <form class="d-flex align-items-center" action="#">
							              <div class="input-group">
						                    <div class="p-3">검색</div>
							                <input type="text" class="form-control bg-transparent border-1" placeholder="생산품명 검색">
							                <div class="input-group-text">
							                  <i class="input-group mdi mdi-magnify"></i>
							                </div>
							              </div>
							            </form>
							            <div class="table-responsive h-100 tableWarp">
							            	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
						                          <th class="">생산품 코드</th>
						                          <th> 생산품명</th>
						                        </tr>
						                      </thead>
						                      <tbody>
						                      
						                      <c:forEach items="${productList}" var="product">
						                      	<tr class="rawProduct">
								                      	<td class="pcode"><c:out value="${product.product_code}" /></td>
								                      	<td class="pname"><c:out value="${product.name}"></c:out></td>
							                      </tr>
						                      </c:forEach>
						                      
						                      </tbody>
						                    </table>
							            </div>
					                    	
					                  </div>
			       				</div>
			       			</div>
			       			<!-- 생산품 목록 조회 부분 끝-->
			       			<!-- 생산품 등록 부분 -->
			       			<div class="col-md-6 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body">
			       						<h4 class="card-title" id="raw-title">생산 프로세스 등록</h4>
			       						<form class="forms-sample p-2" action="/product" method="post" id="rawForm">
					                      <div class="form-group">
					                        <label>생산품 코드</label>
					                        <input type="text" class="form-control" id="product_code" readonly="readonly" placeholder="생산품 코드">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleSelectGender">생산품명</label>
					                        <input type="text" class="form-control" id="product_name" name="name" placeholder="생산품명">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">프로세스 등록</label>
					                        <div class="d-flex">
					                        	<input type="text" class="form-control bg-light" id="raw_material_name" readonly="readonly">
						                        <button class="border-0 inputPlusBtn" type="button">
						                        	<i class="input-group mdi mdi-plus"></i>
						                        </button>
					                        </div>
					                      </div>
					                      <!-- BOM 등록 작성해줄 input 태그가 계속 추가될 부분 -->
					                      <div class="border border-secondary p-3" id="bomForm">
					                     </div>
					                      
					                      
					                    </form>
					                      <button class="btn btn-gradient-primary mr-2" id="registerBtn">등록</button>
					                      <button class="btn btn-gradient-success mr-2" id="updateBtn">수정</button>
					                      <button class="btn btn-gradient-danger mr-2" id="deleteBtn">삭제</button>
			       					</div>
			       					 
			       				</div>
			       			</div>
		       			<!-- 원부자재 등록 부분 끝-->
		       			</div>
		       		</div>
		       
		       
          <%@ include file="../partials/_footer.html" %>
          
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- js 추가 -->
    <script src="/resources/assets/vendors/chart.js/Chart.min.js"></script>
	<script src="/resources/assets/js/jquery.cookie.js"
	    type="text/javascript"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/resources/assets/js/off-canvas.js"></script>
	<script src="/resources/assets/js/hoverable-collapse.js"></script>
	<script src="/resources/assets/js/misc.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script type="text/javascript">
    	document.getElementById('updateBtn').style.display = 'none';
    	document.getElementById('deleteBtn').style.display = 'none';
    	var raw_code_input = 0;
    	var raw_product = 0;
    	var order = 1;
    	
    	$('#registerBtn').on('click', function() {
			var pm_list = [];
			const codeElements = document.querySelectorAll('input[name="machine_code"]');
			const orderElements = document.querySelectorAll('input[name="process_order"]');
			const timeElements = document.querySelectorAll('input[name="process_time"]');

  			bomList = [];
    		
    		for(var i = 0; i < codeElements.length; i++) {
    			bom = {
					machine_code : codeElements[i].value,
					process_order : orderElements[i].value,
					process_time : timeElements[i].value
    			}
    			bomList.push(bom);
    		}
			console.log(bomList);
			// 	{
			// 	pm_list_code : pm_list_code_v,
			// 	machine_code : document.getElementById("input_machine_code").value,
			// 	name : document.getElementById("input_machine_name").value,
			// 	factory_name : document.getElementById("input_factory_name").value,
			// 	location : document.getElementById("input_location").value
			// }

			// $.ajax({
			// 	//요청 타입
			// 	type : 'post',
			// 	//요청 URL
			// 	url : 'pmlist/register',
			// 	//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
			// 	data : JSON.stringify(pm_list),
			// 	contentType : "application/json; charset=utf-8",
			// 	success : function(result, status, xhr) {
			// 		$("#pm_list_detail")[0].reset();
			// 		}
			// 	});
			// $(location).attr('href','/pm');
			});
    	
    	$("#bomForm").on('click', ".raw_code" ,  function(e) {
    		raw_code_input = $(this);
    	})
    	
    	$('.inputPlusBtn').on('click', function() {
    		$('#bomForm').append('<div class="form-group row"><label class="col-sm-3 col-form-label">기계코드</label><div class="col-sm-9"><input type="text" class="form-control raw_code" readonly="readonly" value="" name="machine_code" data-bs-toggle="modal" data-bs-target="#exampleModal"></div></div>'+
    				 				'<div class="form-group row"><label class="col-sm-3 col-form-label">순서</label><div class="col-sm-9"><input type="text" class="form-control" name="process_order" value="'+order+'" placeholder="순서"></div></div>'+
    				 				'<div class="form-group row"><label class="col-sm-3 col-form-label">시간</label><div class="col-sm-9"><input type="text" class="form-control" name="process_time" value="" placeholder="시간">');    	
    		order++;
			document.getElementById("registerBtn").style.display = "";
    	});
    	
    	
    	$('.tableWarp').on('click', function() {
    		document.getElementById("updateBtn").style.display = "none";
        	document.getElementById("deleteBtn").style.display = "none";
        	document.getElementById("registerBtn").style.display = "";
        	$("#rawForm")[0].reset();
        	$('#bomForm').empty();
    	});
    	
    	$('.rawProduct').on('click', function(e) {
    		e.stopPropagation();
    		raw_product = $(this);
    		/* 버튼 가리기 */
    		document.getElementById('registerBtn').style.display = 'none';
    		document.getElementById('updateBtn').style.display = '';
    		document.getElementById('deleteBtn').style.display = '';
    		
    		/* 테이블의 내용을 옆의 Form 에 반영하기 */
			var product_code = $(this).find('.pcode').text();

    		$('#product_code').val(product_code);
    		$('#product_name').val($(this).find('.pname').text());
    		$('#bomForm').empty();
			
			//TODO: ajax 통신으로 Product_code에 해당하는 Processs_list 가져오기
			//TODO: order 마지막 order로 초기화 해 놓기.
		});

    	// 	$.ajax({
    	// 		type : 'GET',
    	// 		url : 'process/getList',
		// 		data: 19,
    	// 		contentType : "application/json; charset-utf-8",
    	// 		success : function(result, status, xhr) {
    	// 			for(var i = 0; i < result.length; i++) {
    	// 				$('#bomForm').append('<div class="form-group row"><label class="col-sm-3 col-form-label">기계코드</label><div class="col-sm-9"><input type="text" class="form-control raw_code" readonly="readonly" value="'+ result[i].machine_code + '" name="machine_code" data-bs-toggle="modal" data-bs-target="#exampleModal"></div></div>'+
		// 				'<div class="form-group row"><label class="col-sm-3 col-form-label">순서</label><div class="col-sm-9"><input type="text" class="form-control" name="process_order" value="'+ result[i].process_order +'" placeholder="수량"></div></div>'+
		// 				'<div class="form-group row"><label class="col-sm-3 col-form-label">순서</label><div class="col-sm-9"><input type="text" class="form-control" name="process_order" value="'+ result[i].process_order +'" placeholder="수량"></div></div>'+
		// 				'<div class="form-group row"><label class="col-sm-3 col-form-label">시간</label><div class="col-sm-9"><input type="text" class="form-control" name="process_time" value="'+ result[i].process_time +'" placeholder="수량">');
    	// 			}
    				
    	// 		},
    	// 		error : function(xhr, status, er) {
    	// 			console.log(er);
    	// 		}
    	// 	});
    		
    	// });
    	
    	$('#exampleModal').on('shown.bs.modal', function () {
    		  // Bind click event to elements inside the modal
    		  $('.rawbody').on('click',  '.m_row', function () {
    			  raw_code_input.val($(this).find('.machine_code').text());
    			  $('#exampleModal').modal('hide');
    		      
    		  });
    		});
    	
    	// $('#updateBtn').on('click', function() {
    	// 	product = {
    	// 		product_code : $('#product_code').val(),
    	// 		name : $('#product_name').val(),
    	// 		item_code : $('#product_code').val(),
    	// 	}
    		
    	// 	$.ajax({
    	// 		type : 'PUT',
    	// 		url : '/product',
    	// 		data : JSON.stringify(product),
    	// 		async : false,
    	// 		contentType : "application/json; charset-utf-8",
    	// 		success : function(result, status, xhr) {
    	// 			console.log(raw_product);
    	// 			raw_product.find('.pname').text(product.name);
    	// 		},
    	// 		error : function(xhr, status, er) {
    	// 			console.log(er);
    	// 		}
    	// 	});
    		
    	// 	// 같은 name을 가진 태그들 선택
    	// 	const codeElements = document.querySelectorAll('input[name="raw_material_code"]');
    	// 	const amountElements = document.querySelectorAll('input[name="amount"]');
    		
  		// 	bomList = [];
    		
    	// 	for(var i = 0; i < codeElements.length; i++) {
    	// 		bom = {
    	// 				raw_materials_code : codeElements[i].value,
    	// 				amount : amountElements[i].value
    	// 		}
    	// 		bomList.push(bom);
    	// 	}
    	// 	console.log(bomList);
    		
    	// 	/* bom 삭제 */
    		
    	// 	$.ajax({
    	// 		type : 'DELETE',
    	// 		url : '/bom/' + product.product_code,
    	// 		contentType : "application/json; charset-utf-8",
    	// 		async : false,
    	// 		success : function(result, status, xhr) {
    	// 			console.log(result);
    	// 		},
    	// 		error : function(xhr, status, er) {
    	// 			console.log(er);
    	// 		}
    	// 	});
    		
    	// 	var bomJson = JSON.stringify(bomList);
    		
    	// 	$.ajax({
    	// 		type : 'post',
    	// 		url : '/bom/'+ product.product_code,
    	// 		data : {bomList : bomJson},
    	// 		dataType : 'json',
    	// 		async : false,
    	// 		success : function(result, status, xhr) {
    	// 			console.log(result);
    	// 		},
    	// 		error : function(xhr, status, er) {
    	// 			console.log(er);
    	// 		}
    	// 	});
    		
    	// });
    	
    	
    	
    	// $('#deleteBtn').on('click', function() {
    		
    	// 	$.ajax({
    	// 		type : 'DELETE',
    	// 		url : '/product/' + $('#product_code').val(),
    	// 		contentType : "application/json; charset-utf-8",
    	// 		success : function(result, status, xhr) {
    	// 			raw_product.remove();
    	// 			$("#rawForm")[0].reset();
    	// 		},
    	// 		error : function(xhr, status, er) {
    	// 			console.log(er);
    	// 		}
    	// 	});
    		
    	// });
    </script>
  </body>
</html>