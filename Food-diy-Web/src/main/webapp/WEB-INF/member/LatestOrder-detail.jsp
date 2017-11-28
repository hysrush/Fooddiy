<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>| 최근 주문 내역 | </title>	

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

		<!-- 이미지 캐러셀 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>


		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">

<style type="text/css">
#div01 {
	width: 70px;
	text-align: center;
	border-width: 2px;
	border-style: solid;
}
</style>

</head>


<body>
	<div class="body">
		<header id="header"
				data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
				<jsp:include page="/resources/include/top-new.jsp"/>
		</header>
		
		<!-- Mobile menu 부분 -->
			<jsp:include page="/resources/include/mobile-menu.jsp"/>
		<!-- ---------------------------------------------------------------------------------------------- -->
			
			
				<section class="page-header">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.jsp">My Page</a></li>
									<li class="active">최근 주문 내역</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>Left Sidebar</h1>
							</div>
						</div>
					</div>
				</section>
				
			<div class="container">
				

					<div class="row">
					<div style="width: 600px">
						<div style="margin-top: 2%" class="col-md-3">
							<aside  class="sidebar">

								<h3 class="heading-primary">Categories</h3>
								<ul class="nav nav-list mb-xlg">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">내 정보</a></li>
									<li class="active">
										<a href="${ pageContext.request.contextPath}/member/Latest-Order.do">최근 주문 내역</a>
									</li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
		</aside></div></div>
		
			
			<div role="main" class="main shop">

				<div class="container">


						<div class="col-md-2r">


							<div class="featured-boxes">
									<div class="col-sm-5">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">주문정보</h4>
												<table class="cart-totals">
													<tbody>
														<tr class="cart-subtotal">
															<th>
																<strong>주문번호</strong>
															</th>
															<td>
																<strong><span class="amount">BDNSY07276</span></strong>
															</td>
														</tr>
														<tr class="shipping">
															<th>
																주문시간															</th>
															<td>
																2017.11.02 / 오후 7:21<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
														<tr class="shipping">
															<th>
																<strong>결제방법</strong>
															</th>
															<td>
																<span class="amount">카드</span>
															</td>
														</tr>
														<tr class="shipping">
															<th>
																결제금액															</th>
															<td>
																12,600원<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="featured-boxes">
									<div class="col-sm-5">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">주문내역</h4>
												<table class="cart-totals">
													<tbody>
														<tr class="cart-subtotal">
															<th>
																<strong>스테이크 & 치즈</strong>
															</th>
															<td>
																<strong><span class="amount">12,800원</span></strong>
															</td>
														</tr>
														<tr class="shipping">
															<th>
																가격
															</th>
															<td>
																9,800원(30cm)<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
														<tr class="shipping">
															<th>
																추가선택
															</th>
															<td>
																베이컨 +1<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
														<tr class="shipping">
															<th>
																요구사항
															</th>
															<td>
																양상추 +1, 할라피뇨 -1<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
														<tr class="shipping">
															<th>
																수량
															</th>
															<td>
															1개<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>


			<div style="margin-bottom:5% ; margin-left: 47%" class="col-md-8">
				<button style="width: 130px; height: 40px; font-size: 20px" type="button" class="btn  btn-info">  첫화면 </button>
			</div>
		</div>

	<!-- ---------------------------------------------------------------------------------------------- -->
	<div>
		<footer id="footer">
			<jsp:include page="/resources/include/bottom.jsp"/>
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




<!-- Vendor -->
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery-cookie/jquery-cookie.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/common/common.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.validation/jquery.validation.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/isotope/jquery.isotope.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/vide/vide.min.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="${ pageContext.request.contextPath }/resources/js/theme.js"></script>

<!-- Theme Custom -->
<script
	src="${ pageContext.request.contextPath }/resources/js/custom.js"></script>

<!-- Theme Initialization Files -->
<script
	src="${ pageContext.request.contextPath }/resources/js/theme.init.js"></script>

<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->

</body>
</html>