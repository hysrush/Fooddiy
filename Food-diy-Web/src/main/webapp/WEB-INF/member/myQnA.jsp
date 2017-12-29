<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>Fooddiy-Order</title>	

		<meta name="keywords" content="HTML5 Template" />
		<meta name="description" content="Porto - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Favicon -->
		<link rel="shortcut icon" href="${ pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="${ pageContext.request.contextPath}/resources/img/apple-touch-icon.png">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/animate/animate.min.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/simple-line-icons/css/simple-line-icons.min.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/assets/owl.theme.default.min.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.min.css">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme-elements.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme-blog.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme-shop.css">

		<!-- Current Page CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/settings.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/layers.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/navigation.css">
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/circle-flip-slideshow/css/component.css">

		<!-- Skin CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/skins/skin-shop-9.css"> 

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">
		
		<!-- dataTables -->
		<link href="${ pageContext.request.contextPath }/resources/css/dataTables/datatables.min.css" rel="stylesheet">
	    <!-- FooTable -->
	    <link href="${ pageContext.request.contextPath }/resources/css/footable/footable.core.css" rel="stylesheet">
		<!-- iCheck -->
		<link href="${ pageContext.request.contextPath }/resources/css/iCheck/custom.css" rel="stylesheet">
		<!-- sweetalert js & css -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script> 
		<link rel="stylesheet" href="https://wfolly.firebaseapp.com/node_modules/sweetalert/dist/sweetalert.css">

		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
		
<script src="${ pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>		
<style type="text/css">
	#div01 {
		width: 70px;
		text-align: center;
		border-width: 2px;
		border-style: solid;
	}
	
	#cnt {
		width: 80px;
		height: 30px;
		font-size: 13px;
		background-color: #d1dade;
		color: #5e5e5e;
		font-weight: bold;
	}
