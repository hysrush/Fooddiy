<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/custom.css">
		<!-- 이미지 캐러셀 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
		
		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>


	

</head>
</head>
<body>
			<header id="header"
					data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
					<jsp:include page="/resources/include/top-new.jsp"/>
			</header>
			
			<!-- Mobile menu 부분 -->
			<jsp:include page="/resources/include/mobile-menu.jsp"/>

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
									<div class="col-md-2 hidden-xs hidden-sm">
										<div class="col-md-7 cart-title">
											<h5 class="heading-primary"><strong>장바구니</strong></h5>
										</div>
									</div>	
									
									<div class = "row">
										<div class="col-md-12">
											<hr style="size: 90%">
										</div>
									</div>
										
									<section class="section section-default">
										<div class="container">
											<div class="row">
												<div class="col-md-10">
													<p class="mb-none">
														주문서를 작성하기 전에 선택하신 <strong>상품명, 수량 및 가격</strong>이 정확한지 확인해 주세요.<br>
														매장별 주문금액이 상이하니, 반드시 최소금액을 확인하기 바랍니다.<br>
													</p>
												</div>
											</div>
										</div>
									</section>
								
									<div class="col-md-12">
										<div class="featured-box featured-box-primary align-left mt-sm">
											<div class="box-content">
												<form method="post" action="">
													<table class="shop_table cart">
														<thead>
															<tr>
																<th class="product-remove">
																	&nbsp;
																</th>
																<th class="product-thumbnail">
																	&nbsp;
																</th>
																<th class="product-name">
																	상품명
																</th>
																<th class="product-bread">
																	빵
																</th>
																<th class="product-add-ingredient">
																	추가재료
																</th>
																<th class="product-sauce">
																	소스
																</th>
																<th class="product-quantity">
																	수량
																</th>
																<th class="product-subtotal">
																	상품가격
																</th>
															</tr>
														</thead>
														<tbody>
															<tr class="cart_table_item">
																<td class="product-remove">
																	<a title="Remove this item" class="remove" href="#">
																		<i class="fa fa-times"></i>
																	</a>
																</td>
																<td class="product-thumbnail">
																	<a href="shop-product-sidebar.html">
																		<img width="200" height="200" alt="" class="img-responsive" 
																			src="${ pageContext.request.contextPath }/resources/img/menu/mn-Steak-Cheese.jpg">
																	</a>
																</td>
																<td class="product-name">
																	<a href="shop-product-sidebar.html">스테이크 & 치즈 - 15cm</a>
																</td>
																<td class="product-bread">
																	허니오트<br>
																</td>
																<td class="product-add-ingredient">
																	양상추(+0)<br>
																	할라피뇨(+0)<br>
																	아보카도(+1,100)<br>
																</td>
																<td class="product-sauce">
																	랜치드레싱<br>
																	핫 칠리<br>
																	올리브 오일<br>
																</td>
																<td class="product-quantity">
																	<form enctype="multipart/form-data" method="post" class="cart">
																		<div class="quantity">
																			<input type="button" class="minus" value="-">
																			<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
																			<input type="button" class="plus" value="+">
																		</div>
																	</form>
																</td>
																
																<td class="product-subtotal">
																	<span class="amount">6,100원</span>
																</td>
															</tr>
															<tr class="cart_table_item">
																<td class="product-remove">
																	<a title="Remove this item" class="remove" href="#">
																		<i class="fa fa-times"></i>
																	</a>
																</td>
																<td class="product-thumbnail">
																	<a href="shop-product-sidebar.html">
																		<img width="100" height="100" alt="" class="img-responsive" 
																			src="${ pageContext.request.contextPath }/resources/img/menu/mn-Turkey-Breast.jpg">
																	</a>
																</td>
																<td class="product-name">
																	<a href="shop-product-sidebar.html">터키 베이컨 - 15cm</a>
																</td>
																<td class="product-bread">
																	위트<br>
																</td>
																<td class="product-add-ingredient">
																	양상추(+0)<br>
																	양파(+0)<br>
																	더블치즈(+700)<br>
																	베이컨(+900)<br>
																</td>
																<td class="product-sauce">
																	허니 머스터드<br>
																	후추<br>
																</td>
																<td class="product-quantity">
																	<form enctype="multipart/form-data" method="post" class="cart">
																		<div class="quantity">
																			<input type="button" class="minus" value="-">
																			<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
																			<input type="button" class="plus" value="+">
																		</div>
																	</form>
																</td>
																<td class="product-subtotal">
																	<span class="amount">5,300원</span>
																</td>
															</tr>

														</tbody>
														
														<tfoot>
															<tr>
																<td colspan="8" class="price_info">
																	<p class=" store_info">
																		<span class="store">주문매장</span>
																		<strong class="store-at">서초점
																		</strong>
																	</p>
																	<p class="f_right all_price">
																		<span class="bold">총 상품금액</span>
																		<strong class="price_all">8,400원</strong>
																	</p>
																</td>
															</tr>
														</tfoot>
													</table>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-12">
									<div class="col-md-12 actions-continue" style="">
										<form method="post">
											<button type="submit" style="background-color: #0cc485; border: 0px; font-size: 12pt; font-weight: bold;"
													class="btn btn-tertiary mr-xs mb-sm cart-submit">주문하기</button>
											<button type="button" style="background-color: gray; border: 0px; font-size: 12pt; font-weight: bold;"
													class="btn btn-tertiary mr-xs mb-sm cart-button">계속 쇼핑하기</button>
										</form>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>

			</div>
			
			<footer id="footer">
				<jsp:include page="/resources/include/bottom.jsp" />
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