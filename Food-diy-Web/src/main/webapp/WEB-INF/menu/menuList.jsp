<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="${ pageContext.request.contextPath}/resources/css/custom.css">

<!-- Theme Custom CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- Head Libs -->
<script
	src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js">
	
</script>

<script>
	$(document).ready(function() {
		$('#lnb').stick_in_parent({
			offset_top : 73
		});
	});

	function modal(menuNo) {
		$(".thumb-info").click(function() {
			$('div.modal').modal().removeData();
			var url = '${ pageContext.request.contextPath}/menu/menuDetail.do?no=' + menuNo;
			$('div.modal').modal({ remote : url	});
		})
	}
	/* function modal(menuNo) {
	 $(".portfolio-item").click(function(){
	 var url = '${ pageContext.request.contextPath}/menu/menuDetail.do?no=' + menuNo;
	 $('div.modal').modal().removeData();
	 $('div.modal').modal({remote : url});
	 })
	 } */

	/* $(function(){
	 $(".portfolio-item").click(function(){
	 var menu = $(this).attr("id");
	 var url = 'detail_menu/'+menu+'.jsp';
	 $('div.modal').modal().removeData();
	 $('div.modal').modal({remote : url});
	 })
	 }) */
	/* $(function(){
	 $("#steakcheese").click(function(){
	 $('div.modal').modal({remote : 'detail_menu/steakcheese.jsp'});
	 })
	 }) */
</script>

</head>
<body>
	<div class="body">
		<header id="header"
			data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
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

					<!-- 모바일 크기에서 보이는 슬라이드 메뉴 -->
					<aside class="sidebar hidden-md hidden-lg" id="lnb">
						<nav>
							<ul>
								<li class="active"><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do">전체메뉴</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#recommend">추천메뉴</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#premium">프리미엄</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#best">베스트</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#classic">클래식</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#breakfast">아침식사</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#salad">샐러드</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#addition">추가메뉴</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/menu/menuAll.do#beverage">음료</a></li>
							</ul>
						</nav>
					</aside>



					<div class="col-md-9">
						<div id="slidemenu">
							<ul class="nav nav-pills sort-source" data-sort-id="portfolio"
								data-option-key="filter"
								data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}"></ul>
							<div class="row">
								<div
									class="sort-destination-loader sort-destination-loader-showing">
									<ul class="portfolio-list sort-destination"	data-sort-id="portfolio">
									
										<c:forEach items="${ menuList }" var="menu">
											<c:if test='${ menu.type eq "R" }'>

												<li	class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }" 
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
											<c:if test='${ menu.type eq "P" }'>

												<li class="col-md-4 col-sm-6 col-xs-6 isotope-item premium">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }"
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
											<c:if test='${ menu.type eq "B" }'>

												<li class="col-md-4 col-sm-6 col-xs-6 isotope-item best">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }"
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
											<c:if test="${ menu.type eq 'C' }">

												<li class="col-md-4 col-sm-6 col-xs-6 isotope-item classic">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }"
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
											<c:if test="${ menu.type eq 'M' }">

												<li class="col-md-4 col-sm-6 col-xs-6 isotope-item breakfast">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }"
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
											<c:if test="${ menu.type eq 'S' }">

												<li class="col-md-4 col-sm-6 col-xs-6 isotope-item salad">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }"
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
											<c:if test="${ menu.type eq 'N' }">

												<li class="col-md-4 col-sm-6 col-xs-6 isotope-item addition">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }"
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
											<c:if test="${ menu.type eq 'D' }">

												<li class="col-md-4 col-sm-6 col-xs-6 isotope-item beverage">
													<div class="portfolio-item" data-toggle="modal"	data-target="#largeModal">
														<span class="thumb-info thumb-info-lighten">
														<a onclick="modal('${ menu.no }')">
														<span class="thumb-info-wrapper">
															<img src="${ pageContext.request.contextPath }/upload/menu/${ menu.imgFileName }"
															class="img-responsive" alt="" style="margin-top: 65px; margin-bottom: 65px">
															<span class="thumb-info-title">
																<span class="thumb-info-inner">${ menu.name }</span>
																<span class="thumb-info-type">${ menu.price }원</span>
															</span>
														</span>
														</a>
														</span>
													</div>
												</li>

											</c:if>
										</c:forEach>

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
	<div class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="largeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- 모달내용 -->
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
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

	<!-- Theme Initialization Files -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
</body>
</html>