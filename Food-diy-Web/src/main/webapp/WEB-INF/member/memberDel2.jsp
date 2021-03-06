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

<title> | 회원 탈퇴 | </title>

<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

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

		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>


		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">

<script src="${ pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<style type="text/css">
#div01 {
	width: 70px;
	text-align: center;
	border-width: 2px;
	border-style: solid;
}
</style>
<script>
$(document).ready(function(){
	
	$('table .product-thumbnail').each(function() {
		
			$(this).click(function() {
				
				var id = $(this).siblings('.id').text();
				var name = $(this).siblings('.name').text();
				var price = $(this).siblings('.price').text();
				var pic = $(this).siblings('.pic').text();
				var size = $(this).siblings('.size').text();
				var bread = $(this).siblings('.bread').text();
				var cheese = $(this).siblings('.cheese').text();
				var topping = $(this).siblings('.topping').text();
				var vegetable = $(this).siblings('.vegetable').text();
				var sauce = $(this).siblings('.sauce').text();
				
				//나만의 메뉴 등록
				$.ajax({
					url : "${pageContext.request.contextPath }/member/Latest-Order",
					type : "post",
					data : {
						"id" : id,
						"name" : name,
						"price" : price,
						"pic" : pic,
						"size" : size,
						"bread" : bread,
						"cheese" : cheese,
						"topping" : topping,
						"vegetable" : vegetable,
						"sauce" : sauce
					},
					success : function(data) {
						swal(data);
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
  

			
			var totalFinalPrice = 0;
			var orderCount = 0;
			$('tbody.todayOrderList tr').each(function() {
				
				var status = $(this).find('.orderStatus');
								
				if(status.text() == '0') {
					status.text('주문취소');
					status.attr('class', 'label label-danger');
				}else {
					if (status.text() == '1') {
						status.text('대기중');
						status.attr('class', 'label label-primary');
						$(this).find('.cancel-button').append('<button type="button" class="btn btn-outline btn-danger button-cancel">주문취소</button>');
					}else if (status.text() == '2') {
						status.text('준비중');
						status.children().attr('class', 'label label-warning');
					} else{
						status.text('준비완료');
						status.attr('class', 'label label-information');
					}
					
					totalFinalPrice += uncomma($(this).find('.finalPrice').text())*1;
					++orderCount;
				}
			}); 
			$('.total-count-order').text(orderCount);
			$('.total-order-price').text(comma(totalFinalPrice) + "원");
			
			
			
			
			
			
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
			        	location.href = '${ pageContext.request.contextPath}/orderManagement/orderCancel.do?no=' + no;
					});
			    });
			}
			
			//주문 취소 버튼 클릭 시 이벤트 발생 
			$('.button-cancel').each(function() {
				$(this).click(function() {
					var no = $(this).parent().siblings('.orderNumber').text();
					orderCancel(no);
				});
			});
});


function modalFunc(no) {
	var url = "${pageContext.request.contextPath}/member/todayOrderDetail.do?no=" + no;
	$('div.modal').modal().removeData();
    $('div.modal').modal({ remote : url  });
}
</script>




</head>
<body>
	<div class="body">
		<header id="header"
				data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
				<jsp:include page="/resources/include/top-new.jsp"/>
		</header>
		
		<!-- Mobile menu 부분 -->
			<jsp:include page="/resources/include/mobile-menu.jsp"/>
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
						<div style="margin-top: 2%; margin-right: 10%" class="col-md-3">
							<aside  class="sidebar">

								<h3 class="heading-primary">Categories</h3>
								<ul class="nav nav-list mb-xlg">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">내 정보</a></li>
									<li class="active">
										<a href="${ pageContext.request.contextPath}/member/Latest-Order.do?id=${loginVO.id}">최근 주문 내역</a>
									</li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
		</aside></div></div>
	
		<div class="row">
					<div class="col-lg-9">
						<div class="ibox">
							<div class="ibox-content">
								<div class="table-responsive">
									<table class="footable table table-stripped toggle-arrow-tiny dataTables-example" data-page-size="25">
										<thead>
											<tr style="margin-top: 15%">
												<th style="width: 45px" data-hide="phone" data-sort-ignore="true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
												<th  data-hide="phone" data-sort-ignore="true">번호</th>
												<th  data-hide="phone" data-sort-ignore="true">메뉴</th>
												<th data-hide="phone" data-sort-ignore="true">주문자</th>
												<th data-hide="phone" data-sort-ignore="true">주문금액</th>
												<th data-hide="phone" data-sort-ignore="true">결제방법</th>
												<th data-hide="phone" data-sort-ignore="true">주문상태</th>
												<th data-hide="phone" data-sort-ignore="true">주문취소</th>
											</tr>
										</thead>
										<tbody class= "todayOrderList">
										<c:choose>
										<c:when test="${ not empty cartList }">
										<c:forEach items="${ cartList }" var="cart">

											<tr class="cart-subtotal">
												<td class="cartNo" style="display: none;">${ cart.no }</td>
																<td class="id" style="display: none;">${ cart.id }</td>
																<td class="price" style="display: none;">${ cart.price }</td>
																
													
													<td class="convType orderNumber" width="100px;">
				                                    	${ cart.no }
			                                  		</td>
													<td>
													<a onclick = "modalFunc(${ cart.no })">
														${cart.name }
														
														</a>
			                                   		</td>
													<td width="10%" nowrap>
														${ cart.id }
													</td>	
													
													<td class = "commaN finalPrice">${ cart.price }원</td>											
													
													<td class = "cancel-button"></td>									
											</tr>
											
										</c:forEach>
										</c:when>
										<c:otherwise><h3 id="del">최근 주문 내용이 없습니다.</h3></c:otherwise>
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

	<!-- 모달 -->
	<div class="modal inmodal fade" id="myModal6" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 모달내용 -->
	
		 	</div>
			</div>
	</div>

	<!-- ---------------------------------------------------------------------------------------------- -->
		<footer id="footer" class="footer">
			<jsp:include page="/resources/include/bottom.jsp"/>
		</footer>

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
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

	<!-- Mainly scripts -->
	<script src="${ pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/js/jquery.metisMenu.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/js/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="${ pageContext.request.contextPath}/resources/js/inspinia.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/js/pace.min.js"></script>

</body>
</html>