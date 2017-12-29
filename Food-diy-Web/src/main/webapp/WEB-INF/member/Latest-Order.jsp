<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title> | 최근 주문 내역 | </title>

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
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
<!-- Theme Custom CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Head Libs -->
<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>

<!-- sweetalert js & css -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script> 
<link rel="stylesheet" href="https://wfolly.firebaseapp.com/node_modules/sweetalert/dist/sweetalert.css">
<script>
$(document).ready(function(){
	
	$('table .product-thumbnail').each(function() {
		
			$(this).click(function() {
				
				var no = $(this).siblings('.orderNumber').text();
				alert(no);
				//나만의 메뉴 등록
				$.ajax({
					url : "${pageContext.request.contextPath }/member/Favorite-menu",
					type : "post",
					data : {
						"no" : no
					},
					success : function(data) {
						swal("성공");
					}
				});
			});
		});
	
	
	$('table .remove_product').each(function() {
		
		$(this).click(function() {
			
			
			var no = $(this).siblings('.cartNo').text();
			var id = "${ loginVO.id }";
			
			//상품삭제
			$.ajax({
				url : "${pageContext.request.contextPath}/member/deleteCart",
				type : "post",
				data : {
					"no" : no,
					"id" : id
				},
				success : function() {
					window.location.reload();
				}
			});
		});
	});
	
	/* ----------------------------------------------------------------------------------------------------------------- */
        	
			
			// 삭제 alert창
	function orderCancel(no) {
		swal({
			title: "주문을 취소하시겠습니까?",
		    type: "warning",
		    showCancelButton: true,
		    cancelButtonText: "취소",
			confirmButtonColor: "#DD6B55",
			confirmButtonText: "확인",
	        closeOnConfirm: false
	    }, function () {
	        swal("주문이 취소되었습니다!", "", "success");		
	        // OK 누르면 삭제 실행
		    $('.confirm').click(function () {
	       	location.href = '${ pageContext.request.contextPath}/member/orderCancel.do?no=' + no + "&url=Latest-Order";
			});
	 	});
	}
			
	//주문 취소 버튼 클릭 시 이벤트 발생 
	$('.button-cancel').each(function() {
		$(this).click(function() {
			var no = $(this).parent().siblings('.orderNumber').text();
			orderCancel(no);
			$(this).css({
				'color' : '#ec4758',
				'background-color' : 'white'
			});
		});
	});
});

   function modal(menuNo) {
        $('div.modal').modal().removeData();
        var url = '${ pageContext.request.contextPath}/member/Latest-OrderDetail.do?no=' + menuNo;
        $('div.modal').modal({ remote : url });
   }   
</script>

