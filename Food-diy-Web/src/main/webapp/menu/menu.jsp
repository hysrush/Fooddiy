<%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Fooddiy-Order</title>

<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

<!-- Favicon -->
<link rel="shortcut icon"
	href="${ pageContext.request.contextPath}/resources/img/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon"
	href="${ pageContext.request.contextPath}/resources/img/apple-touch-icon.png">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Web Fonts  -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light"
	rel="stylesheet" type="text/css">

<!-- Vendor CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/animate/animate.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/simple-line-icons/css/simple-line-icons.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/assets/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.min.css">

<!-- Theme CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/theme.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/theme-elements.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/theme-blog.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/theme-shop.css">

<!-- Current Page CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/settings.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/layers.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/navigation.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/circle-flip-slideshow/css/component.css">

<!-- Skin CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/skins/skin-shop-9.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">

<!-- 이미지 캐러셀 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Head Libs -->
<script
	src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>


<!-- Theme Custom CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/custom.css">
</head>
<body>
	<div class="body">
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
								<li><a href="#">Menu</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>전체메뉴</h1>
						</div>
					</div>
				</div>
			</section>
			<div class="container">
				<div class="row">		
					<div class="col-md-3">
							<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">
								<h4 class="heading-primary">MENU</h4>
								<ul class="nav nav-list mb-xlg">
									<li class="active"><a href="#">전체메뉴</a></li>
									<li><a href="#">프리미엄</a></li>
									<li><a href="#">베스트</a></li>
									<li><a href="#">신제품</a></li>
									<li><a href="#">사이드 음료</a></li>
								</ul>
							</aside>
					</div>
					<div class="col-md-9">
						<div role="main" class="main shop">

							<div class="container">

								<div class="row">
									
									

									<div class="row">
										<div class="col-md-6">
											<h2 class="mb-none">
												<strong>프리미엄</strong>
											</h2>
											<p>PREMIUM MENU</p>
										</div>
									</div>

									<div class="row">

										<div class="masonry-loader masonry-loader-showing">
											<ul class="products product-thumb-info-list" data-plugin-masonry>
												<li class="col-md-4 col-sm-6 col-xs-6 product" >
													<span class="product-thumb-info" > 
														<a data-toggle="modal" data-target="#defaultModal" >
															 <span class="product-thumb-info-image">
															 	<img alt="" class="img-responsive" src="${ pageContext.request.contextPath }/resources/img/products/스테이크_치즈.jpg"  />
															</span>
														</a> 
														<span class="product-thumb-info-content"> 
															<a data-toggle="modal" data-target="#defaultModal">
																<div>
																
																	<div clsss = "tit" >
																		<h5>스테이크&치즈</h5>
																		<strong>3200원</strong>
																	</div>
																</div>
															</a>
														</span>
													</span>

												</li>
												<li class="col-md-4 col-sm-6 col-xs-6 product" >
													<span class="product-thumb-info" > 
														<a data-toggle="modal" data-target="#defaultModal" >
															 <span class="product-thumb-info-image">
															 	<img alt="" class="img-responsive" src="${ pageContext.request.contextPath }/resources/img/products/치킨_베이컨랜치.jpg"  />
															</span>
														</a> 
														<span class="product-thumb-info-content"> 
															<a data-toggle="modal" data-target="#defaultModal">
																<div style="text-align: center;">
																	<h5>치킨베이컨</h5>
																	<strong>3200원</strong>
																</div>
																
															</a>
														</span>
													</span>

												</li>
												<li class="col-md-4 col-sm-6 col-xs-6 product" >
													<span class="product-thumb-info" > 
														<a data-toggle="modal" data-target="#defaultModal" >
															 <span class="product-thumb-info-image">
															 	<img alt="" class="img-responsive" src="${ pageContext.request.contextPath }/resources/img/products/로스트_비프.jpg"  />
															</span>
														</a> 
														<span class="product-thumb-info-content"> 
															<a data-toggle="modal" data-target="#defaultModal">
																<div style="text-align: center;">
																	<h5>로스트 비프</h5>
																	<strong>3200원</strong>
																</div>
															</a>
														</span>
													</span>

												</li>
												<li class="col-md-4 col-sm-6 col-xs-6 product" >
													<span class="product-thumb-info" > 
														<a data-toggle="modal" data-target="#defaultModal" >
															 <span class="product-thumb-info-image">
															 	<img alt="" class="img-responsive" src="${ pageContext.request.contextPath }/resources/img/products/로스트치킨.jpg"  />
															</span>
														</a> 
														<span class="product-thumb-info-content"> 
															<a data-toggle="modal" data-target="#defaultModal">
																<div style="text-align: center;">
																	<h5>로스트 치킨</h5>
																	<strong>3200원</strong>
																</div>
															</a>
														</span>
													</span>

												</li>
												
												
												<li class="col-md-4 col-sm-6 col-xs-6 product" >
													<span class="product-thumb-info" > 
														<a data-toggle="modal" data-target="#defaultModal" >
															 <span class="product-thumb-info-image">
															 	<img alt="" class="img-responsive" src="${ pageContext.request.contextPath }/resources/img/products/서브웨이_멜트.jpg"  />
															</span>
														</a> 
														<span class="product-thumb-info-content"> 
															<a data-toggle="modal" data-target="#defaultModal">
																<div style="text-align: center;">
																	<h5>서브웨이 멜트</h5>
																	<strong>3200원</strong>
																</div>
															</a>
														</span>
													</span>

												</li>
												
												
												
												
											</ul>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<ul class="pagination pull-right">
												<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--모달  -->
			<div class="modal fade" id="defaultModal" tabindex="-1" role="dialog"
				aria-labelledby="defaultModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 1300px">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="defaultModalLabel">Menu</h4>
						</div>
						<div class="modal-body">

							<div role="main" class="main shop">

								<div class="container">

									<div class="row">
										<div class="col-md-12">
											<hr class="tall">
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">

											<div class="owl-carousel owl-theme"
												data-plugin-options="{'items': 1}">
												<div>
													<div class="thumbnail">
														<img alt="" class="img-responsive img-rounded"
															src="${ pageContext.request.contextPath }/resources/img/products/스테이크_치즈_모달.jpg">
													</div>
												</div>
											</div>

										</div>

										<div class="col-md-6">

											<div class="summary entry-summary">

												<h1 class="mb-none">
													<strong>스테이크&치즈</strong>
												</h1>


												<div title="Rated 5.00 out of 5" class="star-rating">
													<span style="width: 100%"><strong class="rating">5.00</strong>
														out of 5</span>
												</div>

												<p class="price">
													<span class="amount">3,200 won</span>
												</p>

												<p class="taller">푸짐한 스테이크에 살짝 녹은 치즈가 듬뿍! 보기만 해도 왜 사랑받는지
													아실 수 있을거에요. 스테이크의 달콤한 풍비와 풍부한 식감으로 모든 이들을 잡아끄는 맛입니다.</p>

												<form enctype="multipart/form-data" method="post"
													class="cart">
													<div class="quantity">
														<input type="button" class="minus" value="-"> <input
															type="text" class="input-text qty text" title="Qty"
															value="1" name="quantity" min="1" step="1"> <input
															type="button" class="plus" value="+">
													</div>
													<button href="#" class="btn btn-primary btn-icon">Add
														to cart</button>
												</form>

												<div class="product_meta">
													<span class="posted_in">Categories: <a rel="tag"
														href="#">Steak</a>, <a rel="tag" href="#">Cheese</a>.
													</span>
												</div>

											</div>


										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="tabs tabs-product">
												<ul class="nav nav-tabs">
													<li class="active"><a href="#productInfo"
														data-toggle="tab">영양 정보</a></li>
												</ul>
												<div class="tab-content">
													<div class="tab-pane active" id="productInfo">
														<table class="table table-striped mt-xl">
															<tbody>
																<tr>
																	<th>칼로리</th>
																	<td>390.0</td>
																</tr>
																<tr>
																	<th>총지방(g)</th>
																	<td>10.0</td>
																</tr>
																<tr>
																	<th>콜레스테롤(mg)</th>
																	<td>50.0</td>
																</tr>
																<tr>
																	<th>나트륨(mg)</th>
																	<td>1030.0</td>
																</tr>
																<tr>
																	<th>단백질(g)</th>
																	<td>26.0</td>
																</tr>
																<tr>
																	<th>탄수화물(g)</th>
																	<td>48.0</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<hr class="tall">

											<h4 class="mb-md text-uppercase">
												관련 <strong>SNS</strong>
											</h4>

											<div class="row">

												<ul class="products product-thumb-info-list">
													<li class="col-sm-3 col-xs-12 product"><a
														href="shop-product-sidebar.html"> </a> <span
														class="product-thumb-info"> <a
															href="shop-cart.html" class="add-to-cart-product"> <span><i
																	class="fa fa-shopping-cart"></i> Add to Cart</span>
														</a> <a href="shop-product-sidebar.html"> <span
																class="product-thumb-info-image"> <span
																	class="product-thumb-info-act"> <span
																		class="product-thumb-info-act-left"><em>View</em></span>
																		<span class="product-thumb-info-act-right"><em><i
																				class="fa fa-plus"></i> Details</em></span>
																</span> <img alt="" class="img-responsive"
																	src="${ pageContext.request.contextPath }/resources/img/products/product-1.jpg">
															</span>
														</a> <span class="product-thumb-info-content"> <a
																href="shop-product-sidebar.html">
																	<h4>스테이크</h4> <span class="price"> <del>
																			<span class="amount">$325</span>
																		</del> <ins>
																			<span class="amount">$299</span>
																		</ins>
																</span>
															</a>
														</span>
													</span></li>
													<li class="col-sm-3 col-xs-12 product"><span
														class="product-thumb-info"> <a
															href="shop-cart.html" class="add-to-cart-product"> <span><i
																	class="fa fa-shopping-cart"></i> Add to Cart</span>
														</a> <a href="shop-product-sidebar.html"> <span
																class="product-thumb-info-image"> <span
																	class="product-thumb-info-act"> <span
																		class="product-thumb-info-act-left"><em>View</em></span>
																		<span class="product-thumb-info-act-right"><em><i
																				class="fa fa-plus"></i> Details</em></span>
																</span> <img alt="" class="img-responsive"
																	src="${ pageContext.request.contextPath }/resources/img/products/product-2.jpg">
															</span>
														</a> <span class="product-thumb-info-content"> <a
																href="shop-product-sidebar.html">
																	<h4>치즈</h4> <span class="price"> <span
																		class="amount">$72</span>
																</span>
															</a>
														</span>
													</span></li>
													<li class="col-sm-3 col-xs-12 product"><span
														class="product-thumb-info"> <a
															href="shop-cart.html" class="add-to-cart-product"> <span><i
																	class="fa fa-shopping-cart"></i> Add to Cart</span>
														</a> <a href="shop-product-sidebar.html"> <span
																class="product-thumb-info-image"> <span
																	class="product-thumb-info-act"> <span
																		class="product-thumb-info-act-left"><em>View</em></span>
																		<span class="product-thumb-info-act-right"><em><i
																				class="fa fa-plus"></i> Details</em></span>
																</span> <img alt="" class="img-responsive"
																	src="${ pageContext.request.contextPath }/resources/img/products/product-3.jpg">
															</span>
														</a> <span class="product-thumb-info-content"> <a
																href="shop-product-sidebar.html">
																	<h4>스테이크 치즈</h4> <span class="price"> <span
																		class="amount">$60</span>
																</span>
															</a>
														</span>
													</span></li>
													<li class="col-sm-3 col-xs-12 product"><span
														class="product-thumb-info"> <a
															href="shop-cart.html" class="add-to-cart-product"> <span><i
																	class="fa fa-shopping-cart"></i> Add to Cart</span>
														</a> <a href="shop-product-sidebar.html"> <span
																class="product-thumb-info-image"> <span
																	class="product-thumb-info-act"> <span
																		class="product-thumb-info-act-left"><em>View</em></span>
																		<span class="product-thumb-info-act-right"><em><i
																				class="fa fa-plus"></i> Details</em></span>
																</span> <img alt="" class="img-responsive"
																	src="${ pageContext.request.contextPath }/resources/img/products/product-4.jpg">
															</span>
														</a> <span class="product-thumb-info-content"> <a
																href="shop-product-sidebar.html">
																	<h4>스테이크</h4> <span class="price"> <span
																		class="amount">$199</span>
																</span>
															</a>
														</span>
													</span></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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