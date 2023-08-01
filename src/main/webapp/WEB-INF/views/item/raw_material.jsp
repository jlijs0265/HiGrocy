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
		       				<!-- 원부자재 목록 조회 부분 -->
		       				<div class="col-md-6 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body list-body">
					                    <h4 class="card-title">원부자재 목록</h4>
					                    
					                    <form class="d-flex align-items-center" action="#">
							              <div class="input-group">
						                    <div class="p-3">검색</div>
							                <input type="text" class="form-control bg-transparent border-1" placeholder="원부자재 검색">
							                <div class="input-group-text">
							                  <i class="input-group mdi mdi-magnify"></i>
							                </div>
							              </div>
							            </form>
					                    	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
						                          <th class="">코드</th>
						                          <th> 자재분류 </th>
						                          <th> 자재명 </th>
						                          <th> 재생가능여부 </th>
						                          <th> 단위</th>
						                          <th>기준수량</th>
						                          <th>원산지</th>
						                        </tr>
						                      </thead>
						                      <tbody>
						                      	<c:forEach items="${rawList}" var="rawMaterial">
						                      		<tr class="rawitem">
							                          <td id="rcode"> <c:out value="${rawMaterial.raw_materials_code}" /></td>
							                          <td id="rtype"> <c:out value="${rawMaterial.type}" /></td>
							                          <td id="rname"><c:out value="${rawMaterial.name}" /></td>
							                          <td id="rrenewability"> <c:out value="${rawMaterial.renewability}" /> </td>
							                          <td id="runit"> <c:out value="${rawMaterial.unit}" /></td>
							                          <td id="rstandard"><c:out value="${rawMaterial.standard_quantity}" /></td>
							                          <td id="rorigin"><c:out value="${rawMaterial.origin}" /></td>
							                        </tr>
						                      	</c:forEach>
						                        
						                        
						                      </tbody>
						                    </table>
					                  </div>
			       				</div>
			       			</div>
			       			<!-- 원부자재 목록 조회 부분 끝-->
			       			<!-- 원부자재 등록 부분 -->
			       			<div class="col-md-6 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body">
			       						<h4 class="card-title" id="raw-title">등록 페이지</h4>
			       						
			       						<form class="forms-sample p-2" action="/raw_material/insert" method="post" id="rawForm">
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">원부자재 코드</label>
					                        <input type="text" class="form-control" id="raw_material_code" readonly="readonly" placeholder="원부자재 코드">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleSelectGender">자재분류</label>
					                        <select class="form-control" id="raw_material_type" name="type">
					                          <option>원자재</option>
					                          <option>부자재</option>
					                        </select>
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">자재명</label>
					                        <input type="text" class="form-control" id="raw_material_name" name="name" placeholder="자재명">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleSelectGender">재생가능여부</label>
					                        <select class="form-control" id="raw_material_renewability" name="renewability">
					                          <option>여</option>
					                          <option>부</option>
					                        </select>
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">단위</label>
					                        <input type="text" class="form-control" id="raw_material_unit" name="unit" placeholder="단위">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">기준수량</label>
					                        <input type="text" class="form-control" id="raw_material_standard" name="standard_quantity" placeholder="기준수량">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">원산지</label>
					                        <input type="text" class="form-control" id="raw_material_origin" name="origin" placeholder="원산지">
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
		       
		       
          <%@ include file="../partials/_footer.html" %>
          
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <script type="text/javascript">
    	document.getElementById("updateBtn").style.display = "none";
    	document.getElementById("deleteBtn").style.display = "none";
    	var item = 0;
    	
    	/* 여백 누르면 등록 페이지 띄우기 */
    	$('.list-body').on('click', function() {
    		document.getElementById("updateBtn").style.display = "none";
        	document.getElementById("deleteBtn").style.display = "none";
        	document.getElementById("registerBtn").style.display = "";
        	
        	$('#raw-title').text("등록 페이지");
    		$('#raw_material_code').val('');
    		$('#raw_material_name').val('');
    		$('#raw_material_type option:eq(0)').prop('selected',true);
    		$('#raw_material_unit').val('');
    		$('#raw_material_renewability option:eq(0)').prop('selected',true);
    		$('#raw_material_standard').val('');
    		$('#raw_material_origin').val('');
    		
    	});
    	/* 여백 누르면 등록 페이지 띄우기 끝 */
    	/* 행 누르면 form 태그에 반영 */
    	$('.rawitem').on('click', function(event) {
    		event.stopPropagation();
    		item = $(this);
    		let type = document.getElementById("raw_material_type");
    		let renewability = document.getElementById("raw_material_renewability");
    		
    		document.getElementById("updateBtn").style.display = "";
        	document.getElementById("deleteBtn").style.display = "";
    		
        	$('#raw-title').text("상세 페이지");
    		$('#raw_material_code').val(item.find('#rcode').text());
			
    		if(item.find('#rtype').text().trim() == '원자재') {
    			type.options[0].selected = true;
    		} else {
    			type.options[1].selected = true;
    		}
    		
    		if(item.find('#rrenewability').text().trim() == '여') {
    			renewability.options[0].selected = true;
    		} else {
    			renewability.options[1].selected = true;
    		}
    		
    		$('#raw_material_name').val(item.find('#rname').text());
    		
    		$('#raw_material_unit').val(item.find('#runit').text());
    		$('#raw_material_standard').val(item.find('#rstandard').text());
    		$('#raw_material_origin').val(item.find('#rorigin').text());
    		
    		document.getElementById("registerBtn").style.display = "none"; /* 등록버튼 없애줌 */
    		
    	});
    	/* 행 누르면 form 태그에 반영 끝 */
    	
    	$('#registerBtn').on('click', function() {
    		$("#rawForm").submit();
    	})
    	
    	$('#updateBtn').on('click', function() {
    		var raw = {
    				raw_materials_code : $("#raw_material_code").val(),
    				type : $("#raw_material_type option:selected").val(),
    				name : $('#raw_material_name').val(),
    				renewability : $("#raw_material_renewability option:selected").val(),
    				unit : $("#raw_material_unit").val(),
    				standard_quantity : $("#raw_material_standard").val(),
    				origin : $("#raw_material_origin").val()
    		}
    		$.ajax({
				type : 'PUT',
				url : '/raw_material',
				data : JSON.stringify(raw),
				contentType : "application/json; charset-utf-8",
				success : function(result, status, xhr) {
					$("#rawForm")[0].reset();
					console.log(result);
					item.find('td').eq(1).text(result.type);
					item.find('td').eq(2).text(result.name);
					item.find('td').eq(3).text(result.renewability);
					item.find('td').eq(4).text(result.unit);
					item.find('td').eq(5).text(result.standard_quantity);
					item.find('td').eq(6).text(result.origin);
				},
				error : function(xhr, status, er) {
					console.log(er);
				}
				
			});
			
    	});
    	
    	$('#deleteBtn').on('click', function() {
    		data = $("#raw_material_code").val();
    		console.log(data);
    		$.ajax({
    			type : 'DELETE',
    			url : '/raw_material/' + data,
    			contentType : "application/json; charset-utf-8",
    			success : function(result, status, xhr) {
    				console.log(result);
    				item.remove();
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
    		});
    	});
    	
    </script>
  </body>
</html>