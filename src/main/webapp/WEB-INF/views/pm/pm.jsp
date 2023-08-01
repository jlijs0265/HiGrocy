<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <%@ include file="/WEB-INF/views/partials/_navbar.html" %>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <%@ include file="/WEB-INF/views/partials/_sidebar.html" %>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                  <i class="mdi mdi-home"></i>
                </span> Dashboard
              </h3>
              <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">
                    <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                  </li>
                </ul>
              </nav>
            </div>
            <div class="row">
              <div class="col-md-7 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">생산기계목록</h4>
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th> 생산기계코드 </th>
                            <th> 기계명 </th>
                            <th> 공장명 </th>
                            <th> 위치 </th>
                            <th> 기계코드 </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td> 1 </td>
                            <td> 반죽기 </td>
                            <td> 마라공장지점 </td>
                            <td> A-15 </td>
                            <td> 1 </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-5 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">상세 페이지</h4>
                    <form class="forms" id = "pm_list_detail">
                      <div class="form-group row">
                        <label for="input_machine_code" class="col-sm-4 col-form-label">기계코드</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_machine_code" placeholder="기계코드">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="input_machine_name" class="col-sm-4 col-form-label">기계명</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_machine_name" placeholder="기계명">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="input_factory_name" class="col-sm-4 col-form-label">공장명</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_factory_name" placeholder="공장명">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="input_location" class="col-sm-4 col-form-label">위치</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_location" placeholder="위치">
                        </div>

                      </div>
                      <button type="submit" class="btn-sm btn-gradient-primary mr-2">등록</button>
                      <button type="submit" class="btn-sm btn-gradient-primary mr-2">수정</button>
                      <button type="submit" class="btn-sm btn-gradient-primary mr-2">삭제</button>
                      
                      <button class="btn btn-light">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!-- TODO: model 창으로 이동해야함 -->
            <div class="row">
              <div class="col-md-7 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">기계목록</h4>
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th> 기계코드 </th>
                            <th> 기계종류 </th>
                            <th> 온실가스 배출량(kcal/h) </th>
                            <th> 에너지소모량(kj/h) </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td> 1 </td>
                            <td> 50L반죽기 </td>
                            <td> 2 </td>
                            <td> 50 </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-5 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">상세 페이지</h4>
                    <form class="forms-sample" id = "m_list_detail">
                      <div class="form-group row">
                        <label for="input_machine_code" class="col-sm-4 col-form-label">기계코드</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_machine_code" placeholder="기계코드">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="input_type" class="col-sm-4 col-form-label">기계종류</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_type" placeholder="기계종류">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="input_gas_emissions" class="col-sm-4 col-form-label">온실가스배출량</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_gas_emissions" placeholder="온실가스배출량">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="input_energy_usage" class="col-sm-4 col-form-label">에너지소모량</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="input_energy_usage" placeholder="에너지소모량">
                        </div>
                      </div>
                      <button type="submit" class="btn-sm btn-gradient-primary mr-2">등록</button>
                      <button type="submit" class="btn-sm btn-gradient-primary mr-2">수정</button>
                      <button type="submit" class="btn-sm btn-gradient-primary mr-2">삭제</button>                      <button class="btn btn-light">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <%@ include file="/WEB-INF/views/partials/_footer.html" %>
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
    <script src="/resources/assets/js/jquery.cookie.js" type="text/javascript"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/resources/assets/js/off-canvas.js"></script>
    <script src="/resources/assets/js/hoverable-collapse.js"></script>
    <script src="/resources/assets/js/misc.js"></script>
    <!-- endinject -->
    <script>

      // $("#m_list_detail button").on('click',function(event){
      //   console.log(event.target.value);
      //   alert("test");

      // })
      $("#pm_list_detail button").on('click',function(event){
        event.preventDefault();
        console.log(event.target.value);
        console.log("생산기계 목록");
        alert("test");

      })
    </script>
    <!-- End custom js for this page -->
  </body>
</html>
