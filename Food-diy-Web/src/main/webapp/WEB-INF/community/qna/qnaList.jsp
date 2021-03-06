<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html>
<head>
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title> | Q & A | </title>	

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

		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">	
		
		<!-- js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	
<style type="text/css">
	.toggle label {
		font-weight: bold;
	}
</style>

<script>
	$(document).ready(function(){
		var windowWidth = $( window ).width();
		if(windowWidth < 992){
			   $('#cd').stick_in_parent({
		       offset_top : 71,
		       inner_scrolling : false
		   	   });
		}		
	});
	
</script>	
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
								<li><a href="#">커뮤니티</a></li>
								<li class="active">자주묻는 질문</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>자주묻는 질문</h1>
						</div>
					</div>
				</div>
			</section>

			<div class="container">
				<div class="row">
					<div class="col-md-2 hidden-xs hidden-sm">
						<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">
							<h4 class="heading-primary"><strong>커뮤니티 </strong></h4>

							<ul class="nav nav-list mb-xlg sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
									<li class="active"><a href="#">자주묻는 질문</a></li>
									<li><a href="${ pageContext.request.contextPath }/community/subway/notice.do">Subway 소식</a>
										<ul>
											<li><a href="${ pageContext.request.contextPath }/community/subway/notice.do">공지사항</a></li>
											<li><a href="${ pageContext.request.contextPath }/community/subway/news.do">보도자료</a></li>
										</ul>
									</li>
									<li><a href="${ pageContext.request.contextPath }/community/claim/claimWriteForm.do">1:1 문의</a></li>
									<li><a href="${ pageContext.request.contextPath }/community/snsPage.do">SNS게시판</a></li>
							</ul>
						</aside>
					</div>
					<!-- START! -->
					<div class="col-md-10">
						<section class="section section-default">
							<div class="container">
								<div class="row">
									<div class="col-md-10">
										<h4 class="mb-none">Subway 자주묻는 질문입니다.</h4>
										<br>
										<p class="mb-none">
											인터넷 주문 상담전화<br> <strong>080 - 500 - 5588</strong><br>
											상담시간 | AM 10:00 ~ PM 10:00<br> <br> 전화상담 전, 주문방법과
											자주 묻는 질문을 먼저 확인해보세요!
										</p>
									</div>
								</div>
							</div>
						</section>
						<div class="tabs tabs-bottom tabs-center tabs-simple">
							<ul class="nav nav-tabs" id="ab">
								<li class="active">
									<a href="#tabsNavigationSimple1" data-toggle="tab">푸디오더</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple2" data-toggle="tab">포인트</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple3" data-toggle="tab">단체주문</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple4" data-toggle="tab">회원정보</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple5" data-toggle="tab">기타</a>
								</li>
							</ul>
							<!-- 991 밑으로 보이는 sticky 메뉴 -->
							<aside class="sidebar hidden-md hidden-lg" id="cd">
			                  <nav>
			                     <ul>
			                        <li><a href="#tabsNavigationSimple1" data-toggle="tab">푸디오더</a></li>
			                        <li><a href="#tabsNavigationSimple2" data-toggle="tab">포인트</a></li>
			                        <li><a href="#tabsNavigationSimple3" data-toggle="tab">단체주문</a></li>
			                        <li><a href="#tabsNavigationSimple4" data-toggle="tab">회원정보</a></li>
			                        <li><a href="#tabsNavigationSimple5" data-toggle="tab">기타</a></li>			                        
			                     </ul>
			                  </nav>
			              	</aside>
							<div class="tab-content">
								<div class="tab-pane active" id="tabsNavigationSimple1">
									<div class="center">
										<br>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<c:forEach items="${ qnaList }" var="qna">
													<section class="toggle">
														<c:if test="${ qna.type eq 'F'}">
															<label>Q. ${ qna.question }</label>
															<div class="toggle-content">
																<!-- 자동 단락 나누기 (jstl - fn) -->
																<p class="text-center">${ fn:replace(qna.answer, cn, br) }</p>
																<p style="font-size: 9pt;" align="right">${ qna.regDate }</p>
															</div>
														</c:if>
													</section>								
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple2">
									<div class="center">
										<br>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<c:forEach items="${ qnaList }" var="qna">
													<section class="toggle">
														<c:if test="${ qna.type eq 'P'}">
															<label>Q. ${ qna.question }</label>
															<div class="toggle-content">
																<!-- 자동 단락 나누기 (jstl - fn) -->
																<p class="text-center">${ fn:replace(qna.answer, cn, br) }</p>
																<p style="font-size: 9pt;" align="right">${ qna.regDate }</p>
															</div>
														</c:if>
													</section>								
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple3">
									<div class="center">
										<br>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<c:forEach items="${ qnaList }" var="qna">
													<section class="toggle">
														<c:if test="${ qna.type eq 'O'}">
															<label>Q. ${ qna.question }</label>
															<div class="toggle-content">
																<!-- 자동 단락 나누기 (jstl - fn) -->
																<p class="text-center">${ fn:replace(qna.answer, cn, br) }</p>
																<p style="font-size: 9pt;" align="right">${ qna.regDate }</p>
															</div>
														</c:if>
													</section>								
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple4">
									<div class="center">
										<br>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<c:forEach items="${ qnaList }" var="qna">
													<section class="toggle">
														<c:if test="${ qna.type eq 'M'}">
															<label>Q. ${ qna.question }</label>
															<div class="toggle-content">
																<!-- 자동 단락 나누기 (jstl - fn) -->
																<p class="text-center">${ fn:replace(qna.answer, cn, br) }</p>
																<p style="font-size: 9pt;" align="right">${ qna.regDate }</p>
															</div>
														</c:if>
													</section>								
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple5">
									<div class="center">
										<br>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<c:forEach items="${ qnaList }" var="qna">
													<section class="toggle">
														<c:if test="${ qna.type eq 'X'}">
															<label>Q. ${ qna.question }</label>
															<div class="toggle-content">
																<!-- 자동 단락 나누기 (jstl - fn) -->
																<p class="text-center">${ fn:replace(qna.answer, cn, br) }</p>
																<p style="font-size: 9pt;" align="right">${ qna.regDate }</p>
															</div>
														</c:if>
													</section>								
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="light visible-lg" id="footer">
			<jsp:include page="/resources/include/bottom.jsp"/>
		</footer>
		
		<footer class="light hidden-lg" id="footer">
			<jsp:include page="/resources/include/mobile-bottom.jsp"/>
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