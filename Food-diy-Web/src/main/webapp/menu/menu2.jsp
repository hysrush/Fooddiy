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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 


<!-- Head Libs -->
<script
	src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js">
</script>
	
<script>
$(document).ready(function(){
	$('#lnb').stick_in_parent({offset_top:274});
});



$(function(){
    $(".portfolio-item").click(function(){
    	var menu = $(this).attr("id");
    	var url = 'detail_menu/'+menu+'.jsp';
    	$('div.modal').modal().removeData();
        $('div.modal').modal({remote : url});
    })
})
/* $(function(){
    $("#steakcheese").click(function(){
        $('div.modal').modal({remote : 'detail_menu/steakcheese.jsp'});
    })
}) */




</script>

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
								<li class="active">All menu</li>
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
						<aside class="sidebar hidden-sm hidden-xs" data-plugin-sticky
							data-plugin-options="{ 'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 150} }">
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
						<aside class="sidebar hidden-md hidden-lg" id="lnb">
							<nav>
								<ul>
									<li class="active">
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
									<li>
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
					</div>
					
					
					
					
					<div class="col-md-9">	
						
						
						
						<div id="slidemenu">
						

						<ul class="nav nav-pills sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}"></ul>		
						
						<div class="row">
							<div class="sort-destination-loader sort-destination-loader-showing">
								<ul class="portfolio-list sort-destination"	data-sort-id="portfolio">
								
									<!-- 추천메뉴 -->							
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
										<div class="portfolio-item" id="meatball">
											<span class="thumb-info thumb-info-lighten">
												<span class="thumb-info-wrapper">
													<img src="${ pageContext.request.contextPath }/resources/img/menu/mn-Meatball-Marinara.jpg" class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">미트볼</span>
															<span class="thumb-info-type">4,900</span>
														</span>
													<span class="thumb-info-action">
														<a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
															<span class="thumb-info-action-icon">															
																<i class="fa fa-plus"></i>															
															</span>
														</a>
													</span>
												</span>
											</span>
										</div>
									</li>
																		
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
										<div class="portfolio-item" id="italianbmt">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Italian-BMT.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">이탈리안 비엠티</span> <span
														class="thumb-info-type">4,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									
									<!-- 프리미엄 -->
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item premium">
										<div class="portfolio-item" id="steakcheese">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Steak-Cheese.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">스테이크 & 치즈</span> <span
														class="thumb-info-type">6,100</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item premium">
										<div class="portfolio-item" id="roastbeef">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Roast-Beef.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">로스트 비프</span> <span
														class="thumb-info-type">5,800</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item premium">
										<div class="portfolio-item" id="roastchicken">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Oven-Roasted-Chicken.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">로스트 치킨</span> <span
														class="thumb-info-type">5,800</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item premium">
										<div class="portfolio-item" id="chickenbaconranch">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Chicken-Bacon-Ranch-Melt.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">치킨 베이컨랜치</span> <span
														class="thumb-info-type">5,800</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									
									<!-- 베스트 -->
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item best">
										<div class="portfolio-item" id="spicyitalian">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Spicy-Italian.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">스파이시 이탈리안</span> <span
														class="thumb-info-type">5,300</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item best">
										<div class="portfolio-item" id="turkeybacon">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Turkey-Breast.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">터키 베이컨</span> <span
														class="thumb-info-type">5,300</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item best">
										<div class="portfolio-item" id="chickenteriyaki">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Sweet-Onion-Chicken-Teriyaki.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">치킨 데리야끼</span> <span
														class="thumb-info-type">5,300</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item best">
										<div class="portfolio-item" id="subwayclub">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Subway-Club.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">써브웨이 클럽</span> <span
														class="thumb-info-type">5,300</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"><i
																class="fa fa-plus"></i></a></span></span>
											</span>
											</span>
										</div>
									</li>
									
									<!-- 클래식 -->
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item classic">
										<div class="portfolio-item" id="tuna">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Classic-Tuna.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">참치</span> <span
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
									
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item classic">
										<div class="portfolio-item" id="ham">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-Black-Forest-Ham.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
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
									
									<!-- 아침식사 -->
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item breakfast">
										<div class="portfolio-item" id="baconeggcheese">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-brkfst-baceggchs.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">베이컨 에그&치즈</span> <span
														class="thumb-info-type">2,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item breakfast">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-brkfst-hameggchs.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">블랙 포레스트 햄&에그,치즈</span> <span
														class="thumb-info-type">2,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item breakfast">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-brkfst-stkeggchs.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">스테이크 에그&치즈</span> <span
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
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item breakfast">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/mn-brkfst-eggchs.jpg"
													class="img-responsive" alt=""
													style="margin-top: 65px; margin-bottom: 65px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">에그&치즈</span> <span
														class="thumb-info-type">2,900</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									
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
									
									<!-- 추가메뉴 -->
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/SubChips.jpg"
													class="img-responsive" alt=""
													style="margin-top: 66px; margin-bottom: 66px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">칩</span> <span
														class="thumb-info-type">1,000</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/cookei_double_choco.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">더블 초코칩 쿠키</span> <span
														class="thumb-info-type">1,000</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/cookei_maple_macadamia.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">메이플 마카다미아 쿠키</span> <span
														class="thumb-info-type">1,000</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/cookei_caramel_choco.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">카라멜 초코칩 쿠키</span> <span
														class="thumb-info-type">1,000</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/minestrone.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">미네스트로네</span> <span
														class="thumb-info-type">3,600</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/cream_corn_chowder.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">크림콘 차우더</span> <span
														class="thumb-info-type">3,600</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/vegetables_soup.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">크림야채 차우더</span> <span
														class="thumb-info-type">3,600</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									
									<!-- 음료 -->
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/icecaffee.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">아이스 커피</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/icecocoa.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">아이스 코코아</span> <span
														class="thumb-info-type">2,400</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/icetea.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">아이스 티</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/orangejuice.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">오렌지주스</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/pepsi.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">펩시</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/hot_caffee.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 커피</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>									
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/hot_caffe_latte.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 카페라떼</span> <span
														class="thumb-info-type">2,400</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/hot_cocoa.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 코코아</span> <span
														class="thumb-info-type">2,400</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/hot_tea.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 티</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/hot_milktea.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 밀크티</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/hot_herbtea.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 허브티</span> <span
														class="thumb-info-type">2,200</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/soy_latte.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 소이라떼</span> <span
														class="thumb-info-type">2,700</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/cafemoca.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 카페모카</span> <span
														class="thumb-info-type">2,700</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/maccha_latte.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 말차라떼</span> <span
														class="thumb-info-type">2,700</span>
												</span> <span class="thumb-info-action"> <span
														class="thumb-info-action-icon"><a
															href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
																<i class="fa fa-plus"></i>
														</a></span></span>
											</span>
											</span>
										</div>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
										<div class="portfolio-item" data-toggle="modal"
											data-target="#largeModal">
											<span class="thumb-info thumb-info-lighten"> <span
												class="thumb-info-wrapper"> <img
													src="${ pageContext.request.contextPath }/resources/img/menu/soycocoa.jpg"
													class="img-responsive" alt=""
													style="margin-top: 50px; margin-bottom: 50px"> <span
													class="thumb-info-title"> <span
														class="thumb-info-inner">핫 소이코코아</span> <span
														class="thumb-info-type">2,700</span>
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
	</div>

	<div class="container">

		<footer id="footer">
			<jsp:include page="/resources/include/bottom.jsp" />
		</footer>

	</div>


	<!-- 모달들 -->
	<div class="modal fade" tabindex="-1" role="dialog"	aria-labelledby="largeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content"><!-- .jsp로 모달내용 -->	</div>
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
		src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

	<!-- Theme Initialization Files -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
</body>
</html>