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
      <%@ include file="../partials/_navbar.jsp" %>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <%@ include file="../partials/_sidebar.jsp" %>          <!-- partial:partials/_footer.html -->
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
    
<!--     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> -->
    <script type="text/javascript">

    	document.getElementById('updateBtn').style.display = 'none';
    	document.getElementById('deleteBtn').style.display = 'none';
    	var raw_code_input = 0;
    	var raw_product = 0;
    	var order = 1;
    	
		//등록 버튼 눌렀을때
    	$('#registerBtn').on('click', function() {
			var product_code = $('#product_code').val();
			console.log(product_code);
			var pm_list = [];
			const codeElements = document.querySelectorAll('input[name="machine_code"]');
			const orderElements = document.querySelectorAll('input[name="process_order"]');
			const timeElements = document.querySelectorAll('input[name="process_time"]');
			const ppcElements = document.querySelectorAll('input[name="product_process_code"]');

  			bomList = [];
    		
    		for(var i = 0; i < codeElements.length; i++) {
    			bom = {
					product_code : product_code,
					machine_code : codeElements[i].value,
					process_order : orderElements[i].value,
					process_time : timeElements[i].value,
					product_process_code : ppcElements[i].value
    			}
    			bomList.push(bom);
    		}
			console.log(bomList);
			$.ajax({
				//요청 타입
				type : 'post',
				//요청 URL
				url : 'process/register',
				async : false,

				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(bomList),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$(location).attr('href','/process');
				}
			});
		});


		//업데이트 버튼 눌렀을때
    	$('#updateBtn').on('click', function() {
			var product_code = $('#product_code').val();
			console.log(product_code);
			var pm_list = [];
			const codeElements = document.querySelectorAll('input[name="machine_code"]');
			const orderElements = document.querySelectorAll('input[name="process_order"]');
			const timeElements = document.querySelectorAll('input[name="process_time"]');
			const ppcElements = document.querySelectorAll('input[name="product_process_code"]');

  			bomList = [];
    		
    		for(var i = 0; i < codeElements.length; i++) {
    			bom = {
					product_code : product_code,
					machine_code : codeElements[i].value,
					process_order : orderElements[i].value,
					process_time : timeElements[i].value,
					product_process_code : ppcElements[i].value
    			}
    			bomList.push(bom);
    		}
			console.log(bomList);

			$.ajax({
				//요청 타입
				type : 'delete',
				//요청 URL
				url : 'process/delete',
				async : false,

				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(bomList),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$(location).attr('href','/process');
				}
			});
	

			$.ajax({
				//요청 타입
				type : 'post',
				//요청 URL
				url : 'process/register',
				async : false,

				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(bomList),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$(location).attr('href','/process');
				}
			});
		});
    	
		//동적으로 생산프로세스 생성된것을 클릭했을때
    	$("#bomForm").on('click', ".raw_code" ,  function(e) {
    		raw_code_input = $(this);
    	})
    	
		//+버튼을 눌렀을때 동적으로 생산프로세스를 추가
    	$('.inputPlusBtn').on('click', function() {
    		$('#bomForm').append('<div class="form-group row"><label class="col-sm-4 col-form-label">기계코드</label><div class="col-sm-8"><input type="text" class="form-control raw_code" readonly="readonly" value="" name="machine_code" data-bs-toggle="modal" data-bs-target="#exampleModal"></div></div>'+
    				 				'<div class="form-group row"><label class="col-sm-4 col-form-label">순서</label><div class="col-sm-8"><input type="text" class="form-control" name="process_order" value="'+order+'" placeholder="순서"></div></div>'+
    				 				'<div class="form-group row"><label class="col-sm-4 col-form-label">시간</label><div class="col-sm-8"><input type="text" class="form-control" name="process_time" value="" placeholder="시간">'+
									'<input type="text" class="form-control" name="product_process_code"  style="display:none;" value=" ">');
									    	
    		order++;
    	});
    	
    	//테이블 바깥을 눌렀을때 버튼활성화
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
		
			$.ajax({
			//요청 타입
			type : 'GET',
    		url : '/process/getList/' + product_code,
    		contentType : "application/json; charset-utf-8",
			success : function(result, status, xhr) {
				for(var i = 0; i < result.length; i++) {
					$('#bomForm').append('<div class="form-group row"><label class="col-sm-4 col-form-label">기계코드</label><div class="col-sm-8"><input type="text" class="form-control raw_code" readonly="readonly" value="'+result[i].machine_code+'" name="machine_code" data-bs-toggle="modal" data-bs-target="#exampleModal"></div></div>'+
    				 				'<div class="form-group row"><label class="col-sm-4 col-form-label">순서</label><div class="col-sm-8"><input type="text" class="form-control" name="process_order" value="'+result[i].process_order+'" placeholder="순서"></div></div>'+
    				 				'<div class="form-group row"><label class="col-sm-4 col-form-label">시간</label><div class="col-sm-8"><input type="text" class="form-control" name="process_time" value="'+result[i].process_time+'" placeholder="시간">'+
    				 				'<input type="text" class="form-control" name="product_process_code"  style="display:none;" value="'+result[i].product_process_code+'">');
					order = result[i].process_order
    				}
				order++;
			}
			});

		});
   	
    	$('#exampleModal').on('shown.bs.modal', function () {
    		  // Bind click event to elements inside the modal
			$('.rawbody').on('click',  '.m_row', function () {
    			  raw_code_input.val($(this).find('.machine_code').text());
    			  $('#exampleModal').modal('hide');
    		      
			});
		});

    	$('#deleteBtn').on('click', function() {
			var product_code = $('#product_code').val();
			console.log(product_code);
			var pm_list = [];
			const codeElements = document.querySelectorAll('input[name="machine_code"]');
			const orderElements = document.querySelectorAll('input[name="process_order"]');
			const timeElements = document.querySelectorAll('input[name="process_time"]');
			const ppcElements = document.querySelectorAll('input[name="product_process_code"]');

  			bomList = [];
    		
    		for(var i = 0; i < codeElements.length; i++) {
    			bom = {
					product_code : product_code,
					machine_code : codeElements[i].value,
					process_order : orderElements[i].value,
					process_time : timeElements[i].value,
					product_process_code : ppcElements[i].value
    			}
    			bomList.push(bom);
    		}
			console.log(bomList);

			$.ajax({
				//요청 타입
				type : 'delete',
				//요청 URL
				url : 'process/delete',
				async : false,

				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(bomList),
				contentType : "application/json; charset=utf-8",
				success : function(result, status, xhr) {
					$(location).attr('href','/process');
				}
			});

		});

				
    	
    </script>
  </body>
</html>