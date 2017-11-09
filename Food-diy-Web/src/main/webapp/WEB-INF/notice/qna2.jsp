<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
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
									<li class="active"><a href="${ pageContext.request.contextPath }/notice/qna.jsp">자주하는 질문</a></li>
									<li><a href="${ pageContext.request.contextPath }/notice/noticeList.jsp">공지사항</a></li>
									<li><a href="${ pageContext.request.contextPath }/notice/suggestion.jsp">1:1 문의</a></li>
									<li><a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">SNS게시판</a></li>
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
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#tabsNavigationSimple1" data-toggle="tab">푸디오더</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple2" data-toggle="tab">멤버십</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple3" data-toggle="tab">포인트</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple4" data-toggle="tab">단체주문</a>
								</li>
								<li>
									<a href="#tabsNavigationSimple5" data-toggle="tab">회원정보</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tabsNavigationSimple1">
									<div class="center">
										<h4>푸디오더</h4>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<c:forEach items="${ qnaList }" var="qna">
													<section class="toggle">
														<label>Q. ${ qna.question }</label>
														<div class="toggle-content">
															<p>A. ${ qna.answer }</p>
															<p style="font-size: 9pt;" align="right">${ qna.regDate }</p>
														</div>
													</section>								
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple2">
									<div class="center">
										<h4>멤버십</h4>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<section class="toggle">
													<label>Q. 온라인 주문은 몇 시부터 가능하나요?</label>
													<div class="toggle-content">
														<p>
															바로 배달 주문 : 매장이 오픈 하는 오전 11시 ~ 오후 10시 30분까지 가능합니다.<br>
															예약 배달/포장 주문 : 매일 오전 7시 30분 ~ 오후 10시 30분까지 예약 접수가 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 온라인 주문을 변경 또는 취소하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															변경 및 취소를 원하신다면 고객님께서 직접 바로 매장에 전화해서 취소 가능한지 확인 후,<br>
															고객센터(080-500-5588, 오전11시~오후10시 30분)로 취소 접수 해주세요.<br>
															** 단, 제품 제조 후에는 취소가 불가합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 주문이 가능한가요?</label>
													<div class="toggle-content">
														<p>
															네. 쉽고 빠른 주문을 위해 간단한 휴대폰 인증을 통한 비회원 주문을 이용하여 주문이 가능합니다.<br>
															그러나 회원 가입 후 멤버십 회원을 가입하면 다양한 혜택을 받을 수 있습니다.<br>
														</p>
														<p>
															<a class="btn btn-primary mb-xl" href="#">멤버십 회원 혜택
																보기</a>
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 휴대폰 인증이 반드시 필요한가요?</label>
													<div class="toggle-content">
														<p>
															네 정확한 배달 및 포장을 위해 홈페이지 가입 시 본인인증을 실시합니다.<br> 비회원 주문
															시에는 휴대폰 번호인증이 있어야 주문이 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 그동안 주문한 내역은 어디서 확인하나요?</label>
													<div class="toggle-content">
														<p>
															마이 페이지 > 주문내역을 통해 확인하실 수 있습니다. <br> <a
																class="btn btn-primary mb-xl" href="#">주문내역 바로가기</a>
														</p>
														<p>
															** 단, 비회원 주문을 이용하셨을 경우 주문내역에서 확인되지 않으니<br> 온라인 고객만족팀
															080-500-5588 로 문의 주시기 바랍니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 포인트 적용은 어떻게 하나요?</label>
													<div class="toggle-content">
														<p>
															주문/결제하기 페이지에서 4.할인적용의 쿠폰버튼을 클릭하여<br> 하단의 포인트 적용 입력란에
															할인하고자 하는 포인트 액수를 입력하여 적용합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 결제 수단에는 어떤 것들이 있으며 어떻게 결제해야 하나요?</label>
													<div class="toggle-content">
														<p>푸디오더 결제는 신용카드, 체크카드, 휴대폰 소액결제, 네이버페이, 카카오페이와 같은
															간편결제가 가능합니다.</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 주문을 완료했는데 결제 수단을 변경하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															결제수단의 변경은 상담원을 통해 변경 가능합니다.<br> 단, 주문완료 후 포인트 및
															할인적용을 위해 결제수단 변경을 요청 하실 경우 주문내역에 따라 불가할 수 있습니다.<br>
															고객만족센터(080-500-5588, 오전10시 ~오후10시)로 문의해주세요.
														</p>
													</div>
												</section>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple3">
									<div class="center">
										<h4>포인트</h4>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<section class="toggle">
													<label>Q. 온라인 주문은 몇 시부터 가능하나요?</label>
													<div class="toggle-content">
														<p>
															바로 배달 주문 : 매장이 오픈 하는 오전 11시 ~ 오후 10시 30분까지 가능합니다.<br>
															예약 배달/포장 주문 : 매일 오전 7시 30분 ~ 오후 10시 30분까지 예약 접수가 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 온라인 주문을 변경 또는 취소하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															변경 및 취소를 원하신다면 고객님께서 직접 바로 매장에 전화해서 취소 가능한지 확인 후,<br>
															고객센터(080-500-5588, 오전11시~오후10시 30분)로 취소 접수 해주세요.<br>
															** 단, 제품 제조 후에는 취소가 불가합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 주문이 가능한가요?</label>
													<div class="toggle-content">
														<p>
															네. 쉽고 빠른 주문을 위해 간단한 휴대폰 인증을 통한 비회원 주문을 이용하여 주문이 가능합니다.<br>
															그러나 회원 가입 후 멤버십 회원을 가입하면 다양한 혜택을 받을 수 있습니다.<br>
														</p>
														<p>
															<a class="btn btn-primary mb-xl" href="#">멤버십 회원 혜택
																보기</a>
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 휴대폰 인증이 반드시 필요한가요?</label>
													<div class="toggle-content">
														<p>
															네 정확한 배달 및 포장을 위해 홈페이지 가입 시 본인인증을 실시합니다.<br> 비회원 주문
															시에는 휴대폰 번호인증이 있어야 주문이 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 그동안 주문한 내역은 어디서 확인하나요?</label>
													<div class="toggle-content">
														<p>
															마이 페이지 > 주문내역을 통해 확인하실 수 있습니다. <br> <a
																class="btn btn-primary mb-xl" href="#">주문내역 바로가기</a>
														</p>
														<p>
															** 단, 비회원 주문을 이용하셨을 경우 주문내역에서 확인되지 않으니<br> 온라인 고객만족팀
															080-500-5588 로 문의 주시기 바랍니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 포인트 적용은 어떻게 하나요?</label>
													<div class="toggle-content">
														<p>
															주문/결제하기 페이지에서 4.할인적용의 쿠폰버튼을 클릭하여<br> 하단의 포인트 적용 입력란에
															할인하고자 하는 포인트 액수를 입력하여 적용합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 결제 수단에는 어떤 것들이 있으며 어떻게 결제해야 하나요?</label>
													<div class="toggle-content">
														<p>푸디오더 결제는 신용카드, 체크카드, 휴대폰 소액결제, 네이버페이, 카카오페이와 같은
															간편결제가 가능합니다.</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 주문을 완료했는데 결제 수단을 변경하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															결제수단의 변경은 상담원을 통해 변경 가능합니다.<br> 단, 주문완료 후 포인트 및
															할인적용을 위해 결제수단 변경을 요청 하실 경우 주문내역에 따라 불가할 수 있습니다.<br>
															고객만족센터(080-500-5588, 오전10시 ~오후10시)로 문의해주세요.
														</p>
													</div>
												</section>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple4">
									<div class="center">
										<h4>단체주문</h4>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<section class="toggle">
													<label>Q. 온라인 주문은 몇 시부터 가능하나요?</label>
													<div class="toggle-content">
														<p>
															바로 배달 주문 : 매장이 오픈 하는 오전 11시 ~ 오후 10시 30분까지 가능합니다.<br>
															예약 배달/포장 주문 : 매일 오전 7시 30분 ~ 오후 10시 30분까지 예약 접수가 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 온라인 주문을 변경 또는 취소하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															변경 및 취소를 원하신다면 고객님께서 직접 바로 매장에 전화해서 취소 가능한지 확인 후,<br>
															고객센터(080-500-5588, 오전11시~오후10시 30분)로 취소 접수 해주세요.<br>
															** 단, 제품 제조 후에는 취소가 불가합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 주문이 가능한가요?</label>
													<div class="toggle-content">
														<p>
															네. 쉽고 빠른 주문을 위해 간단한 휴대폰 인증을 통한 비회원 주문을 이용하여 주문이 가능합니다.<br>
															그러나 회원 가입 후 멤버십 회원을 가입하면 다양한 혜택을 받을 수 있습니다.<br>
														</p>
														<p>
															<a class="btn btn-primary mb-xl" href="#">멤버십 회원 혜택
																보기</a>
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 휴대폰 인증이 반드시 필요한가요?</label>
													<div class="toggle-content">
														<p>
															네 정확한 배달 및 포장을 위해 홈페이지 가입 시 본인인증을 실시합니다.<br> 비회원 주문
															시에는 휴대폰 번호인증이 있어야 주문이 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 그동안 주문한 내역은 어디서 확인하나요?</label>
													<div class="toggle-content">
														<p>
															마이 페이지 > 주문내역을 통해 확인하실 수 있습니다. <br> <a
																class="btn btn-primary mb-xl" href="#">주문내역 바로가기</a>
														</p>
														<p>
															** 단, 비회원 주문을 이용하셨을 경우 주문내역에서 확인되지 않으니<br> 온라인 고객만족팀
															080-500-5588 로 문의 주시기 바랍니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 포인트 적용은 어떻게 하나요?</label>
													<div class="toggle-content">
														<p>
															주문/결제하기 페이지에서 4.할인적용의 쿠폰버튼을 클릭하여<br> 하단의 포인트 적용 입력란에
															할인하고자 하는 포인트 액수를 입력하여 적용합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 결제 수단에는 어떤 것들이 있으며 어떻게 결제해야 하나요?</label>
													<div class="toggle-content">
														<p>푸디오더 결제는 신용카드, 체크카드, 휴대폰 소액결제, 네이버페이, 카카오페이와 같은
															간편결제가 가능합니다.</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 주문을 완료했는데 결제 수단을 변경하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															결제수단의 변경은 상담원을 통해 변경 가능합니다.<br> 단, 주문완료 후 포인트 및
															할인적용을 위해 결제수단 변경을 요청 하실 경우 주문내역에 따라 불가할 수 있습니다.<br>
															고객만족센터(080-500-5588, 오전10시 ~오후10시)로 문의해주세요.
														</p>
													</div>
												</section>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple5">
									<div class="center">
										<h4>회원정보</h4>
										<div class="col-md-12">
											<div class="toggle toggle-primary" data-plugin-toggle
												data-plugin-options="{ 'isAccordion': true }">
												<section class="toggle">
													<label>Q. 온라인 주문은 몇 시부터 가능하나요?</label>
													<div class="toggle-content">
														<p>
															바로 배달 주문 : 매장이 오픈 하는 오전 11시 ~ 오후 10시 30분까지 가능합니다.<br>
															예약 배달/포장 주문 : 매일 오전 7시 30분 ~ 오후 10시 30분까지 예약 접수가 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 온라인 주문을 변경 또는 취소하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															변경 및 취소를 원하신다면 고객님께서 직접 바로 매장에 전화해서 취소 가능한지 확인 후,<br>
															고객센터(080-500-5588, 오전11시~오후10시 30분)로 취소 접수 해주세요.<br>
															** 단, 제품 제조 후에는 취소가 불가합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 주문이 가능한가요?</label>
													<div class="toggle-content">
														<p>
															네. 쉽고 빠른 주문을 위해 간단한 휴대폰 인증을 통한 비회원 주문을 이용하여 주문이 가능합니다.<br>
															그러나 회원 가입 후 멤버십 회원을 가입하면 다양한 혜택을 받을 수 있습니다.<br>
														</p>
														<p>
															<a class="btn btn-primary mb-xl" href="#">멤버십 회원 혜택
																보기</a>
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 비회원 주문 시 휴대폰 인증이 반드시 필요한가요?</label>
													<div class="toggle-content">
														<p>
															네 정확한 배달 및 포장을 위해 홈페이지 가입 시 본인인증을 실시합니다.<br> 비회원 주문
															시에는 휴대폰 번호인증이 있어야 주문이 가능합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 그동안 주문한 내역은 어디서 확인하나요?</label>
													<div class="toggle-content">
														<p>
															마이 페이지 > 주문내역을 통해 확인하실 수 있습니다. <br> <a
																class="btn btn-primary mb-xl" href="#">주문내역 바로가기</a>
														</p>
														<p>
															** 단, 비회원 주문을 이용하셨을 경우 주문내역에서 확인되지 않으니<br> 온라인 고객만족팀
															080-500-5588 로 문의 주시기 바랍니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 포인트 적용은 어떻게 하나요?</label>
													<div class="toggle-content">
														<p>
															주문/결제하기 페이지에서 4.할인적용의 쿠폰버튼을 클릭하여<br> 하단의 포인트 적용 입력란에
															할인하고자 하는 포인트 액수를 입력하여 적용합니다.
														</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 결제 수단에는 어떤 것들이 있으며 어떻게 결제해야 하나요?</label>
													<div class="toggle-content">
														<p>푸디오더 결제는 신용카드, 체크카드, 휴대폰 소액결제, 네이버페이, 카카오페이와 같은
															간편결제가 가능합니다.</p>
													</div>
												</section>

												<section class="toggle">
													<label>Q. 주문을 완료했는데 결제 수단을 변경하고 싶어요.</label>
													<div class="toggle-content">
														<p>
															결제수단의 변경은 상담원을 통해 변경 가능합니다.<br> 단, 주문완료 후 포인트 및
															할인적용을 위해 결제수단 변경을 요청 하실 경우 주문내역에 따라 불가할 수 있습니다.<br>
															고객만족센터(080-500-5588, 오전10시 ~오후10시)로 문의해주세요.
														</p>
													</div>
												</section>
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