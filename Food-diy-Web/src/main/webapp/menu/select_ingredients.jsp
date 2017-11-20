<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fooddiy-Order</title>


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
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/layers.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/navigation.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/circle-flip-slideshow/css/component.css">

<!-- Skin CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/skins/skin-shop-9.css">


<!-- Demo CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">
<!-- Theme Custom CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

<!-- Head Libs -->
<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>

<body>



		
		<div class="body">
			<header id="header" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
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
									<li><a href="#">Home</a></li>
									<li>Menu</li>
									<li class="active">Select</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>Select</h1>
							</div>
						</div>
					</div>
				</section>
				
				<div class="modal sauce-modal" id="noAnimModal" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true" style="display: none;">
						<div class="modal-dialog" style="top: 30%">
								<div class="modal-content">
										<div class="modal-header" style="background-color: #7aa93c; padding: 10px 20px 10px 10px">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color: white; font-size: 30px">×</button>
												<h4 class="modal-title" id="noAnimModalLabel" style="color: white;">안내</h4>							
										</div>
										<div class="modal-body" style="text-align: center; padding: 20px 20px 20px">
												<p>소스는 3개까지 선택할 수 있습니다.</p>
										</div>
										<div class="modal-footer" style="margin-top: 0px; padding: 10px 20px 20px;">
												<button type="button" class="btn btn-default" data-dismiss="modal" style="color: white; background-color: #7aa93c;">확인</button>
										</div>
								</div>
						</div>
				</div>

				<div class="container web">
					<div class="slider-container rev_slider_wrapper" style="height: 261px; overflow: visible;">
						<div id="revolutionSlider" class="slider rev_slider manual revslider-initialised tp-simpleresponsive" style="margin-top: 0px; margin-bottom: 0px; height: 261px;" data-slideactive="rs-844971">
							<ul class="tp-revslider-mainul" style="visibility: visible; display: block; overflow: hidden; width: 595px; height: 100%; max-height: none; left: 0px;">
								<li data-transition="fade" class="tp-revslider-slidesli active-revslide" style="width: 100%; height: 100%; overflow: hidden; z-index: 20; visibility: inherit; opacity: 1; background-color: rgba(255, 255, 255, 0);">
									<div class="slotholder" style="position: absolute; top: 0px; left: 0px; z-index: 0; width: 100%; height: 100%; visibility: inherit; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
										<!--Runtime Modification - Img tag is Still Available for SEO Goals in Source - <img src="../img/demos/shop/slides/shop9/slide1.jpg" alt="slide bg" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg defaultimg">-->
										<div class="tp-bgimg defaultimg "
											style="background-color: rgba(0, 0, 0, 0); background-repeat: no-repeat; background-image: url(&quot;../img/demos/shop/slides/shop9/slide1.jpg&quot;); background-size: cover; background-position: center center; width: 100%; height: 100%; opacity: 1; visibility: inherit; z-index: 20;"
											src="../img/demos/shop/slides/shop9/slide1.jpg"></div>
									</div>
	
									<div class="tp-parallax-wrap" style="position: absolute; display: block; visibility: visible; left: 54px; top: 77px; z-index: 5;">
										<div class="tp-loop-wrap" style="position: absolute; display: block;">
											<div class="tp-mask-wrap" style="position: absolute; display: block; overflow: visible;">
												<div class="tp-caption" data-x="left" data-hoffset="105" data-y="center" data-voffset="-92" data-start="500"
													style="z-index: 5; font-size: 10px; font-weight: 300; line-height: 10px; color: rgb(163, 154, 140); visibility: inherit; transition: none; text-align: inherit; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; white-space: nowrap; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;"
													data-transform_in="y:[100%];opacity:0;s:500;" id="layer-236121152">Feel the real</div>
											</div>
										</div>
									</div>
	
									<div class="tp-parallax-wrap" style="position: absolute; display: block; visibility: visible; left: 46px; top: 87px; z-index: 5;">
										<div class="tp-loop-wrap" style="position: absolute; display: block;">
											<div class="tp-mask-wrap" style="position: absolute; display: block; overflow: hidden; transform: matrix(1, 0, 0, 1, 0, 0);">
												<div class="tp-caption text-primary" data-x="left" data-hoffset="90" data-y="center" data-voffset="-50" data-start="1000" data-whitespace="nowrap" data-transform_in="y:[100%];s:500;" data-transform_out="opacity:0;s:500;"
													style="z-index: 5; font-size: 34px; font-weight: 400; font-style: italic; line-height: 34px; visibility: inherit; transition: none; text-align: inherit; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; white-space: nowrap; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;"
													data-mask_in="x:0px;y:0px;" id="layer-831950565">
													<span style="font-weight: 800;">MOBILE</span> music
												</div>
											</div>
										</div>
									</div>
	
									<div class="tp-parallax-wrap" style="position: absolute; display: block; visibility: visible; left: 237px; top: 122px; z-index: 5;">
										<div class="tp-loop-wrap" style="position: absolute; display: block;">
											<div class="tp-mask-wrap" style="position: absolute; display: block; overflow: visible;">
												<div class="tp-caption" data-x="left" data-hoffset="455" data-y="center" data-voffset="2" data-start="1500"
													style="z-index: 5; font-size: 19px; font-weight: 700; line-height: 19px; color: rgb(1, 1, 1); visibility: inherit; transition: none; text-align: inherit; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; white-space: nowrap; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;"
													data-transform_in="y:[100%];opacity:0;s:500;" id="layer-126954735">$999</div>
											</div>
										</div>
									</div>
	
									<div class="tp-parallax-wrap" style="position: absolute; display: block; visibility: visible; left: 221px; top: 149px; z-index: 5;">
										<div class="tp-loop-wrap" style="position: absolute; display: block;">
											<div class="tp-mask-wrap" style="position: absolute; display: block; overflow: visible;">
												<div class="tp-caption" data-x="left" data-hoffset="425" data-y="center" data-voffset="46" data-start="2000"
													style="z-index: 5; font-size: 8px; font-weight: 600; line-height: 8px; visibility: inherit; transition: none; text-align: inherit; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; white-space: nowrap; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;"
													data-transform_in="y:[100%];opacity:0;s:500;" id="layer-708110320">
													<a href="#" class="slider-btn-wicon">SHOP NOW <i class="fa fa-angle-right"></i></a>
												</div>
											</div>
										</div>
									</div>
	
									<div class="tp-parallax-wrap" style="position: absolute; display: block; visibility: visible; left: 29px; top: 0px; z-index: 4;">
										<div class="tp-loop-wrap" style="position: absolute; display: block;">
											<div class="tp-mask-wrap" style="position: absolute; display: block; overflow: visible;">
												<div class="tp-caption" data-x="center" data-y="top" data-start="1200" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1000;"
													style="z-index: 4; visibility: inherit; transition: none; text-align: inherit; line-height: 0px; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; font-weight: 400; font-size: 7px; white-space: nowrap; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;"
													id="layer-766013703">
													<img src="../img/demos/shop/slides/shop9/item1.png" alt="Item" style="width: 595px; height: 260.965px;">
												</div>
											</div>
										</div>
									</div>
								</li>
								<li data-transition="fade" class="tp-revslider-slidesli" style="width: 100%; height: 100%; overflow: hidden; z-index: 18; visibility: hidden; opacity: 0; background-color: rgba(255, 255, 255, 0);">
									<div class="slotholder" style="position: absolute; top: 0px; left: 0px; z-index: 0; width: 100%; height: 100%; visibility: inherit; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
										<!--Runtime Modification - Img tag is Still Available for SEO Goals in Source - <img src="../img/demos/shop/slides/shop9/slide2.jpg" alt="slide bg" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg defaultimg">-->
										<div class="tp-bgimg defaultimg "
											style="background-color: rgba(0, 0, 0, 0); background-repeat: no-repeat; background-image: url(&quot;../img/demos/shop/slides/shop9/slide2.jpg&quot;); background-size: cover; background-position: center center; width: 100%; height: 100%; opacity: 1; visibility: inherit; z-index: 20;"
											src="../img/demos/shop/slides/shop9/slide2.jpg"></div>
									</div>
	
									<div class="tp-parallax-wrap" style="position: absolute; display: block; visibility: hidden; left: 29px; top: 0px; z-index: 4;">
										<div class="tp-loop-wrap" style="position: absolute; display: block;">
											<div class="tp-mask-wrap" style="position: absolute; display: block; overflow: visible;">
												<div class="tp-caption" data-x="center" data-y="top" data-start="1200" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1000;"
													style="z-index: 4; visibility: hidden; transition: none; text-align: inherit; line-height: 0px; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; font-weight: 400; font-size: 7px; white-space: nowrap; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 0.0001; transform: matrix3d(0.9, 0, 0, 0, 0, 0.9, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;"
													id="layer-87625021">
													<img src="../img/demos/shop/slides/shop9/item2.png" alt="Item" style="width: 595px; height: 260.965px;">
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
							<div class="tp-loader spinner3" style="display: none;">
								<div class="dot1"></div>
								<div class="dot2"></div>
								<div class="bounce1"></div>
								<div class="bounce2"></div>
								<div class="bounce3"></div>
							</div>
							<div class="tp-bannertimer" style="visibility: hidden; width: 76.6444%; transform: translate3d(0px, 0px, 0px);"></div>
							<div class="tp-leftarrow tparrows custom noSwipe tp-forcenotvisible" style="top: 50%; transform: matrix(1, 0, 0, 1, 20, -20); left: 0px; visibility: hidden; opacity: 0;"></div>
							<div class="tp-rightarrow tparrows custom noSwipe tp-forcenotvisible" style="top: 50%; transform: matrix(1, 0, 0, 1, -60, -20); left: 100%; visibility: hidden; opacity: 0;"></div>
						</div>
					</div>
				<div class="row">
						<div class="col-md-12">
							<div class="tabs tabs-bottom tabs-center tabs-simple">
								<ul class="nav nav-tabs">
									<li class="active">
										<a href="#tabsNavigationSimpleIcons1" data-toggle="tab">
											<span class="featured-boxes featured-boxes-style-6 p-none m-none">
												<span class="featured-box featured-box-primary featured-box-effect-6 p-none m-none">
													<span class="box-content p-none m-none">
														<!-- <i class="icon-featured fa fa-user bread"></i> -->
														<img style="width: 100px" src="${pageContext.request.contextPath }/resources/img/menu_icon/bread_wheat.jpg" />

													</span>
												</span>
											</span>									
											<p class="mb-none pb-none">빵</p>
										</a>
									</li>
									<li >
										<a href="#tabsNavigationSimpleIcons2" data-toggle="tab">
											<span class="featured-boxes featured-boxes-style-6 p-none m-none">
												<span class="featured-box featured-box-primary featured-box-effect-6 p-none m-none">
													<span class="box-content p-none m-none">
														<img style="width: 100px" src="${pageContext.request.contextPath }/resources/img/menu_icon/cheese_old_english.jpg" />
														
													</span>
												</span>
											</span>									
											<p class="mb-none pb-none">치즈</p>
										</a>
									</li>
									<li >
										<a href="#tabsNavigationSimpleIcons3" data-toggle="tab">
											<span class="featured-boxes featured-boxes-style-6 p-none m-none">
												<span class="featured-box featured-box-primary featured-box-effect-6 p-none m-none">
													<span class="box-content p-none m-none">
														<img style="width: 100px" src="${pageContext.request.contextPath }/resources/img/menu_icon/topping_double_meat.jpg" />
													</span>
												</span>
											</span>									
											<p class="mb-none pb-none">토핑</p>
										</a>
									</li>
									<li>
										<a href="#tabsNavigationSimpleIcons4" data-toggle="tab">
											<span class="featured-boxes featured-boxes-style-6 p-none m-none">
												<span class="featured-box featured-box-primary featured-box-effect-6 p-none m-none">
													<span class="box-content p-none m-none">
														<img style="width: 100px" src="${pageContext.request.contextPath }/resources/img/menu_icon/vegetable_lettuce.jpg" />
													</span>
												</span>
											</span>									
											<p class="mb-none pb-none">야채</p>
										</a>
									</li>
									<li>
										<a href="#tabsNavigationSimpleIcons5" data-toggle="tab">
											<span class="featured-boxes featured-boxes-style-6 p-none m-none">
												<span class="featured-box featured-box-primary featured-box-effect-6 p-none m-none">
													<span class="box-content p-none m-none">
														<img style="width: 100px" src="${pageContext.request.contextPath }/resources/img/menu_icon/sauce_sweet_chilli.jpg" />
													</span>
												</span>
											</span>									
											<p class="mb-none pb-none">소스</p>
										</a>
									</li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="tabsNavigationSimpleIcons1">
										<jsp:include page="/menu/select-bread.jsp"/>
									</div>
									<div class="tab-pane" id="tabsNavigationSimpleIcons2">
										<jsp:include page="/menu/select-cheese.jsp"/>
									</div>
									<div class="tab-pane" id="tabsNavigationSimpleIcons3">
										<jsp:include page="/menu/select-topping.jsp"/>
									</div>
									<div class="tab-pane" id="tabsNavigationSimpleIcons4">
										<jsp:include page="/menu/select-vegetable.jsp"/>
									</div>
									<div class="tab-pane" id="tabsNavigationSimpleIcons5">
										<jsp:include page="/menu/select-sauce.jsp"/>
									</div>
								</div> 
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
			
			<div class="container mobile-select-menu">

					<div class="row">
						<div class="col-xs-12">
							<div class="panel-group panel-group-lg" id="accordion5">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle bread-name" data-toggle="collapse" data-parent="#accordion5" href="#bread-select">
												&nbsp;&nbsp;&nbsp;&nbsp;빵 선택 >>
											</a>
										</h4>
									</div>
									<div id="bread-select" class="accordion-body collapse in">
										<div class="panel-body">
											<jsp:include page="/menu/select-bread-mobile.jsp"/>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle cheese-name" data-toggle="collapse" data-parent="#accordion5" href="#cheese-select">
												치즈 선택 >>
											</a>
										</h4>
									</div>
									<div id="cheese-select" class="accordion-body collapse">
										<div class="panel-body">
											<jsp:include page="/menu/select-cheese-mobile.jsp"/>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle topping-name" data-toggle="collapse" data-parent="#accordion5" href="#topping-select">
												<table class = "topping-table">
														<tr>
															<td width = "30%">
																토핑 선택 >>
															</td>
														</tr>
												</table>
											</a>
										</h4>
									</div>
									<div id="topping-select" class="accordion-body collapse">
										<div class="panel-body">
											<jsp:include page="/menu/select-topping-mobile.jsp"/>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle vegetable-name" data-toggle="collapse" data-parent="#accordion5" href="#vegetable-select">
												<table class = "vegetable-table">
														<tr>
															<td width = "30%">
																야채 선택 >>
															</td>
														</tr>
												</table>
											</a>
										</h4>
									</div>
									<div id="vegetable-select" class="accordion-body collapse">
										<div class="panel-body">
											<jsp:include page="/menu/select-vegetable-mobile.jsp"/>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle sauce-name" data-toggle="collapse" data-parent="#accordion5" href="#sauce-select">
												<table class = "sauce-table">
														<tr>
															<td width = "30%">
																소스 선택 >>
															</td>
														</tr>
												</table>
											</a>
										</h4>
									</div>
									<div id="sauce-select" class="accordion-body collapse">
										<div class="panel-body">
											<jsp:include page="/menu/select-sauce-mobile.jsp"/>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class = "row">
						<div style="text-align: center;s">
							<button type="submit"  class="btn btn-tertiary mr-xs mb-sm cart-submit select-menu-button">주문하기</button>
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