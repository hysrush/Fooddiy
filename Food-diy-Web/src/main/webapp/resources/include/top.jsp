<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header-body" style="background-color: green;">
	<div class="header-container container" >
		<div class="header-row">
			<!-- 로고  -->
			<div class="header-column">
				<div class="header-logo hidden-xs">
					<a href="${ pageContext.request.contextPath}/index.jsp">
					<img alt="Porto" width="111" height="54" data-sticky-width="82" data-sticky-height="40"
						data-sticky-top="33" src="${ pageContext.request.contextPath }/resources/img/Subway-logo.jpg">
					</a>
				</div>
			</div>
			<div class="header-column">
				<div class="header-row">
					<nav class="header-nav-top">
						<ul class="nav nav-pills">
							<li class="hidden-xs"><a href="about-us.html"> <!-- <i class="fa fa-angle-right"></i> -->
									장바구니&nbsp;<img
									alt="${ pageContext.request.contextPath }/장바구니.do"
									src="${ pageContext.request.contextPath }/resources/img/binCartImg.png"
									style="width: 20px; height: 20px;"></a>
							</li>
						</ul>
					</nav>
				</div>
				<div class="header-row">
					<div class="header-nav" >
					<!-- 웹사이트 크기 변경시 아이콘 변경해 주는 태그 -->
						<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main" style="background-color: gray;">
							<i class="fa fa-cart-plus"></i>
						</button>
						<div class="btn header-btn-collapse-nav" style="background-color: rgba(255,255,255,0);">
							<a href="${ pageContext.request.contextPath}/index.jsp"> 
								<img alt="Porto" width="111" height="54" data-sticky-width="82" data-sticky-height="40" style="border-radius:50%;"
								data-sticky-top="33" src="${ pageContext.request.contextPath }/resources/img/Subway-logo.jpg">
							</a>
						</div>
						<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
							<i class="fa fa-bars"></i>
						</button>
					</div>
					<!-- Menu공간  -->
					<div
						class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
						<nav>
							<ul class="nav nav-pills" id="mainNav">
								<li class="dropdown active"><a class="dropdown-toggle"
									href="${ pageContext.request.contextPath}/menu/menu.jsp"> Menu </a>
									<ul class="dropdown-menu">
										<li><a href="${ pageContext.request.contextPath}/menu/menu.jsp">전체 메뉴</a></li>
										<li class="dropdown-submenu"><a href="index-classic.html">세트 메뉴</a>
											<ul class="dropdown-menu">
												<li><a href="index-classic.html"
													data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/spicy.jpg">스파이시 이탈리안</a></li>
												<li><a href="index-classic-color.html"
													data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/club.jpg">써브웨이 클럽</a></li>
												<li><a href="index-classic-light.html"
													data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/turkey.jpg">터키 베이컨</a></li>
												<li><a href="index-classic-video.html"
													data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/chciken.jpg">치킨 데리야끼</a></li>
											</ul></li>
										<li class="dropdown-submenu"><a href="index-classic.html">Best<span
												class="tip tip-dark"></span></a>
												<ul class="dropdown-menu">
												<li><a href="index-corporate-hosting.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-hosting.jpg">바나나킥</a></li>
											</ul></li>
										<li class="dropdown-submenu"><a
											href="${ pageContext.request.contextPath}/menu/new.jsp">신제품<span class="tip tip-dark">NEW</span></a>
											<ul class="dropdown-menu">
												<li><a href="index-corporate.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate.jpg">Corporate
														- Version 1</a></li>
												<li><a href="index-corporate-2.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-version2.jpg">Corporate
														- Version 2</a></li>
												<li><a href="index-corporate-3.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-version3.jpg">Corporate
														- Version 3</a></li>
												<li><a href="index-corporate-4.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-version4.jpg">Corporate
														- Version 4</a></li>
												<li><a href="index-corporate-5.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-version5.jpg">Corporate
														- Version 5</a></li>
												<li><a href="index-corporate-6.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-version6.jpg">Corporate
														- Version 6</a></li>
												<li><a href="index-corporate-7.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-version7.jpg">Corporate
														- Version 7</a></li>
												<li><a href="index-corporate-8.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-version8.jpg">Corporate
														- Version 8</a></li>
												<li><a href="index-corporate-hosting.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-hosting.jpg">Corporate
														- Hosting</a></li>
											</ul></li>
										<li class="dropdown-submenu"><a href="${ pageContext.request.contextPath}/menu/side.jsp">사이드/음료</a>
											<ul class="dropdown-menu">
												<li><a href="index-one-page.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-one-page.jpg">One
														Page Original</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="dropdown"><a class="dropdown-toggle" href="${ pageContext.request.contextPath}/event/EventPage.jsp">EVENT</a>
									<ul class="dropdown-menu">
										<li><a href="${ pageContext.request.contextPath}/event/EventPage.jsp">브랜드 EVENT</a></li>
										<li><a href="${ pageContext.request.contextPath}/event/EventPage.jsp">매장별 EVENT</a></li>
									</ul>
								</li>
								<li class="dropdown"><a class="dropdown-toggle" href="${ pageContext.request.contextPath}/notice/qna.jsp">Community</a>
									<ul class="dropdown-menu">
										<li><a href="${ pageContext.request.contextPath }/notice/qna.jsp">자주하는 질문</a></li>
										<li><a href="${ pageContext.request.contextPath }/notice/noticeList.jsp">공지사항</a></li>
										<li><a href="${ pageContext.request.contextPath }/notice/suggestion.jsp">1:1 문의</a></li>
										<li><a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"
											data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/subway-sns.jpg">SNS</a></li>
									</ul></li>
								<!-- 회원 로그인하면 My page -->
								<%-- <c:if test="${ not empty userVO }"> --%>
									<li class="dropdown"><a class="dropdown-toggle" 
									href="${ pageContext.request.contextPath}/member/memberDetail.jsp">My Page</a>
										<ul class="dropdown-menu">
											<li><a href="${ pageContext.request.contextPath}/member/memberDetail.jsp">회원 정보</a></li>
											<li><a href="${ pageContext.request.contextPath}/member/Latest-Order.jsp">최근 주문 내역</a></li>
											<li><a href="${ pageContext.request.contextPath}/member/myMenu.jsp">나만의 메뉴</a></li>
											<li><a href="${ pageContext.request.contextPath}/member/myQnA.jsp">나의 문의사항</a></li>
										</ul></li>
								<%-- </c:if> --%>
								<!-- 비회원 로그인하면 주문내역 조회 -->
								<c:if test="${ not empty nonMember }">
									<li class="dropdown"><a class="dropdown-toggle" href="#">주문내역조회</a></li>
								</c:if>
								
								<c:choose>
									<c:when test="${ empty userVO }">
										<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
											<a class="dropdown-toggle" href="${ pageContext.request.contextPath }/member/login.jsp">
												<i class="fa fa-user"></i> Sign In</a>
										</li>
										<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
											<a class="dropdown-toggle" href="${ pageContext.request.contextPath }/member/signUp.jsp">
												<i class="fa fa-user"></i> Sign UP</a>
										</li>
									</c:when>
									<c:otherwise>
										<li
											class="dropdown dropdown-mega dropdown-mega-signin signin logged"
											id="headerAccount"><a class="dropdown-toggle"
											href="page-login.html"> <i class="fa fa-user"></i>${ userVO.name }</a>
											<ul class="dropdown-menu">
												<li>
													<div class="dropdown-mega-content">
														<div class="row">
															<div class="col-md-8">
																<div class="user-avatar">
																	<div class="img-thumbnail">
																		<img
																			src="${ pageContext.request.contextPath }/img/clients/client-1.jpg"
																			alt="">
																	</div>
																	<p>
																		<strong>${ userVO.id }</strong> <span>${ 등급 }</span>
																	</p>
																</div>
															</div>
															<div class="col-md-4">
																<ul class="list-account-options">
																	<li><a href="#">My Page</a></li>
																	<li><a href="#">Log Out</a></li>
																</ul>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</li>
									</c:otherwise>
								</c:choose>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
