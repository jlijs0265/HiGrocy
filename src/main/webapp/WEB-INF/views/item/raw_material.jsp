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
			       					<div class="card-body">
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
					                          <th> # </th>
					                          <th> First name </th>
					                          <th> Progress </th>
					                          <th> Amount </th>
					                          <th> Deadline </th>
					                        </tr>
					                      </thead>
					                      <tbody>
					                        <tr>
					                          <td> 1 </td>
					                          <td> Herman Beck </td>
					                          <td>
					                            <div class="progress">
					                              <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					                            </div>
					                          </td>
					                          <td> $ 77.99 </td>
					                          <td> May 15, 2015 </td>
					                        </tr>
					                        <tr>
					                          <td> 2 </td>
					                          <td> Messsy Adam </td>
					                          <td>
					                            <div class="progress">
					                              <div class="progress-bar bg-danger" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
					                            </div>
					                          </td>
					                          <td> $245.30 </td>
					                          <td> July 1, 2015 </td>
					                        </tr>
					                        <tr>
					                          <td> 3 </td>
					                          <td> John Richards </td>
					                          <td>
					                            <div class="progress">
					                              <div class="progress-bar bg-warning" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
					                            </div>
					                          </td>
					                          <td> $138.00 </td>
					                          <td> Apr 12, 2015 </td>
					                        </tr>
					                        <tr>
					                          <td> 4 </td>
					                          <td> Peter Meggik </td>
					                          <td>
					                            <div class="progress">
					                              <div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
					                            </div>
					                          </td>
					                          <td> $ 77.99 </td>
					                          <td> May 15, 2015 </td>
					                        </tr>
					                        <tr>
					                          <td> 5 </td>
					                          <td> Edward </td>
					                          <td>
					                            <div class="progress">
					                              <div class="progress-bar bg-danger" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
					                            </div>
					                          </td>
					                          <td> $ 160.25 </td>
					                          <td> May 03, 2015 </td>
					                        </tr>
					                        <tr>
					                          <td> 6 </td>
					                          <td> John Doe </td>
					                          <td>
					                            <div class="progress">
					                              <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
					                            </div>
					                          </td>
					                          <td> $ 123.21 </td>
					                          <td> April 05, 2015 </td>
					                        </tr>
					                        <tr>
					                          <td> 7 </td>
					                          <td> Henry Tom </td>
					                          <td>
					                            <div class="progress">
					                              <div class="progress-bar bg-warning" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
					                            </div>
					                          </td>
					                          <td> $ 150.00 </td>
					                          <td> June 16, 2015 </td>
					                        </tr>
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
			       						<h4 class="card-title">상세 페이지</h4>
			       						
			       						<form class="forms-sample p-2">
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">원부자재 코드</label>
					                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="원부자재 코드">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleSelectGender">자재분류</label>
					                        <select class="form-control" id="exampleSelectGender">
					                          <option>원자재</option>
					                          <option>부자재</option>
					                        </select>
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">자재명</label>
					                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="자재명">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleSelectGender">재생가능여부</label>
					                        <select class="form-control" id="exampleSelectGender">
					                          <option>여</option>
					                          <option>부</option>
					                        </select>
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">단위</label>
					                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="단위">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">기준수량</label>
					                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="기준수량">
					                      </div>
					                      <div class="form-group">
					                        <label for="exampleInputUsername1">원산지</label>
					                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="원산지">
					                      </div>
					                      <button type="submit" class="btn btn-gradient-primary mr-2">등록</button>
					                      <button class="btn btn-gradient-success">수정</button>
					                      <button class="btn btn-gradient-danger">삭제</button>
					                    </form>
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
  </body>
</html>