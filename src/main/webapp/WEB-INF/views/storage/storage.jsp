<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <%@ include file="../partials/_navbar.html"%>
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_sidebar.html -->
            <%@ include file="../partials/_sidebar.html"%>
            <!-- partial -->
            <div class="main-panel">
                <!-- -------------------------------Container Start---------------------------------------------- -->

                <a href="/index">Move</a>

                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Basic form elements</h4>
                            <p class="card-description">Basic form elements</p>
                            <form class="forms-storage" action="insert/storage" method="post">
                                <div class="form-group">
                                    <label for="storageCodeLabel">StorageCode</label>
                                    <input type="text" class="form-control" id="storageCode" name="storageCode" placeholder="StorageCode">
                                </div>
                                <div class="form-group">
                                    <label for="storageLocationLabel">Location</label>
                                    <input type="text" class="form-control" id="storageLocation" name="storageLocation" placeholder="Location">
                                </div>
                                <button type="button" id ="storageReg" class="btn btn-gradient-info btn-rounded btn-fw">Submit</button>
                                
                                <button type="reset" class="btn btn-light">Cancel</button>
                            </form>
                        </div>
                        <!-- cardbody end -->
                    </div>
                </div>
            </div>
            
            
			<!-- Custom script for AJAX handling -->
    <script>
  $(function(){
	  
	  var storageRegBtn={"#storageReg"};
	  
	  $("#storageReg").on("click",function(){
		  var data={
				  storageCode: document.getElementById("storageCode").value,
	              storageLocation: document.getElementById("storageLocation").value
		  }
		  
		  $.ajax({
				//요청 타입
				type: 'post',
				//요청 URL
				url: 'insert/storage',
				//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
				data : JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				success : function(result, status, xhr){
					if(callback){
						callback(result);
					}
				},
				error: function(xhr, status, er){
					if(er){
						error(er);
					}
				}
			});
		 window.print(data);
	  })

	  
  })
    
    
        
    </script>


			<!-- ---------------------------------Container End-------------------------------- -->
            <!-- content-wrapper ends -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- partial:partials/_footer.html -->
    <%@ include file="../partials/_footer.html"%>
    <!-- partial -->
    <!-- plugins:js -->
    <script src="/resources/assets/vendors/js/vendor.bundle.base.js"></script>
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
    <!-- Custom js for this page -->
    <script src="/resources/assets/js/dashboard.js"></script>
    <script src="/resources/assets/js/todolist.js"></script>
    <!-- End custom js for this page -->


</body>
</html>
