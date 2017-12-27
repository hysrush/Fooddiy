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
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">
<!-- 이미지 캐러셀 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Head Libs -->
<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>
<!-- alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<script>
	$(document).ready(function(){
		
		if("${msg}"){
			swal("${msg}");
		}
	});
</script>
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
							<li><a href="${ pageContext.request.contextPath }/main/Start">HOME</a></li>
							<li><a href="${ pageContext.request.contextPath }/menu/cart.do">장바구니</a></li>
							<li class="active">결제</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h1>결제</h1>
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
								<aside class="col-md-12 sidebar shop-sidebar payment-info">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a>1. 고객정보</a>
												</h4>
											</div>
											<div id="panel-cart-total" class="accordion-body collapse in" aria-expanded="true">
												<div class="panel-body">
													<table class = "user-info">
														<tbody>
															<tr>
																<th><div>주문자</div></th>
																<td>
																	<div>${ loginVO.name }</div>
																</td>
															</tr>
															<tr>
																<th><div>핸드폰</div></th>
																<td>
																	<div>${ loginVO.phone }</div>
																</td>
															</tr>
															<tr>
																<th><div>매장</div></th>
																<td>
																	<div>${ cartStoreVO.storeName }점 ${ cartStoreVO.storeAddr }</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</aside>
							</div>
							
							
							<div class="row">
								<aside class="col-md-12 sidebar shop-sidebar payment-info">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a>2. 주문내역</a>
												</h4>
											</div>
											<div id="panel-cart-total" class="accordion-body collapse in" aria-expanded="true">
												<div class="panel-body">
													<table class="cart-table">
														<thead>
															<tr>
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
			
																	<td class="product-action-td remove_product" style="display: none;"><a title="Remove product" class="btn-remove"><i class="fa fa-times"></i></a></td>
																	<td class="product-image-td" style="display: none;"><a href="#" title="Product Name"> <img class="pic" src="${ cartVO.pic }" alt="Product Name"></a></td>
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
																	<td>
																		<div class="qty-total">${ cartVO.qty }개</div>
																	</td>
																	<td class="price-total"><span class="text-primary commaN total-price" style="color: black">${ cartVO.qty*cartVO.total_price }원</span></td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</aside>
							</div>
							
							
							<div class="row">
								<div class = "col-md-8">
								<aside class=" sidebar shop-sidebar payment-info">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a>3. 포장/매장식사 선택</a>
												</h4>
											</div>
											<div id="panel-cart-total" class="accordion-body collapse in" aria-expanded="true">
												<div class="panel-body">
													<table>
														<tbody>
															<tr>
																<th><div style="width: 165.56px">식사방식</div></th>
																<td>
																	<div class = "select-option">
																		<div class ="col"><input type="radio" name="select-eatType" value="매장식사" checked/><label>매장식사</label></div>
																		<div class ="col"><input type="radio" name="select-eatType" value="포장"/><label>포장</label></div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</aside>
								
								<aside class="sidebar shop-sidebar payment-info">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a>4. 결제방식</a>
												</h4>
											</div>
											<div id="panel-cart-total" class="accordion-body collapse in" aria-expanded="true">
												<div class="panel-body">
													<table>
														<tbody>
															<tr>
																<th><div>온라인결제</div></th>
																<td>
																	<div class ="select-option">
																		<div class ="col"><input type="radio" name="select-payment" value="카드결제" /><label>카드결제</label></div>
																		<div class ="col"><input type="radio" name="select-payment" value="핸드폰결제"/><label>핸드폰결제</label></div>
																		<div class ="col"><input type="radio" name="select-payment" value="카카오페이"/><label class = "kakaoPay"></label></div>
																		<div class ="col"><input type="radio" name="select-payment" value="네이버페이"/><label class = "naverPay"></label></div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</aside>
								</div>
								<aside class="col-md-4 sidebar shop-sidebar payment-info">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a>5. 계산하기</a>
												</h4>
											</div>
											<div id="panel-cart-total" class="accordion-body collapse in" aria-expanded="true">
												<div class="panel-body" style="height: 292px">
													<table class="final-table">
														<tbody>
															<tr>
																<th style="width: 120px">총 주문금액</th>
																<td class="totalPrice"></td>
															</tr>
															<tr style="width: 120px">
																<th>최종 결제금액</th>
																<td class="finalPrice"></td>
															</tr>
															<tr></tr>
														</tbody>
													</table>
													<div class="row">
														<div class="col-md-12">
															<div class="col-md-12 actions-continue" style="padding-left: 0px">
																<button type="submit" class="btn btn-tertiary mr-xs mb-sm payment-submit" >결제하기</button>
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
   
   <div class="modal order-modal-warning" id="noAnimModal" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true" style="display: none;">
      <div class="modal-dialog" style="top: 30%">
         <div class="modal-content">
            <div class="modal-header" style="background-color: #7aa93c; padding: 10px 20px 10px 10px">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color: white; font-size: 30px">×</button>
               <h4 class="modal-title" id="noAnimModalLabel" style="color: white;">Waring</h4>
            </div>
            <div class="modal-body" style="text-align: center; padding: 20px 20px 20px">
               <h2 class="info">결제방법을 선택해 주세요!</h2>
            </div>
            <div class="modal-footer" style="margin-top: 0px; padding: 10px 20px 20px;">
               <button type="button" class="btn btn-default" data-dismiss="modal" style="color: #7aa93c; background-color: white; border-color: #7aa93c">취소</button>
            </div>
         </div>
      </div>
   </div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.cart-dropdown').hide();
			
			
			var finalPrice = 0;
			//총 가격
			for(var i = 0; i < $('.total-price').length; ++i) {
				finalPrice += uncomma($('.total-price').eq(i).text())*1;

			}
			finalPrice = comma(finalPrice) + "원";
			$('.totalPrice').text(finalPrice);
			$('.finalPrice').text(finalPrice);
			
			
			//모달
            $('.payment-submit').click(function() {
                
            	var t = $(":input:radio[name=select-payment]:checked").val();
            	if(!$(":input:radio[name=select-payment]:checked").val()){
                	$(".order-modal-warning").modal();
            		
            	}else {
                	$(".order-modal-final").modal();
            	}
            });
			
			$('.confirm').click(function() {
				var length = $('.cart-table tr').length;
				
				var order = "";
				order += '${ cartStoreVO.storeName }' + "*";	//지점명
			    order += '${loginVO.id}' + "*";					//아이디
			    order += uncomma($('.totalPrice').text())  + "*";		//주문가격
			    order += uncomma($('.finalPrice').text())  +"*";		//총가격
			    order += $(":input:radio[name=select-eatType]:checked").val() +"*";	//매장식사, 포장
			    order += $(":input:radio[name=select-payment]:checked").val() +"--";	//결제방법

			    //메뉴
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
			   	order += uncomma(oneCart.find('.qty-total').text()) + "*";
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
					location.href = "${ pageContext.request.contextPath }/main/Start";
					}
				}); 
			})
		}); 
	</script>

	<footer class="light visible-lg" id="footer">
		<jsp:include page="/resources/include/bottom.jsp" />
	</footer>

	<footer class="light hidden-lg" id="footer">
		<jsp:include page="/resources/include/mobile-bottom.jsp" />
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