</style>
</head>
<body>
	<div class="body">
		<header id="header"
			data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
			<jsp:include page="/resources/include/top-new.jsp" />
		</header>
		<!-- Mobile menu 부분 -->
		<jsp:include page="/resources/include/mobile-menu.jsp" />
		<!-- ---------------------------------------------------------------------------------------------- -->
		<section class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb">
							<li><a
								href="${ pageContext.request.contextPath}/member/memberDetail.jsp">My
									Page</a></li>
							<li class="active">나의 문의사항</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h1>Left Sidebar</h1>
					</div>
				</div>
			</div>
		</section>

		<div class="container">


			<div class="row">
				<div style="width: 600px">
					<div style="margin-top: 2%; margin-right: 10%"
						class="col-md-3 hidden-xs">
						<aside class="sidebar">

							<h3 class="heading-primary">Categories</h3>
							<ul class="nav nav-list mb-xlg">
								<li><a
									href="${ pageContext.request.contextPath}/member/memberDetail.do">내
										정보</a></li>
								<li><a
									href="${ pageContext.request.contextPath}/member/Latest-Order.do?id=${loginVO.id}">최근
										주문 내역</a></li>
								<li><a
									href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의
										메뉴</a></li>
								<li class="active"><a
									href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의
										문의사항</a></li>
							</ul>
						</aside>
					</div>
				</div>

				<div role="main" class="main shop">
					<div class="row">
						<div class="col-lg-9">
							<div class="ibox">
								<div class="ibox-content">
									<div class="table-responsive">
										<table class="footable table table-stripped toggle-arrow-tiny dataTables-example" data-page-size="60">
											<thead>
												<tr style="font-size: 15px; margin-top: 15%">
													<th data-hide="phone" data-sort-ignore="true" width="45px;">
														<div class ="total-select" >
															<input type="checkbox" class="i-checks" id="chkall">														
														</div>
													</th>
													<th data-hide="phone" data-sort-ignore="true">유형</th>
													<th data-hide="phone" data-sort-ignore="true">제목</th>
													<th style="width: 7%" data-hide="phone"
														data-sort-ignore="true">등록일</th>
													<th data-hide="phone" data-sort-ignore="true">답변여부</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${ not empty claimList  }">
														<c:forEach items="${ claimList  }" var="claim">
															<tr class="claimList">
																<td>
																	<input type="checkbox" class="i-checks" name="chk">
																	<div style="display: none">${ claim.no }</div>
																</td>
																<td class="convType" width="11%"><span
																	class="label label-primary">${ claim.type }</span></td>
																<td><a class="amount"
																	href="${ pageContext.request.contextPath }/member/myQnADetail.do?no=${ claim.no }">
																		<c:out value="${ claim.title }" />
																</a></td>
																<td width="15%"><span class="amount ">${ claim.regDate }</span>
																</td>
																<td align="center" width="15%">
																	<button id="cnt" type="button" class="btn col-md-3">
																		접수완료</button>
																</td>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="8" align="center"><h3 id="del"
																	style="font-weight: bold;">
																	<br />문의 내용이 없습니다.
																</h3></td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									<button class="mb-xs mt-xs mr-xs btn btn-default" type="button" onclick="delRow();">
										<i class="fa fa-trash" aria-hidden="true" ></i>&nbsp;&nbsp;선택삭제</button> 
									</div>
									<!-- 페이지네이션 -->
									<div class="col-md-12 center">
										<ul class="pagination pull-center">
										</ul>
									</div>
								</div>
								<div align="right" style="margin-right: 2%; margin-top: 5%">
									<button class="btn btn-primary btn-icon" id="del" style="width: 14%; height: 10%">삭제</button>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- ---------------------------------------------------------------------------------------------- -->
	<div class="container">
		<footer class="light visible-lg" id="footer">
			<jsp:include page="/resources/include/bottom.jsp" />
		</footer>
		<footer class="light hidden-lg" id="footer">
			<jsp:include page="/resources/include/mobile-bottom.jsp" />
		</footer>
	</div>

	<!-- Vendor -->
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery-cookie/jquery-cookie.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/common/common.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery.validation/jquery.validation.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/isotope/jquery.isotope.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/vide/vide.min.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="${ pageContext.request.contextPath}/resources/js/theme.js"></script>

	<!-- Current Page Vendor and Views -->
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>

	<!-- Current Page Vendor and Views -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/views/view.contact.js"></script>

	<!-- Demo -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/demos/demo-shop-9.js"></script>

	<!-- Theme Custom -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>

	<!-- Theme Initialization Files -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

	<script
		src="${ pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
		
	<!-- dataTables -->
	<script src="${ pageContext.request.contextPath }/resources/js/dataTables/datatables.min.js"></script>
    <!-- FooTable -->
    <script src="${ pageContext.request.contextPath }/resources/js/footable/footable.all.min.js"></script>
	<!-- iCheck -->
    <script src="${ pageContext.request.contextPath }/resources/js/iCheck/icheck.min.js"></script>


	<script type="text/javascript">
	$(document).ready(function(){
		
		// footable 시작
		$('.footable').footable();
		
		
		// Claim 타입별 라벨 클래스명 & 텍스트 변경
		for(var i = 0; i < $('.claimList').length; ++i) {    	
			var claimType  = $('.claimList').eq(i).find('.label');
			if(claimType.text() == 'I'){
				claimType.attr("class","label label-primary");
				claimType.html("문의");
			}
			else if(claimType.text() == 'P'){
				claimType.attr("class","label label-warning");
				claimType.html("칭찬");
			}
			else if(claimType.text() == 'S'){
				claimType.attr("class","label label-success");
				claimType.html("제안");
			}
			else if(claimType.text() == 'C'){
				claimType.attr("class","label label-danger");
				claimType.html("불만");
			}
			else if(claimType.text() == 'X'){
				claimType.attr("class","label label-information");
				claimType.html("기타");
			}
		}
		
		// 체크박스
		$('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
		
		// 체크박스 전체 선택
		var start = 4;
		$('#chkall').on('ifChecked', function(){
			$('.icheckbox_square-green').addClass("checked");
		});
		$('#chkall').on('ifUnchecked', function(){
			$('.icheckbox_square-green').removeClass("checked");
		});
		
		// 체크박스 초기화
		$(document).on('change', '.input-sm', function(){
			$('.icheckbox_square-green').removeClass("checked");
		});
		$(document).on('click', '.pagination', function(){
			$('.icheckbox_square-green').removeClass("checked");
		});
		
		// 데이터테이블 생성 & 옵션 변경
		$('.footable').css("width","100%");
		var table = $('.dataTables-example').DataTable({
			pageLength: 10,
            bPaginate: true,
            responsive: true,
            dom: '<"html5buttons"B>',
            "iDisplayLength": -1,
            // 우선순위 Sort
            "aaSorting": [[ 3, "desc" ]], // Sort by first column descending
            // 컬럼 Sort 없애기
            "aoColumnDefs": [
                { "bSortable": false, "aTargets": [ 0 ] },
                { "bSortable": false, "aTargets": [ 1 ] },
                { "bSortable": false, "aTargets": [ 2 ] },
                { "bSortable": false, "aTargets": [ 4 ] }
            ],
            // 버튼 옵션
            buttons: [
            ]
        });
		
	});
	
	// 체크박스 선택삭제
	var cnt = 0;
	var nums = "";
	function delRow() {﻿
		cnt = 0;
		nums = "";
		$('.checked').each(function() {
			cnt++;
			nums += $(this).next().text() + ",";
		});
		if($('.icheckbox_square-green').eq(0).hasClass('checked')){
			cnt--;
		}
		if(cnt != 0){
			deleteRow(nums, cnt);
		}
		else{
			deleteZero();
		}
	}
	
	// 선택삭제 alert 확인창
	function deleteRow(nums, cnt) {
		swal({
	        title: "선택 삭제",
	        text: cnt + "개의 게시물을 삭제하시겠습니까?",
	        type: "warning",
	        showCancelButton: true,
	        cancelButtonText: "취소",
	        confirmButtonColor: "#DD6B55",
	        confirmButtonText: "삭제",
	        closeOnConfirm: false
	    }, function () {
	        swal("삭제되었습니다!", "", "success");
	        // OK 누르면 삭제 실행
	        $('.confirm').click(function () {
	        	location.href = '${ pageContext.request.contextPath}/community/claim/claimDeleteSome.do?nums=' + nums;
			});
	    });
	}
	
	// 선택한 메뉴 없을 때 alert
	function deleteZero() {			
        swal({
            title: "선택한 게시물이 없습니다!",
          	type: "error"
        });	        
	}
	
</script>
</body>


</body>
</html>