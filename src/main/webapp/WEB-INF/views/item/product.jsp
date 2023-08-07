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
    <meta id="_csrf" name="_csrf" th:content="${_csrf.token}" />
	<meta id="_csrf_header" name="_csrf_header" th:content="${_csrf.headerName}" />
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
				<!-- 원자재 품목 가져오기 -->
				<div class="table-responsive">
            	<table class="table table-bordered border-secondary rawTable">
                     <thead> 
                       <tr>
                         <th>코드</th>
                         <th> 자재분류 </th>
                         <th> 자재명 </th>
                         <th> 단위</th>
                         <th>원산지</th>
                       </tr>
                     </thead>
                     <tbody class="rawbody">
						<c:forEach items="${rawList}" var="rawMaterial">
		              		<tr class="rawitem">
			                   <td class="rcode"> <c:out value="${rawMaterial.raw_materials_code}" /></td>
			                   <td class="rtype"> <c:out value="${rawMaterial.type}" /></td>
			                   <td class="rname"><c:out value="${rawMaterial.name}" /></td>
			                   <td class="runit"> <c:out value="${rawMaterial.unit}" /></td>
			                   <td class="rorigin"><c:out value="${rawMaterial.origin}" /></td>
		                 </tr>
		              	</c:forEach>
              	</tbody>
                  </table>
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
      <%@ include file="../partials/_navbar.jsp" %>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <%@ include file="../partials/_sidebar.jsp" %>          <!-- partial:partials/_footer.html -->
				<!-- main-panel  -->
		       <div class="main-panel">

		       		<div class="content-wrapper">
		       			<div class="row h-100">
		       				<!-- 원부자재 목록 조회 부분 -->
		       				<div class="col-md-4 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body list-body">
					                    <h4 class="card-title">생산품 목록</h4>
					                    
					                    <form class="d-flex align-items-center" action="#">
					                    	
							              <div class="input-group">
						                    <div class="p-3">검색</div>
							                <input type="text" class="form-control bg-transparent border-1" placeholder="원부자재 검색">
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
			       			<!-- 원부자재 목록 조회 부분 끝-->
			       			<!-- 원부자재 등록 부분 -->
			       			<div class="col-md-8 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body">
			       						<h4 class="card-title" id="raw-title">생산품 등록</h4>
			       						<form class="forms-sample p-2" action="/product" method="post" id="rawForm">
			       							<input type="hidden" name="${_csrf.parameterName}", value="${_csrf.token}">
					                      <div class="form-group">
					                        <label>생산품 코드</label>
					                        <input type="text" class="form-control" id="product_code" readonly="readonly" placeholder="생산품 코드">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleSelectGender">생산품명</label>
					                        <input type="text" class="form-control" id="product_name" name="name" placeholder="생산품명">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">BOM 등록</label>
					                        <div class="d-flex">
					                        	<input type="text" class="form-control bg-light" id="raw_material_name" readonly="readonly">
						                        <button class="border-0 inputPlusBtn" type="button">
						                        	<i class="input-group mdi mdi-plus"></i>
						                        </button>
					                        </div>
					                      </div>
					                      <!-- BOM 등록 작성해줄 input 태그가 계속 추가될 부분 -->
					                      <div class="border border-secondary p-3" id="bomForm">
					                      	<!-- <div class="form-group row">
						                        <label class="col-sm-3 col-form-label">원자재코드</label>
						                        <div class="col-sm-9">
						                        	<input type="text" class="form-control" name="raw_material_code" id="" placeholder="원자재 코드">
						                        </div>
						                      </div>
						                      <div class="form-group row">
						                        <label class="col-sm-3 col-form-label">수량</label>
						                        <div class="col-sm-9">
						                        	<input type="text" class="form-control" name="amount" id="" placeholder="수량">
						                        </div>
						                      </div> -->
					                      </div>
					                      
					                      
					                    </form>
					                      <button class="btn btn-gradient-primary mr-2" id="registerBtn">등록</button>
					                      <button class="btn btn-gradient-success" id="updateBtn">수정</button>
					                      <button class="btn btn-gradient-danger" id="deleteBtn">삭제</button>
			       					</div>
			       					 
			       				</div>
			       			</div>
		       			<!-- 원부자재 등록 부분 끝-->
		       			</div>
		       		</div>
		       
		       
          <%@ include file="../partials/_footer.jsp" %>
          
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
    	
    	var token = $("meta[name='_csrf']").attr("th:content");
		var header = $("meta[name='_csrf_header']").attr("th:content");
    	
    	$('#registerBtn').on('click', function() {
    		$('#rawForm').submit();
    	});
    	
    	$("#bomForm").on('click', ".raw_code" ,  function(e) {
    		raw_code_input = $(this);
    	})
    	
    	$('.inputPlusBtn').on('click', function() {
    		$('#bomForm').append('<div class="warpBomForm"><div class="form-group row"><label class="col-sm-3 col-form-label">원자재코드</label><div class="col-sm-9"><input type="text" class="form-control raw_code" readonly="readonly" placeholder="원자재 코드" name="raw_material_code" data-bs-toggle="modal" data-bs-target="#exampleModal"></div></div><div class="form-group row"><label class="col-sm-3 col-form-label">수량</label><div class="col-sm-9"><input type="text" class="form-control" name="amount" placeholder="수량"></div></div><div class="d-flex justify-content-end pb-2"><button type="button" class="btn btn-gradient-danger inputDeleteBtn">삭제</button></div></div>');
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
    		$('#product_code').val($(this).find('.pcode').text());
    		$('#product_name').val($(this).find('.pname').text());
    		$('#bomForm').empty();
    		
    		code = $(this).find('.pcode').text();
    		$.ajax({
    			type : 'GET',
    			url : '/bom/' + code,
    			contentType : "application/json; charset-utf-8",
    			success : function(result, status, xhr) {
    				for(var i = 0; i < result.length; i++) {
    					$('#bomForm').append('<div class="form-group row"><label class="col-sm-3 col-form-label">원자재코드</label><div class="col-sm-9"><input type="text" class="form-control raw_code" readonly="readonly" value="'+ result[i].raw_materials_code + '" name="raw_material_code" data-bs-toggle="modal" data-bs-target="#exampleModal"></div></div><div class="form-group row"><label class="col-sm-3 col-form-label">수량</label><div class="col-sm-9"><input type="text" class="form-control" name="amount" value="'+ result[i].amount +'" placeholder="수량"></div></div>');
    				}
    				
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
    		})
    		
    	});
    	
    	$('#exampleModal').on('shown.bs.modal', function () {
    		  // Bind click event to elements inside the modal
    		  $('.rawbody').on('click',  '.rawitem', function () {
    			  raw_code_input.val($(this).find('.rcode').text());
    			  $('#exampleModal').modal('hide');
    		      
    		  });
    		});
    	
    	$('#updateBtn').on('click', function() {
    		product = {
    			product_code : $('#product_code').val(),
    			name : $('#product_name').val(),
    			item_code : $('#product_code').val(),
    		}
    		
    		$.ajax({
    			type : 'PUT',
    			url : '/product',
    			data : JSON.stringify(product),
    			async : false,
    			contentType : "application/json; charset-utf-8",
    			beforeSend : function(xhr) {
			        xhr.setRequestHeader(header, token);
			    },
    			success : function(result, status, xhr) {
    				console.log(raw_product);
    				raw_product.find('.pname').text(product.name);
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
    		});
    		
    		// 같은 name을 가진 태그들 선택
    		const codeElements = document.querySelectorAll('input[name="raw_material_code"]');
    		const amountElements = document.querySelectorAll('input[name="amount"]');	
    		
  			bomList = [];
    		
    		for(var i = 0; i < codeElements.length; i++) {
    			bom = {
    					raw_materials_code : codeElements[i].value,
    					amount : amountElements[i].value
    			}
    			bomList.push(bom);
    		}
    		console.log(bomList);
    		
    		/* bom 삭제 */
    		
    		$.ajax({
    			type : 'DELETE',
    			url : '/bom/' + product.product_code,
    			contentType : "application/json; charset-utf-8",
    			async : false,
    			beforeSend : function(xhr) {
			        xhr.setRequestHeader(header, token);
			    },
    			success : function(result, status, xhr) {
    				console.log(result);
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
    		});
    		
    		var bomJson = JSON.stringify(bomList);
    		
    		console.log(bomJson);
    		
    		$.ajax({
    			type : 'post',
    			url : '/bom/'+ product.product_code,
    			data : {bomList : bomJson},
    			dataType : 'json',
    			async : false,
    			beforeSend : function(xhr) {
			        xhr.setRequestHeader(header, token);
			    },
    			success : function(result, status, xhr) {
    				console.log(result);
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
    		});
    		
    	});
    	
    	
    	
    	$('#deleteBtn').on('click', function() {
    		
    		$.ajax({
    			type : 'DELETE',
    			url : '/product/' + $('#product_code').val(),
    			contentType : "application/json; charset-utf-8",
    			beforeSend : function(xhr) {
			        xhr.setRequestHeader(header, token);
			    },
    			success : function(result, status, xhr) {
    				raw_product.remove();
    				$("#rawForm")[0].reset();
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
    		});
    		
    	});
    	
    	$('#bomForm').on('click', '.inputDeleteBtn', function() {
    		$(this).closest('.warpBomForm').remove();
    	})
    	
    </script>
  </body>
</html>