</head>
<body>
	<div class="body">
		<header id="header" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
			<jsp:include page="/resources/include/top-new.jsp" />
		</header>

		<!-- Mobile menu 부분 -->
		<jsp:include page="/resources/include/mobile-menu.jsp" />
		<!-- ---------------------------------------------------------------------------------------------- -->
		<div role="main" class="main">
			<section class="page-header">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ul class="breadcrumb">
								<li><a href="${ pageContext.request.contextPath}/member/memberDetail.jsp">My Page</a></li>
								<li class="active">최근 주문 내역</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>내 정보</h1>
						</div>
					</div>
				</div>
			</section>

			<div class="container">
				<div class="row">
					<div style="width: 600px">
						<div style="margin-top: 2%; margin-right: 10%" class="col-md-3 hidden-xs">
							<aside class="sidebar">
								<h3 class="heading-primary">Categories</h3>
								<ul class="nav nav-list mb-xlg">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">내 정보</a></li>
									<li class="active"><a href="#">최근 주문 내역</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/community/claim/claimList.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
							</aside>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="ibox">
								<div class="ibox-content">
									<div class="table-responsive">
										<table class="footable table table-stripped toggle-arrow-tiny dataTables-example" data-page-size="25">
											<thead>
												<tr style="font-size: 15px; margin-top: 15%">
													<th style="width: 45px" data-hide="phone" data-sort-ignore="true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
													<th data-hide="phone" data-sort-ignore="true">주문번호</th>
													<th data-hide="phone" data-sort-ignore="true">메뉴</th>
													<th data-hide="phone" data-sort-ignore="true">주문자</th>
													<th data-hide="phone" data-sort-ignore="true">주문금액</th>
													<th data-hide="phone" data-sort-ignore="true">결제방법</th>
													<th data-hide="phone" data-sort-ignore="true">지점</th>
													<th data-hide="phone" data-sort-ignore="true">주문상태</th>
													<th data-hide="phone" data-sort-ignore="true">주문취소</th>
												</tr>
											</thead>
											<tbody class="todayOrderList">
												<c:choose>
													<c:when test="${ not empty orderList }">
														<c:forEach items="${ orderList }" var="order">
															<tr class="cart-subtotal">
																<td class="id" style="display: none;">${ order.id }</td>
																<td class="price" style="display: none;">${ order.final_price }</td>
																<td class="product-thumbnail" style="width: 30px; height: 30px"><a><img style="width: 40px; height: 30px" alt="Product Name" class="img-responsive " src="${ pageContext.request.contextPath }/resources/img/AA.jpg"></a></td>
																<c:forEach items="${ order.detailOrderList }" var="list" varStatus="status">
																	<td class="size" style="display: none;">${ list.size }</td>
																	<td class="name" style="display: none;">${ list.name }</td>
																	<td class="pic" style="display: none;">${ list.pic }</td>
																	<td class="bread" style="display: none;">${ list.bread }</td>
																	<td class="cheese" style="display: none;">${ list.cheese }</td>
																	<td class="topping" style="display: none;">${ list.topping }</td>
																	<td class="vegetable" style="display: none;">${ list.vegetable }</td>
																	<td class="sauce" style="display: none;">${ list.sauce }</td>
																</c:forEach>
																<td class="convType orderNumber" id="no" width="100px;">${ order.no }</td>
																<td width = 20%>
																	<div data-toggle="modal" data-target="#largeModal">
																		<a onclick="modal('${ order.no }')"> 
																			<c:forEach items = "${  order.detailOrderList }" var = "oneOrder" varStatus="status">
																				${ oneOrder.name }
																				<c:if test="${ !status.last }">, </c:if>
																			</c:forEach>
																		</a>
																	</div>
																</td>
																<td width="10%" nowrap>${ order.id }</td>
																<td class="commaN finalPrice">${ order.final_price }원</td>
																<td>${ order.payment }</td>
																<td>${ order.storeName }</td>
																<c:choose>
																	<c:when test="${ order.orderStatus == '0'}">
																		<td><span class="orderStatus label label-danger">주문취소</span></td>
																		<td></td>
																	</c:when>

																	<c:when test="${ order.orderStatus == '1' }">
																		<td><span class="orderStatus label label-primary">대기중</span></td>
																		<td class="cancel-button"><button type="button" class="btn btn-outline button-cancel">주문취소</button></td>
																	</c:when>

																	<c:when test="${ order.orderStatus == '2' }">
																		<td><span class="orderStatus label label-warning">주문중</span></td>
																		<td></td>
																	</c:when>

																	<c:otherwise>
																		<td><span class="orderStatus label label-information">주문완료</span></td>
																		<td></td>
																	</c:otherwise>
																</c:choose>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="8" align="center"><h3 style="font-weight:bold;"><br/>최근 주문 내용이 없습니다.</h3></td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="light visible-lg" id="footer">
		<jsp:include page="/resources/include/bottom.jsp" />
	</footer>
	<footer class="light hidden-lg" id="footer">
		<jsp:include page="/resources/include/mobile-bottom.jsp" />
	</footer>

	<!-- 모달들 -->
	<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- 모달내용 -->
			</div>
		</div>
	</div>


	<!-- Vendor -->
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery-cookie/jquery-cookie.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/common/common.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.validation/jquery.validation.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/isotope/jquery.isotope.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/vide/vide.min.js"></script>
	<!-- Theme Base, Components and Settings -->
	<script src="${ pageContext.request.contextPath}/resources/js/theme.js"></script>
	<!-- Current Page Vendor and Views -->
	<script src="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
	<!-- Current Page Vendor and Views -->
	<script src="${ pageContext.request.contextPath}/resources/js/views/view.contact.js"></script>
	<!-- Demo -->
	<script src="${ pageContext.request.contextPath}/resources/js/demos/demo-shop-9.js"></script>
	<!-- Theme Custom -->
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/sticky-kit.min.js"></script>
	<!-- Theme Initialization Files -->
	<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
</body>
</html>