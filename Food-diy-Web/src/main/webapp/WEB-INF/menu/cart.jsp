<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
							ss
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
													<th>메뉴</th>
													<th>주문옵션</th>
													<th>수량</th>
													<th>합계금액</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="product-action-td"><a href="#" title="Remove product" class="btn-remove"><i class="fa fa-times"></i></a></td>
													<td class="product-image-td"><a href="#" title="Product Name"> <img src="${ cartVO.pic }" alt="Product Name">
													</a></td>
													<td class="product-name-td">
														<h2 class="product-name">
															<a href="#" title="Product Name">${ cartVO.name } ${ cartVO.size }</a>
														</h2>
													</td>
													<td>${ cartVO.bread } <br>${ cartVO.cheese }<br>${ cartVO.topping } <br>${ cartVO.vegetable }<br>${ cartVO.sauce }</td>
													<td>
														<div class="qty-holder">
															<a href="#" class="qty-dec-btn" title="Dec">-</a> <input type="text" class="qty-input" value="1"> <a href="#" class="qty-inc-btn" title="Inc">+</a> <a href="#" class="edit-qty"><i class="fa fa-pencil"></i></a>
														</div>
													</td>
													<td><span class="text-primary">${ cartVO.price }원</span></td>
												</tr>
												<tr>
													<td class="product-action-td"><a href="#" title="Remove product" class="btn-remove"><i class="fa fa-times"></i></a></td>
													<td class="product-image-td"><a href="#" title="Product Name"> <img src="../img/demos/shop/products/cart-product2.jpg" alt="Product Name">
													</a></td>
													<td class="product-name-td">
														<h2 class="product-name">
															<a href="#" title="Product Name">Black Utility Top</a>
														</h2>
													</td>
													<td>$49.00</td>
													<td>
														<div class="qty-holder">
															<a href="#" class="qty-dec-btn" title="Dec">-</a> <input type="text" class="qty-input" value="1"> <a href="#" class="qty-inc-btn" title="Inc">+</a> <a href="#" class="edit-qty"><i class="fa fa-pencil"></i></a>
														</div>
													</td>
													<td><span class="text-primary">$49.00</span></td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="6" class="clearfix">
														<button class="btn btn-default hover-primary btn-continue">Continue Shopping</button>
														<button class="btn btn-default hover-primary btn-update">Update Shopping Cart</button>
														<button class="btn btn-default hover-primary btn-clear">Clear Shopping Cart</button>
													</td>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
								<aside class="col-md-4 col-lg-3 sidebar shop-sidebar">
									<div class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" href="#panel-cart-total" aria-expanded="true"> Cart Totals </a>
												</h4>
											</div>
											<div id="panel-cart-total" class="accordion-body collapse in" aria-expanded="true" style="">
												<div class="panel-body">
													<table class="totals-table">
														<tbody>
															<tr>
																<td>Subtotal</td>
																<td>$159.00</td>
															</tr>
															<tr>
																<td>Grand Total</td>
																<td>$159.00</td>
															</tr>
														</tbody>
													</table>

													<div class="row">
														<div class="col-md-12">
															<div class="col-md-12 actions-continue" style="">
																<form method="post">
																	<button type="submit" style="background-color: #0cc485; border: 0px; font-size: 12pt; font-weight: bold;" class="btn btn-tertiary mr-xs mb-sm cart-submit">주문하기</button>
																	<button type="button" style="background-color: gray; border: 0px; font-size: 12pt; font-weight: bold;" class="btn btn-tertiary mr-xs mb-sm cart-button">계속 쇼핑하기</button>
																</form>
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

	<footer id="footer">
		<jsp:include page="/resources/include/bottom.jsp" />
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