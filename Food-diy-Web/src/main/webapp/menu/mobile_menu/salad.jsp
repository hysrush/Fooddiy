<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
								<li class="active">Salad</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>샐러드</h1>
						</div>
					</div>
				</div>
			</section>

			<div class="container">

				<div class="row">

					<div class="col-md-3">
						<aside class="sidebar hidden-sm hidden-xs" data-plugin-sticky
							data-plugin-options="{ 'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110} }">
							<h4 class="heading-primary">MENU</h4>
							<ul class="nav nav-list sort-source" data-sort-id="portfolio"
								data-option-key="filter"
								data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
								<li data-option-value="*" class="active"><a href="#">전체메뉴</a></li>
								<li data-option-value=".recommend"><a href="#">추천메뉴</a></li>
								<li data-option-value=".premium"><a href="#">프리미엄</a></li>
								<li data-option-value=".best"><a href="#">베스트</a></li>
								<li data-option-value=".classic"><a href="#">클래식</a></li>
								<li data-option-value=".breakfast"><a href="#">아침식사</a></li>
								<li data-option-value=".salad"><a href="#">샐러드</a></li>
								<li data-option-value=".addition"><a href="#">추가메뉴</a></li>
								<li data-option-value=".beverage"><a href="#">음료</a></li>
							</ul>
						</aside>						
					</div>					


					<div class="col-md-9">
						<aside id="lnb" class="hidden-md hidden-lg">
							<nav>
								<ul>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/menu2.jsp">전체메뉴</a>
									</li>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/recommend.jsp">추천메뉴</a>
									</li>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/premium.jsp">프리미엄</a>
									</li>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/best.jsp">베스트</a>
									</li>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/classic.jsp">클래식</a>
									</li>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/breakfast.jsp">아침식사</a>
									</li>
									<li class="active">
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/salad.jsp">샐러드</a>
									</li>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/addition.jsp">추가메뉴</a>
									</li>
									<li>
										<a href="${ pageContext.request.contextPath }/menu/mobile_menu/beverage.jsp">음료</a>
									</li>
								</ul>
							</nav>						
						</aside>
						
						
						
						
						
						
						

						<ul class="nav nav-pills sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}"></ul>
						<div class="row">
							<div class="sort-destination-loader sort-destination-loader-showing">
								<ul class="portfolio-list sort-destination"	data-sort-id="portfolio">
								
								
									<!-- 샐러드 -->
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_loastbeef.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">로스트 비프</span> <span
														class="thumb-info-type">5,800</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_ebi_avocado.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">슈림프 아보카도</span> <span
														class="thumb-info-type">4,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_BLT.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">BLT</span> <span
														class="thumb-info-type">4,100</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_subwayclub.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">서브웨이클럽</span> <span
														class="thumb-info-type">5,400</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_namahamu_maskalu.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">햄&마스카르포네</span> <span
														class="thumb-info-type">5,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_cheese_loastchiken.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">치즈로스트치킨</span> <span
														class="thumb-info-type">4,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_teriyakichiken.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">데리야끼치킨</span> <span
														class="thumb-info-type">4,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_turkeybrest.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">터키</span> <span
														class="thumb-info-type">4,500</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_ham.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">햄</span> <span
														class="thumb-info-type">4,500</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_egg.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">달걀</span> <span
														class="thumb-info-type">3,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_avocado_veggie.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">아보카도</span> <span
														class="thumb-info-type">3,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-salad_vegee_delight.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">야채</span> <span
														class="thumb-info-type">3,000</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">

		<footer id="footer">
			<jsp:include page="/resources/include/bottom.jsp" />
		</footer>

	</div>


	<!-- 모달들 -->
	<div class="modal fade" id="largeModal" tabindex="-1" role="dialog"
		aria-labelledby="largeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="largeModalLabel">MENU</h4>
				</div>
				<div class="modal-body shop">



					<!-- 모달 속 상세내용 -->

					<div class="row">
						<div class="col-md-12">
							<!-- <hr class="tall"> -->
						</div>
					</div>

					<div class="row">
						<div class="col-md-6">

							<div class="owl-carousel owl-theme"
								data-plugin-options="{'items': 1}">
								<div>
									<div class="thumbnail"
										style="margin-top: 90px; margin-bottom: 90px">
										<img alt="" class="img-responsive img-rounded"
											src="${ pageContext.request.contextPath }/resources/img/menu_detail/steak_and_cheese.jpg">
									</div>
								</div>
							</div>

						</div>

						<div class="col-md-6">

							<div class="summary entry-summary">

								<h1 class="mb-none">
									<strong>스테이크 & 치즈</strong>
								</h1>
								<div>스테이크 1 스쿱, 치즈 2장</div>

								<div class="review_num">
									<span class="count" itemprop="ratingCount">4</span> reviews
								</div>

								<div title="Rated 5.00 out of 5" class="star-rating">
									<span style="width: 100%"><strong class="rating">4.50</strong>
										out of 5</span>
								</div>

								<p class="price">
									<span class="amount">6,100원</span>
								</p>

								<p class="taller">
									푸짐한 스테이크에 살짝 녹은 치즈가 듬뿍! 보기만 해도 왜 사랑받는지 아실 수 있을거에요. <br>스테이크의
									달콤한 풍미와 풍부한 식감으로 모든 이들을 잡아끄는 맛입니다.
								</p>
								<p class="inch">
									<input type="radio" name="chk_info" value="HTML" checked="checked"><span
										style="font-size: 18px; margin-left: 5px; margin-right: 20px">15cm</span>
									<input type="radio" name="chk_info" value="CSS"
										><span
										style="font-size: 18px; margin-left: 5px">30cm</span>
								</p>



								<form enctype="multipart/form-data" method="post" class="cart">
									<div class="quantity">
										<input type="button" class="minus" value="-"> <input
											type="text" class="input-text qty text" title="Qty" value="1"
											name="quantity" min="1" step="1"> <input
											type="button" class="plus" value="+">
									</div>
									<button href="#" class="btn btn-primary btn-icon">주문하기</button>
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
										data-toggle="tab">영양정보</a></li>
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



					<!-- SNS -->
					<div class="row">
						<div class="col-md-12">
							<hr class="tall">

							<h4 class="mb-md text-uppercase">
								<strong>SNS</strong> Review
							</h4>

							<div class="row">

								<ul class="team-list sort-destination" data-sort-id="team">
									<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
										<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
											<span class="thumb-info-wrapper"> <a
												href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
													<img
													src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
													class="img-responsive" alt=""> <!-- <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">John Doe</span>
														<span class="thumb-info-type">CEO</span>
												</span> -->
											</a>
										</span> <span class="thumb-info-caption"> <span
												class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
												class="thumb-info-social-icons"> <a target="_blank"
													href="http://www.facebook.com"><i
														class="fa fa-facebook"></i><span>Facebook</span></a> <a
													target="_blank" href="http://www.twitter.com"><i
														class="fa fa-twitter"></i><span>Twitter</span></a> <a
													target="_blank" href="http://www.instagram.com"><i
														class="fa fa-instagram"></i><span>Instagram</span></a>
											</span>
										</span>
									</span>
									</li>
									<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
										<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
											<span class="thumb-info-wrapper"> <a
												href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
													<img
													src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
													class="img-responsive" alt=""> <!-- <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">John Doe</span>
														<span class="thumb-info-type">CEO</span>
												</span> -->
											</a>
										</span> <span class="thumb-info-caption"> <span
												class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
												class="thumb-info-social-icons"> <a target="_blank"
													href="http://www.facebook.com"><i
														class="fa fa-facebook"></i><span>Facebook</span></a> <a
													target="_blank" href="http://www.twitter.com"><i
														class="fa fa-twitter"></i><span>Twitter</span></a> <a
													target="_blank" href="http://www.instagram.com"><i
														class="fa fa-instagram"></i><span>Instagram</span></a>
											</span>
										</span>
									</span>
									</li>
									<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
										<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
											<span class="thumb-info-wrapper"> <a
												href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
													<img
													src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
													class="img-responsive" alt=""> <!-- <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">John Doe</span>
														<span class="thumb-info-type">CEO</span>
												</span> -->
											</a>
										</span> <span class="thumb-info-caption"> <span
												class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
												class="thumb-info-social-icons"> <a target="_blank"
													href="http://www.facebook.com"><i
														class="fa fa-facebook"></i><span>Facebook</span></a> <a
													target="_blank" href="http://www.twitter.com"><i
														class="fa fa-twitter"></i><span>Twitter</span></a> <a
													target="_blank" href="http://www.instagram.com"><i
														class="fa fa-instagram"></i><span>Instagram</span></a>
											</span>
										</span>
									</span>
									</li>
									<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
										<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
											<span class="thumb-info-wrapper"> <a
												href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
													<img
													src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
													class="img-responsive" alt=""> <!-- <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">John Doe</span>
														<span class="thumb-info-type">CEO</span>
												</span> -->
											</a>
										</span> <span class="thumb-info-caption"> <span
												class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
												class="thumb-info-social-icons"> <a target="_blank"
													href="http://www.facebook.com"><i
														class="fa fa-facebook"></i><span>Facebook</span></a> <a
													target="_blank" href="http://www.twitter.com"><i
														class="fa fa-twitter"></i><span>Twitter</span></a> <a
													target="_blank" href="http://www.instagram.com"><i
														class="fa fa-instagram"></i><span>Instagram</span></a>
											</span>
										</span>
									</span>
									</li>


								</ul>
							</div>
						</div>
					</div>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<!-- Vendor -->
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
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
</body>
</html>