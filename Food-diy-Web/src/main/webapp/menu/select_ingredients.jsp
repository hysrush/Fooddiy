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
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/layers.css">
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