<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
<!-- 이미지 캐러셀 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Head Libs -->
<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>

</head>
</head>
<body>

	<header id="header" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
		<jsp:include page="/resources/include/top-new.jsp" />
	</header>

	<!-- Mobile menu 부분 -->
	<jsp:include page="/resources/include/mobile-menu.jsp" />

	<div role="main" class="main">


		<section class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb">
							<li><a href="#">HOME</a></li>
							<li class="active">장바구니</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h1>장바구니</h1>
					</div>
				</div>
			</div>
		</section>

		<div class="container">
			<div class="row">

				<!-- START! -->
				<div class="col-md-12 shop">
					<div class="featured-boxes">
						<div class="row">
							<section class="section section-default">
								<div class="container">
									<div class="row">
										<div class="col-md-10">
											<p class="mb-none">
												주문서를 작성하기 전에 선택하신 <strong>상품명, 수량 및 가격</strong>이 정확한지 확인해 주세요.<br> 매장별 주문금액이 상이하니, 반드시 최소금액을 확인하기 바랍니다.<br>
											</p>
										</div>
									</div>
								</div>
							</section>

							<div class="row">
								<div class="col-md-8 col-lg-9">
									<div class="cart-table-wrap">
										<table class="cart-table">
											<thead>
												<tr>
													<th></th>
													<th></th>
													<th width=15%>메뉴</th>
													<th width="25%">주문옵션</th>
													<th>수량</th>
													<th width="10%">합계금액</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${ cartList }" var="cartVO">
													<tr>
														<td class="cartNo" style="display: none;">${ cartVO.no }</td>

														<td class="product-action-td remove_product"><a title="Remove product" class="btn-remove"><i class="fa fa-times"></i></a></td>
														<td class="product-image-td"><a href="#" title="Product Name"> <img class="pic" src="${ cartVO.pic }" alt="Product Name"></a></td>
														<td class="product-name-td">
															<h2 class="product-name">
																<a title="Product Name">
																	<div class="menu">${ cartVO.name }</div>
																	<div class="size">${ cartVO.size }</div>
																	<div class="commaN price">${ cartVO.price }원</div>
																</a>
															</h2>
														</td>
														<td>
															<div class="bread">${ cartVO.bread }</div>
															<div class="cheese">${ cartVO.cheese }</div>
															<div class="topping">${ cartVO.topping }</div>
															<div class="vegetable">${ cartVO.vegetable }</div>
															<div class="sauce">${ cartVO.sauce }</div>
															<div class="requirement">${ cartVO.requirement }</div>
														<td class="qty-total">
															<div class="qty-holder">
																<a class="qty-dec-btn" title="Dec">-</a> <input type="text" class="qty-input" value="${ cartVO.qty }"> <a class="qty-inc-btn" title="Inc">+</a> <a class="edit-qty"><i class="fa fa-pencil"></i></a>
															</div>
														</td>
														<td class="price-total"><span class="text-primary commaN total-price" style="color: black">${ cartVO.qty*cartVO.total_price }원</span></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<aside class="col-md-4 col-lg-3 sidebar shop-sidebar" id="payInfo">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a>결제정보</a>
												</h4>
											</div>
											<div id="panel-cart-total" class="accordion-body collapse in" aria-expanded="true">
												<div class="panel-body">
													<table class="totals-table">
														<tbody>
															<tr>
																<th>매장</th>
																<td>
																	<button type="button" class="chagee-store btn btn-borders btn-success mr-xs mb-sm" onclick="changeStore()" style="padding: 4px 4px 1px">변경</button> <strong class="storeName">${ cartStoreVO.storeName } </strong>
																</td>
															</tr>
															<tr>
																<th>주소</th>
																<td><div style="font-size: 12px">${ cartStoreVO.storeAddr }</div></td>
															</tr>
															<tr>
																<th>전화번호</th>
																<td><div>${ cartStoreVO.storePhone }</div></td>
															</tr>
															<tr>
																<th>수량</th>
																<td class="final-qty"></td>
															</tr>
															<tr>
																<th>총 가격</th>
																<td class="final-price commaN"></td>
															</tr>
														</tbody>
													</table>
													<div class="row">
														<div class="col-md-12">
															<div class="col-md-12 actions-continue">
																<button type="button" style="background-color: #0cc485; border: 0px; font-size: 12pt; font-weight: bold;" class="btn btn-tertiary mr-xs mb-sm cart-submit">주문하기</button>
																<button type="button" style="background-color: gray; border: 0px; font-size: 12pt; font-weight: bold;" class="btn btn-tertiary mr-xs mb-sm cart-button" onclick="menuList()">계속 쇼핑하기</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</aside>
							</div>
						</div>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div>


	<!-- 모달 -->
	<div class="modal order-modal-final" id="noAnimModal" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true" style="display: none;">
		<div class="modal-dialog" style="top: 30%">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #7aa93c; padding: 10px 20px 10px 10px">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color: white; font-size: 30px">×</button>
					<h4 class="modal-title" id="noAnimModalLabel" style="color: white;">결제</h4>
				</div>
				<div class="modal-body" style="text-align: center; padding: 20px 20px 20px">
					<h2 class="info">결제 하시겠습니까?</h2>
				</div>
				<div class="modal-footer" style="margin-top: 0px; padding: 10px 20px 20px;">
					<button type="button" class="btn btn-default confirm" style="color: white; background-color: #7aa93c;">확인</button>
												<button type="button" class="btn btn-default" data-dismiss="modal" style="color: #7aa93c; background-color: white; border-color: #7aa93c">취소</button>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		$(document).ready(function() {
					
			
				$('.cart-dropdown').hide();			
				
				
				if($('.storeName').text().length > 6) {
					$('.storeName').css('font-size',12);
				}
				
				$('#payInfo').stick_in_parent({
			         offset_top : 200
			    });
				
				
				var finalPrice = 0;
				var finalQty = 0;
				
				
				
				//총 가격
				for(var i = 0; i < $('.total-price').length; ++i) {
					finalPrice += uncomma($('.total-price').eq(i).text())*1;

				}
				
				
				//총 수량
				for(var i = 0; i < $('.qty-input').length; ++i) {
					finalQty += $('.qty-input').eq(i).val() * 1;
				}
				
				finalPrice = comma(finalPrice) + "원";
					
				$('.final-price').text(finalPrice);
				$('.final-qty').text(finalQty);
		
				
				//상품 삭제
				$('table .remove_product').each(function() {
					
					$(this).click(function() {
						var totalPrice = $(this).siblings('.price-total').find('.total-price').text();
						var totalQty = $(this).siblings('.qty-total').find('.qty-input').val();
						var finalPrice = $('.final-price').text();
						var finalQty = $('.final-qty').text();
						
						$(this).parent().remove();
						
						
						var no = $(this).siblings('.cartNo').text();
						
						//상품삭제
						$.ajax({
							url : "${pageContext.request.contextPath}/menu/deleteCart",
							type : "post",
							data : {
								"no" : no
							},
							success : function() {
								totalPrice = uncomma(totalPrice) * 1;
								finalPrice = uncomma(finalPrice) * 1;
								finalPrice -= totalPrice;
								finalPrice = comma(finalPrice) + "원";

								totalQty *= 1;
								finalQty *= 1;
								finalQty -= totalQty;

								$('.final-price').text(finalPrice);
								$('.final-qty').text(finalQty);
							}
						});
					});
				});
				
			 	//증감 ajax
				function productQtyUpdate(no, totalQty) {
					//DB업데이트
					$.ajax({
						url : "${pageContext.request.contextPath}/menu/productQtyUpdate",
						type : "post",
						data : {"no" : no, "totalQty" : totalQty}
					});
				}
				 
				//수량 증감
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
							
							
							//DB업데이트
							productQtyUpdate(no, totalQty)
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
							
							//합계금액
							$(this).parents('td').siblings('.price-total').children('.total-price').text(comma(totalPrice) + "원");
							$('.final-price').text(comma(finalPrice) + "원");
							$('.final-qty').text(finalQty);
							 
							$(this).siblings('.qty-input').val(totalQty);
							
							//DB업데이트
							productQtyUpdate(no, totalQty); 
							
					});
				});
				
				
				$('.cart-submit').click(function() {
					
					
					$(".order-modal-final").modal();

				});
				
				
				
				$('.confirm').click(function() {
						var length = $('.cart-table tr').length;
						
						var order = "";
						order += '${ cartStoreVO.storeName }' + "*";	//지점명
					    order += '${loginVO.id}' + "*";					//아이디
					    order += uncomma($('.final-price').text())  + "*";		//주문가격
					    order += uncomma($('.final-price').text())  +"--";		//총가격
	 					for(var i = 1; i < length; ++i) {
	 						
							var oneCart = $('.cart-table tr').eq(i);				   
							
						    order +=  oneCart.find('.menu').text() + "*";
						   	order += oneCart.find('.bread').text() + "*";
						   	order += oneCart.find('.cheese').text() + "*"; 
						   	order += oneCart.find('.topping').text() + "*";
						   	order += oneCart.find('.vegetable').text() + "*";
						   	order += oneCart.find('.sauce').text() + "*";
						   	order += oneCart.find('.requirement').text() + "*";
						   	order += oneCart.find('.pic').attr('src') + "*";
						   	order += oneCart.find('.size').text() + "*";
						   	order += oneCart.find('.qty-input').val() + "*";
						   	order += uncomma(oneCart.find('.price').text())  + "*";
						   	order += uncomma(oneCart.find('.price-total').text()) ;
						   	
						   	if(i + 1 < length ) {
						   		order += "||";
						   	}
						   		
						} 
					    
				    	$.ajax({
							url :  "${pageContext.request.contextPath}/order/insertOrder",
							type : "post",
							data : {"order" : order},
							success : function(){
							location.href = "${pageContext.request.contextPath}/index2.jsp";
							}
						}); 
				})
		});
		
		function menuList() {
			location.href = "${pageContext.request.contextPath}/menu/menuAll.do";
		}
		
		
		
		<!-- 
		function changeStore() {
			location.href = "${pageContext.request.contextPath}/store/findStore.do"
		}
		
	 	history.pushState(null, null, "${pageContext.request.contextPath}/menu/cart.do");

		window.onpopstate = function(event) {
		 history.go(1);
		}; 
	</script>

	<footer class="light visible-lg" id="footer">
		<jsp:include page="/resources/include/bottom.jsp"/>
	</footer>
	
	<footer class="light hidden-lg" id="footer">
		<jsp:include page="/resources/include/mobile-bottom.jsp"/>
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
	<script src="${ pageContext.request.contextPath}/resources/js/views/view.home.js"></script>

	<!-- Current Page Vendor and Views -->
	<script src="${ pageContext.request.contextPath}/resources/js/views/view.contact.js"></script>

	<!-- Demo -->
	<script src="${ pageContext.request.contextPath}/resources/js/demos/demo-shop-9.js"></script>

	<!-- Theme Custom -->
	<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>

	<!-- Theme Initialization Files -->
	<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

</body>
</html>