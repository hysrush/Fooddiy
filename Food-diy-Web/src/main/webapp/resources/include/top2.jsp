<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header-body" style="background-color: green; min-width: 150px;">
	<div class="header-container container" >
		<div class="header-row">
			<!-- 로고  -->
			<div class="header-column header-column-center">
				<div class="header-logo" style="padding: 0px;">
					<a href="${ pageContext.request.contextPath}/index.jsp">
					<img alt="Porto" style="margin: 0px; border-radius:50%;" width="111" height="54" src="${ pageContext.request.contextPath }/resources/img/Subway-logo.jpg">
					</a>
				</div>
			</div>
			<div class="header-column">
				<%-- <nav class="header-nav-top hidden-xs hidden-sm">
					<ul class="nav nav-pills">
						<li class="hidden-xs hidden-sm">
						
						
								<a href="about-us.html"> <!-- <i class="fa fa-angle-right"></i> -->
								장바구니&nbsp;<img
								alt="${ pageContext.request.contextPath }/장바구니.do"
								src="${ pageContext.request.contextPath }/resources/img/binCartImg.png"
								style="width: 20px; height: 20px;"></a>
						</li>
					</ul>
				</nav> --%>
				
				<nav class="header-nav-top hidden-xs hidden-sm">
		
								<div class="header-row">
									<div class="header-nav">
										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
											<i class="fa fa-bars"></i>
										</button>
										<div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse" style="float: right; margin-top: 0px">
											<nav>
												<ul class="nav nav-pills" id="mainNav">
													<li class="dropdown dropdown-mega dropdown-mega-shop">
														<a class="dropdown-toggle" href="${pageContext.request.contextPath}/menu/cart.jsp">
															장바구니&nbsp;
															<img width="20" height="20" src="${ pageContext.request.contextPath }/resources/img/binCartImg.png">
														</a>
														
														<ul class="dropdown-menu">
															<li>
																<div class="dropdown-mega-content">
																	<table class="cart">
																		<tbody>
																			<tr>
																				<td class="product-thumbnail">
																					<a href="shop-product-sidebar.html">
																						<img width="100" height="100" alt="" class="img-responsive" src="${pageContext.request.contextPath}/resources/img/products/product-1.jpg">
																					</a>
																				</td>
																				<td class="product-name">
																					<a href="shop-product-sidebar.html">Photo Camera<br><span class="amount"><strong>$299</strong></span></a>
																				</td>
																				<td class="product-actions">
																					<a title="Remove this item" class="remove" href="#">
																						<i class="fa fa-times"></i>
																					</a>
																				</td>
																			</tr>
																			<tr>
																				<td class="actions" colspan="6">
																					<div class="actions-continue">
																						<button type="submit" class="btn btn-default">View All</button>
																						<button type="submit" class="btn pull-right btn-primary">Proceed to Checkout <i class="fa fa-angle-right ml-xs"></i></button>
																					</div>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</li>
														</ul>
													</li>						
												</ul>
											</nav>
										</div>
									</div>
								</div>
				</nav>
				
				<div class="header-row">
					<div class="header-nav header-nav-stripe">
						<!-- 웹사이트 크기 변경시 아이콘 변경해 주는 태그 -->
						<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main" style="background-color: gray;">
							<i class="fa fa-cart-plus"></i>
						</button>
						<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main" style="float: left;">
							<i class="fa fa-bars"></i>
						</button>
					<!-- Menu공간  -->
					<div class="header-nav-main header-nav-main-square header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse" >
						<nav style="background-color: white;">
							<ul class="nav nav-pills" id="mainNav">
								<li class="dropdown active"><a class="dropdown-toggle" href="#"> Menu </a>
									<ul class="dropdown-menu">
										<li><a href="${ pageContext.request.contextPath}/menu/menu2.jsp">전체 메뉴</a></li>
										<li class="dropdown-submenu"><a href="#">세트 메뉴</a>
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
										<li class="dropdown-submenu"><a href="#">Best<span
												class="tip tip-dark"></span></a>
												<ul class="dropdown-menu">
												<li><a href="index-corporate-hosting.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-corporate-hosting.jpg">바나나킥</a></li>
											</ul></li>
										<li class="dropdown-submenu"><a href="#">신제품<span class="tip tip-dark">NEW</span></a>
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
										<li class="dropdown-submenu"><a href="#">사이드/음료</a>
											<ul class="dropdown-menu">
												<li><a href="index-one-page.html"
													data-thumb-preview="${ pageContext.request.contextPath}/resources/img/previews/preview-one-page.jpg">One
														Page Original</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="dropdown"><a class="dropdown-toggle" href="#">EVENT</a>
									<ul class="dropdown-menu">
										<li><a href="${ pageContext.request.contextPath}/event/EventPage.jsp">브랜드 EVENT</a></li>
										<li><a href="${ pageContext.request.contextPath}/event/EventPage.jsp">매장별 EVENT</a></li>
									</ul>
								</li>
								<li class="dropdown"><a class="dropdown-toggle" href="#">Community</a>
									<ul class="dropdown-menu">
										<li><a href="${ pageContext.request.contextPath }/notice/qna.jsp">자주하는 질문</a></li>
										<li><a href="${ pageContext.request.contextPath }/notice/noticeList.jsp">공지사항</a></li>
										<li><a href="${ pageContext.request.contextPath }/notice/suggestion.jsp">1:1 문의</a></li>
										<li><a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp"
											data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/subway-sns.jpg">SNS</a></li>
									</ul></li>
								<!-- 회원 로그인하면 My page -->
								<%-- <c:if test="${ not empty userVO }"> --%>
									<li class="dropdown"><a class="dropdown-toggle" href="#">My Page</a>
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
								<!-- 회원 아닐때  -->
								<c:choose>
									<c:when test="${ empty userVO }">
										<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
											<a class="dropdown-toggle" href="${ pageContext.request.contextPath }/sign/login.jsp">
												<i class="fa fa-user"></i> Sign In</a>
										</li>
										<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
											<a class="dropdown-toggle" href="${ pageContext.request.contextPath }/sign/signUp.jsp">
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
																	<li><a href="${ pageContext.request.contextPath }/member/memberDetail.jsp">My Page</a></li>
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
</div>
