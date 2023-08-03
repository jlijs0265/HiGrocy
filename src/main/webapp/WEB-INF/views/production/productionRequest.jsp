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
						<div class="col-md-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body list-body">
									<h4 class="card-title pb-3">품목 선택</h4>
										<form class="forms-sample">
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">품목코드</label>
					                        <input type="text" class="form-control" id="" placeholder="품목코드">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputEmail1">품명</label>
					                        <input type="email" class="form-control" id="" placeholder="품명">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputPassword1">단위</label>
					                        <input type="password" class="form-control" id="" placeholder="단위">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputConfirmPassword1">수량</label>
					                        <input type="password" class="form-control" id="" placeholder="수량">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">단가</label>
					                        <input type="text" class="form-control" id="" placeholder="단가">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">공급가액</label>
					                        <input type="text" class="form-control" id="" placeholder="공급가액">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">부가세</label>
					                        <input type="text" class="form-control" id="" placeholder="부가세">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">합계금액</label>
					                        <input type="text" class="form-control" id="" placeholder="합계금액">
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
						<div class="col-md-6 grid-margin stretch-card">
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
					                          <td></td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">창고</td>
					                          <td></td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">사원</td>
					                          <td></td>
					                        </tr>
					                        <tr>
					                          <td class="table-active">총 합계금액</td>
					                          <td></td>
					                        </tr>
					                      </tbody>
					                    </table>
									</div>
									
									<div class="pt-5">
										<h4 class="card-title" id="raw-title">품목 내역</h4>
										<div class="border border-secondary p-3" id="bomForm">
										
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
	
	<script type="text/javascript">
		
	</script>
	
</body>
</html>