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

<title> | 최극 주문 내역 | </title>

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
	
		$('.qty-holder').each(function() {
			var totalQty = 0;
			var totalPrice = 0;
			var finalPrice = 0;
			var oneProductPrice = 0;
			var no = 0;
			//감소
			$(this).children('.qty-dec-btn').click(function() {
				totalQty = $(this).siblings('.qty-input').val() * 1;
				if(totalQty > 1) {
					no = $(this).parents('td').siblings('.cartNo').text();
					totalPrice = $(this).parents('td').siblings('.price-total').children('.total-price').text();

					finalPrice = $('.final-price').text();
					finalQty = $('.final-qty').text() * 1;
					
					totalPrice = uncomma(totalPrice) * 1;
					finalPrice = uncomma(finalPrice) * 1;
					
					oneProductPrice = totalPrice / totalQty;
					
					totalPrice -= oneProductPrice;
					finalPrice -= oneProductPrice;
					
					totalQty -= 1
					finalQty -= 1;
					
					$(this).parents('td').siblings('.price-total').children('.total-price').text(comma(totalPrice) + "원");
					
					$('.final-price').text(comma(finalPrice) + "원");
					$('.final-qty').text(finalQty);
					 
					 
					 
					$(this).siblings('.qty-input').val(totalQty);
				}
			});
			
			//증가
			$(this).children('.qty-inc-btn').click(function() {
					no = $(this).parents('td').siblings('.cartNo').text();
				
					totalQty = $(this).siblings('.qty-input').val() * 1;
					totalPrice = $(this).parents('td').siblings('.price-total').children('.total-price').text();
				
					finalPrice = $('.final-price').text();
					finalQty = $('.final-qty').text() * 1;
					
					totalPrice = uncomma(totalPrice) * 1;
					finalPrice = uncomma(finalPrice) * 1;
					
					oneProductPrice = totalPrice / totalQty;
					
					totalPrice += oneProductPrice;
					finalPrice += oneProductPrice;
					
					totalQty += 1
					finalQty += 1;
					
					 
					$(this).siblings('.qty-input').val(totalQty);
					
			});
			
		});
		
		
		$("#cartgo").click(function(){
			
			
			
			
		});
		
		$("#sns").click(function(){
			// sns 등록폼으로 이동
			location.href="${pageContext.request.contextPath}/community/snsPage.do"; 
		});
		
		$("#order").click(function(){
			
			swal("주문이 완료되었습니다.");
		});
		
		// 나만의 메뉴 삭제
		$("#del").click(function(){
			
			var no = [];
			
			$("input[name='cart']:checked").each(function() {
				no.push($(this).val());
		    });
			
			console.log(no);
			
			// controller로 배열 넘길 때 세팅 바꿔 줌
			jQuery.ajaxSettings.traditional = true;
		
			$.ajax({
				url : "${pageContext.request.contextPath}/member/myMenuDel.do",
				type : "post",
				data : {
					noList : no
				},
				success : function(data){
					location.reload();
				}
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


	function mymodal(mymenuNo) {
	    $('div.modal').modal().removeData();
	    var url = '${ pageContext.request.contextPath}/member/myMenuDetail.do?no=' + mymenuNo;
	    $('div.modal').modal({ remote : url });
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
				<div class="row col-lg-3">
					<div style="width: 600px">
						<div style="margin-top: 2%; margin-right: 10%" class="col-md-3 hidden-xs">
							<aside  class="sidebar">

								<h3 class="heading-primary">Categories</h3>
								<ul class="nav nav-list mb-xlg">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">내 정보</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/Latest-Order.do">최근 주문 내역</a> </li>
									<li class="active"><a href="${ pageContext.request.contextPath}/member/myMenu.do">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
							</aside>		
						</div>
					</div>
				</div>	
	
				<div class="row">
							<div class="col-lg-9">
								<div class="ibox">
									<div class="ibox-content">
										<div class="table-responsive">
											 <table class="footable table table-stripped toggle-arrow-tiny dataTables-example"  data-page-size="25">
												<thead>
													<tr style="font-size:15px; margin-top: 15%">
														<th  data-hide="phone" data-sort-ignore="true"></th>
														<th data-hide="phone" data-sort-ignore="true">메뉴</th>
														<th style="width: 70px" data-hide="phone" data-sort-ignore="true">주문자</th>
														<th data-hide="phone" data-sort-ignore="true">주문금액</th>
													</tr>
												</thead>
												<tbody class= "todayOrderList">
												<c:choose>
												<c:when test="${ not empty orderList }">
												<c:forEach items="${ orderList }" var="order">
		
													<tr class="cart-subtotal">
														<td class="cartNo" style="display: none;">${ order.no }</td>
						                                <td><input name="cart" type="checkbox" value="${ order.no }"></td>
														<td>
															<a style=" width: 230px" onclick = "mymodal(${ order.no })">
																<c:forEach items = "${  order.detailOrderList }" var = "oneOrder" varStatus="status">
																	${ oneOrder.name }
																<c:if test="${ !status.last }">, </c:if>
															</c:forEach>
															</a>
					                             		</td>
														<td width="20%" nowrap>
															${ order.id }
														</td>	
														
														<td class = "commaN finalPrice">${ order.final_price }원</td>											
														<td>	
															<span class="orderStatus label label-primary">장바구니 담기</span>
														</td>
													</tr>
												</c:forEach>
											
<<<<<<< HEAD
												</c:when>
												<c:otherwise><h3 id="del">최근 주문 내용이 없습니다.</h3></c:otherwise>
												</c:choose>
												</tbody>
											</table> 
										</div>					
										
										<div  align="center" style="font-size:15; margin-top:8%; margin-left: 74%">	
											<button class="btn btn-primary" data-toggle="modal" data-target="#formModal">메뉴삭제</button>
											<button class="btn btn-primary" data-toggle="modal" data-target="#formModal">sns글 등록</button>
											<!-- <button style=" width: 80px; height: 30px; font-size: 10px" type="button" class="btn btn-primary col-md-3" id="del">메뉴삭제</button>
											<button style=" width: 80px; height: 30px; font-size: 10px" type="button" class="btn btn-primary col-md-3"> SNS글등록</button> -->
										</div>  
									</div>
								</div>
=======
										</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="8" align="center"><h3 id="del" style="font-weight:bold;"><br/>최근 주문 내용이 없습니다.</h3></td>
											</tr>
										</c:otherwise>
										</c:choose>
										</tbody>
									</table>
								</div>						
																<div class="row">
																<div class="col-md-8 col-xs-5"></div>	
																<div class="col-md-4 col-xs-6" align="center" style="font-size:15; margin-top:7%; margin-left: 0%">	
																<button style=" width: 80px; height: 30px; font-size: 13px" type="button" class="btn btn-primary btn-icon" id="del">메뉴삭제</button>
																<button style="margin-left:1%; width: 80px; height: 30px; font-size: 13px" type="button" class="btn btn-primary btn-icon"> SNS글등록</button>
								</div>							
>>>>>>> branch 'master' of https://github.com/hysrush/Fooddiy.git
							</div>
						</div>
					</div>
				</div>
			</div>
<<<<<<< HEAD

=======
		</div>
	</div>
</div>
</div>
>>>>>>> branch 'master' of https://github.com/hysrush/Fooddiy.git
	<!-- 모달 -->
	<div class="modal inmodal fade" id="myModal6" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 모달내용 -->
	
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