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
		<%@ include file="/WEB-INF/views/partials/_navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="/WEB-INF/views/partials/_sidebar.jsp"%>
			<!-- partial:partials/_footer.html -->
			<!-- main-panel  -->
			<div class="main-panel">
				<div class="row" id="trigger">
					<div class="col-sm-2" id="pr_code">
						<p>발주날짜별</p>
					</div>
					<div class="col-sm-2" id="item_code">
						<p style="font-weight: bold;">품목별</p>
					</div>
					<div class="col-sm-2" id="account_code">
						<p>거래처별</p>
					</div>

				</div>
				<div class="content-wrapper"></div>


				<%@ include file="/WEB-INF/views/partials/_footer.jsp"%>

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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script>
		const trigger = document.querySelectorAll('#trigger p');
		console.log(trigger);
		//발주번호별, 품목별, 거래처별 눌렀을때 이벤트
		$('#trigger div').on('click', function(){
			//전체 폰트 굵기 초기화
			for(let tr of trigger){
				console.log($(tr).attr('style'));
				$(tr).attr('style', 'font-weight:normal');
			}
			//이벤트로 입력된 부분의 폰트만 굵게
			$(this).find('p').attr('style','font-weight:bold');
			console.log($(this).attr('id'));
			//발주번호별 버튼이 눌렸을때
			if($(this).attr('id') == 'pr_code'){
				console.log('발주번호별 버튼 눌림');
				let html = `<div class="row h-100">
		       				<!-- 원부자재 목록 조회 부분 -->
		       				<div class="col-md-12 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body list-body">
										<div class = "col-md-12 row">
											<div class= "col-sm-4">
												<input type = "date" id = "start">
											</div>
											<div class = "col-sm-2">
												<span> ~ </span>
											</div>
											<div class = "col-sm-4">
												<input type = "date" id = "end">
											</div>
											<div class = "col-sm-2">
												<button type="button" id="select" class="btn-sm btn-gradient-primary mr-2">조회</button>
											</div>
										</div>
							            <div class="table-responsive h-100 tableWarp">
							            	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
						                          <th class="">발주번호</th>
						                          <th> 발주일자</th>
						                          <th> 거래처</th>
						                          <th> 담당사원</th>
												  <th> 배송예정일</th>
						                        </tr>
						                      </thead>
						                      <tbody class = "or_num" id="orderListTbody">
						                      
						                      </tbody>
						                    </table>
							            </div>
					                    	
					                  </div>
			       				</div>
			       			</div>
			       			<!-- 발주 목록 조회 부분 끝-->
			       			<div class="col-md-12 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body">
			       						<div class="table-responsive h-100 tableWarp">
							            	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
													<th class="">품목 코드</th>
						                          <th> 자재분류</th>
						                          <th> 품명</th>
						                          <th> 재생가능여부</th>
						                          <th> 단위</th>
						                          <th> 기준수량</th>
						                          <th> 원산지</th>
						                        </tr>
						                      </thead>
						                      <tbody class = "item_tbody">
						                      
						                      </tbody>
						                    </table>
							            </div>
					                      
			       					</div>
			       					 
			       				</div>
			       			</div>
		       			<!-- 원부자재 등록 부분 끝-->
		       			</div>`;
				$('.content-wrapper').empty().append(html);
				//품목별 버튼이 눌렸을때
			}else if ($(this).attr('id') == 'item_code') {
				console.log('품목별 버튼 눌림');
				let html = `<div class="row h-100">
		       				<!-- 원부자재 목록 조회 부분 -->
		       				<div class="col-md-12 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body list-body">
					                    <form class="d-flex align-items-center" action="#">
							              <div class="input-group">
						                    <div class="p-3">검색</div>
							                <input type="text" class="form-control bg-transparent border-1" id="item_search_input" placeholder="품목 검색">
							                <div class="input-group-text" id="item_search_btn">
							                  <i class="input-group mdi mdi-magnify"></i>
							                </div>
							              </div>
							            </form>
							            <div class="table-responsive h-100 tableWarp">
							            	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
						                          <th class="">품목 코드</th>
						                          <th> 자재분류</th>
						                          <th> 품명</th>
						                          <th> 재생가능여부</th>
						                          <th> 단위</th>
						                          <th> 기준수량</th>
						                          <th> 원산지</th>
						                        </tr>
						                      </thead>
						                      <tbody class = "item_tbody">
						                      
						                      </tbody>
						                    </table>
							            </div>
					                    	
					                  </div>
			       				</div>
			       			</div>
			       			<!-- 발주 목록 조회 부분 끝-->
			       			<div class="col-md-12 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body">
			       						<div class="table-responsive h-100 tableWarp">
							            	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
						                          <th class="">발주 번호</th>
						                          <th> 발주일자</th>
						                          <th> 거래처</th>
						                          <th> 담당사원</th>
						                          <th> 배송예정일</th>
						                          <th> 공급가 합계</th>
						                          <th> 총 합계</th>
						                        </tr>
						                      </thead>
						                      <tbody class = "or_item">
						                      
						                      </tbody>
						                    </table>
							            </div>
					                      
			       					</div>
			       					 
			       				</div>
			       			</div>
		       			<!-- 원부자재 등록 부분 끝-->
		       			</div>`;
				$('.content-wrapper').empty().append(html);
				//거래처별 버튼이 눌렸을때
			} else if($(this).attr('id') == 'account_code'){
				console.log('거래처별 버튼 눌림');
				let html = `<div class="row h-100">
		       				<!-- 원부자재 목록 조회 부분 -->
		       				<div class="col-md-12 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body list-body">
					                    <form class="d-flex align-items-center" action="#">
							              <div class="input-group">
						                    <div class="p-3">검색</div>
							                <input type="text" class="form-control bg-transparent border-1" placeholder="거래처 검색">
							                <div class="input-group-text">
							                  <i class="input-group mdi mdi-magnify"></i>
							                </div>
							              </div>
							            </form>
							            <div class="table-responsive h-100 tableWarp">
							            	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
													<th class="">발주 번호</th>
						                          <th> 발주일자</th>
						                          <th> 거래처</th>
						                          <th> 담당사원</th>
						                          <th> 배송예정일</th>
						                          <th> 공급가 합계</th>
						                          <th> 총 합계</th>
						                         
						                        </tr>
						                      </thead>
						                      <tbody class = "or_acc">
						                      
						                      </tbody>
						                    </table>
							            </div>
					                    	
					                  </div>
			       				</div>
			       			</div>
			       			<!-- 발주 목록 조회 부분 끝-->
			       			<div class="col-md-12 grid-margin stretch-card">
			       				<div class="card">
			       					<div class="card-body">
			       						<div class="table-responsive h-100 tableWarp">
							            	<table class="table table-bordered">
						                      <thead> 
						                        <tr>
												<th class="">품목 코드</th>
						                          <th> 자재분류</th>
						                          <th> 품명</th>
						                          <th> 재생가능여부</th>
						                          <th> 단위</th>
						                          <th> 기준수량</th>
						                          <th> 원산지</th>
												  
						                        </tr>
						                      </thead>
						                      <tbody class = "item_tbody">
						                      
						                      </tbody>
						                    </table>
							            </div>
					                      
			       					</div>
			       					 
			       				</div>
			       			</div>
		       			<!-- 원부자재 등록 부분 끝-->
		       			</div>`;
				$('.content-wrapper').empty().append(html);
				
			}
		})
		//검색버튼 눌렀을때
		$('.content-wrapper').on('click','#item_search_btn', function(){
			//TODO: ajax 통신 붙이기 품목 검색 버튼 누름
			console.log($('#item_search_input').val());
			// 검색한 텍스트를 포함하는 품목을 가져오고 해당하는 품목을 가지는 발주 신청 내역을 가지고 오기
			
			// 품목 이름을 보내기
			var itemName = $('#item_search_input').val();
			/* $.ajax({
				type : 'get',
				url : '/orderlist/searchItem',
				data : JSON.stringify(itemName),
				contentType : "application/json; charset-utf-8",
				success : function(result, status, xhr) {
    				for(var i = 0; i < result.length; i++) {
    					$('.item_tbody').append('<div class="form-group row"><label class="col-sm-3 col-form-label">원자재코드</label><div class="col-sm-9"><input type="text" class="form-control raw_code" readonly="readonly" value="'+ result[i].raw_materials_code + '" name="raw_material_code" data-bs-toggle="modal" data-bs-target="#exampleModal"></div></div><div class="form-group row"><label class="col-sm-3 col-form-label">수량</label><div class="col-sm-9"><input type="text" class="form-control" name="amount" value="'+ result[i].amount +'" placeholder="수량"></div></div>');
    				}
    				
    			},
    			error : function(xhr, status, er) {
    				console.log(er);
    			}
			}); */
		});

		//날짜 조회버튼 눌렀을때 TODO
		$('.content-wrapper').on('click','#select', function(){
			var BetweenDateVO = {
			start : $("#start").val(),
			end : $("#end").val()
			}
		console.log(BetweenDateVO);
		
		//날짜 변경 함수
		const displayTime = function(timeValue){
			var dateObj = new Date(timeValue);
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() +1;
			var dd = dateObj.getDate();
			return [yy, '-', (mm > 9 ? '': '0')+mm, '-',(dd>9 ? '': '0')+dd].join('');
		}

		$.ajax({
			//요청 타입
			type : 'POST',
			//요청 URL
			url : '/orderlist/betweendate',
			//JSON으로 변환 reply는 전송하는 값 result는 받아오는 값
			data : JSON.stringify(BetweenDateVO),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				console.log(result);
				$("tbody.or_num").empty();
				for(var i = 0; i < result.length; i++) {
					$('#orderListTbody').append('<tr><td>'+result[i].order_code+'</td><td>'+displayTime(result[i].order_date)+'</td><td>'+result[i].account_code +'</td><td>'+result[i].order_manager +'</td><td>'+displayTime(result[i].delivery_date) + '</td></tr>');
					}
				},
			error : function(xhr, status, er) {
				if (er) {
					error(er);
				}
			}
			});
		});
	</script>
</body>
</html>