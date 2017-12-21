<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="header-body">
	<div class="header-top">
		<div class="container">
			<div class="dropdowns-container">
				<div class="header-dropdown cur-dropdown">
					<a href="#">USD <i class="fa fa-caret-down"></i></a>

					<ul class="header-dropdownmenu">
						<li><a href="#">EUR</a></li>
						<li><a href="#">USD</a></li>
					</ul>
				</div>

				<div class="header-dropdown lang-dropdown">
					<a href="#"><img src="${ pageContext.request.contextPath}/resources/img/demos/shop/en.png" alt="English">English <i class="fa fa-caret-down"></i></a>

					<ul class="header-dropdownmenu">
						<li><a href="#"><img src="${ pageContext.request.contextPath}/resources/img/demos/shop/en.png" alt="English">English</a></li>
						<li><a href="#"><img src="${ pageContext.request.contextPath}/resources/img/demos/shop/fr.png" alt="French">French</a></li>
					</ul>
				</div>

				<div class="compare-dropdown">
					<a href="#"><i class="fa fa-retweet"></i> Compare (2)</a>

					<div class="compare-dropdownmenu">
						java.io.IOException cannot be resolved to a type
						<div class="dropdownmenu-wrapper">
							<ul class="compare-products">
								<li class="product"><a href="#" class="btn-remove" title="Remove Product"><i class="fa fa-times"></i></a>
									<h4 class="product-name">
										<a href="demo-shop-9-product-details.html">White top</a>
									</h4></li>
								<li class="product"><a href="#" class="btn-remove" title="Remove Product"><i class="fa fa-times"></i></a>
									<h4 class="product-name">
										<a href="demo-shop-9-product-details.html">Blue Women Shirt</a>
									</h4></li>
							</ul>

							<div class="compare-actions">
								<a href="#" class="action-link">Clear All</a> <a href="#" class="btn btn-primary">Compare</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="top-menu-area">
				<a href="#">Links <i class="fa fa-caret-down"></i></a>
				<ul class="top-menu">
					<li><a href="${ pageContext.request.contextPath }/main/Start">Home</a></li>
					<li><a href="${ pageContext.request.contextPath }/main/siteT">Sitemap</a></li>
					<li><a href="${ pageContext.request.contextPath }/sign/login.do">Log in</a></li>
					<li><a href="${ pageContext.request.contextPath }/sign/signUp.do">Join</a></li>
				</ul>
			</div>
			<p class="welcome-msg">Welcome to Subway!</p>
		</div>
	</div>
	<div class="header-container container">
		<div class="header-row">
			<div class="header-column">
				<div class="row">
					<div class="header-search">
						<a href="#" class="search-toggle"><i class="fa fa-search"></i></a>
						<form action="#" method="get">
							<div class="header-search-wrapper">
								<input type="text" class="form-control" name="q" id="q" placeholder="Search..." required> <select id="cat" name="cat">
									<option value="">전체</option>
									<option value="4">Fashion</option>
									<option value="12">- Women</option>
									<option value="13">- Men</option>
									<option value="66">- Jewellery</option>
									<option value="67">- Kids Fashion</option>
									<option value="5">Electronics</option>
									<option value="21">- Smart TVs</option>
									<option value="22">- Cameras</option>
									<option value="63">- Games</option>
									<option value="7">Home &amp; Garden</option>
									<option value="11">Motors</option>
									<option value="31">- Cars and Trucks</option>
									<option value="32">- Motorcycles &amp; Powersports</option>
									<option value="33">- Parts &amp; Accessories</option>
									<option value="34">- Boats</option>
									<option value="57">- Auto Tools &amp; Supplies</option>
								</select>
								<button class="btn btn-default" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</form>
					</div>

					<a href="#" class="mmenu-toggle-btn" title="Toggle menu"> <i class="fa fa-bars"></i>
					</a>
				</div>
			</div>
			<div class="header-column header-column-center">
				<div class="header-logo">
					<a href="${ pageContext.request.contextPath }/main/Start"> <img alt="Subway" style="margin: 0px;" width="220" height="95" src="${ pageContext.request.contextPath }/resources/img/subwayLOGO.jpg">
					</a>
				</div>
			</div>
			<div class="header-column">
				<div class="row">
					<div class="cart-area">
						<div class="custom-block">
							<i class="fa fa-phone"></i> <span>(+404) 158 14 25 78</span> <span class="split"></span> <a href="#">CONTACT US</a>
						</div>
						<c:if test="${ not empty loginVO }">
							<div class="cart-dropdown">
							<a href="#" class="cart-dropdown-icon"> <i class="minicart-icon"></i> <span class="cart-info"> <span class="cart-qty"></span> <span class="cart-text">item(s)</span>
							</span>
							</a>
							<div class="center" style="font-size: 9pt; font-weight: bold;">장바구니</div>
							<div class="cart-dropdownmenu right">
								<div class="dropdownmenu-wrapper">
									<div class="cart-products" style="max-height:300px;overflow: auto;">
										<c:forEach items="${ cartList }" var="cartVO">
											<div class="product product-sm">
												<div class ="cartNo" style="display: none">${ cartVO.no }</div>
												<a href="#" class="btn-remove" title="Remove Product"> 
													<i class="fa fa-times"></i>
												</a>
												<figure class="product-image-area">
													<a href="#" title="Product Name" class="product-image"> <img src="${ cartVO.pic }" alt="Product Name">
													</a>
												</figure>
												<div class="product-details-area">
													<h1 class="product-name">
														<a href="#" title="Product Name">${ cartVO.name }</a> ${cartVO.size }
													</h1>
													
													<div class="cart-qty-price">
														<span class = "total-qty">${ cartVO.qty }</span> X <span class="product-price commaN">${ cartVO.total_price }원</span>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="cart-totals">
										<table class="totals-table">
											<tbody>
												<tr>
													<td>매장</td>
													<td><div>${ cartStoreVO.storeName }</div></td>
												</tr>
												<tr>
													<td>수량</td>
													<td class="minicart-final-qty"></td>
												</tr>
												<tr>
													<td>총 가격</td>
													<td class="minicart-final-price commaN"></td>
												</tr>
											</tbody>
										</table>
									</div>

									<div class="cart-actions">
										<a href="#" class="btn btn-primary direct-order-button" style="background-color: #0cc485;">바로주문</a>
										<a href="${ pageContext.request.contextPath}/menu/cart.do" class="btn btn-primary go-cart-button" style="background-color: #eb2771;">장바구니</a>
									</div>
									<div class = "cart-none"style="text-align: center; display: none; padding: 10px 10px 10px 10px; margin-top: 10px;">
										<h4>상품 주문내역이 없습니다.</h4>
									</div>
								</div>
							</div>
						</div>
						</c:if>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			
			//숫자표기
			for(var i = 0; i < $('.commaN').length; ++i) {
				$('.commaN').eq(i).text(comma($('.commaN').eq(i).text()));
			}
			
			//장바구니안에 물건 갯수
			$('.cart-qty').text($('.cart-products').children().length);
			
			//상품이 없을 때 표시
			if($('.cart-products').children().length == 0) {
				if($('.cart-products .product').length == 0) {
					$('.cart-totals').hide();
					$('.cart-actions').hide();
					$('.cart-none').show();
				}
			}
			
			
			var finalPrice = 0;
			var finalQty = 0;
			
			//총 가격
			$('.cart-qty-price').each(function() {
				var qty = $(this).children('.total-qty').text() * 1;
				var price = uncomma($(this).children('.product-price').text()) * 1;
				
				finalPrice += (qty * price);
				
			});
			
			$('.minicart-final-price').text(comma(finalPrice) + "원");
			
			//총 수량
			for(var i = 0; i < $('.cart-qty-price .total-qty').length; ++i) {
				finalQty += $('.cart-qty-price .total-qty').eq(i).text() * 1;
			}
			$('.minicart-final-qty').text(finalQty);
			
			
			
			//장바구니 클릭 이벤트
			$('.cart-dropdown-icon').click(function() {
				$('.cart-dropdownmenu').toggle(500);
			});
			
			
			
			
			//장바구니 상품 삭제
			$('.cart-products .product').each(function() {
				
				
				$(this).find('.btn-remove').click(function() {
					var no = $(this).siblings('.cartNo').text();
					var qty = $(this).siblings('.product-details-area').find('.total-qty').text() * 1;
					var price =  uncomma($(this).siblings('.product-details-area').find('.product-price').text()) * 1;
					var finalQty = $('.minicart-final-qty').text() * 1;
					var finalPrice = uncomma($('.minicart-final-price').text()) * 1;
					
					$(this).closest('.product').remove();
					var cartQty = $('.cart-qty').text();
					$('.cart-qty').text(cartQty-1);
				
					
					
					$.ajax({
						url : "${pageContext.request.contextPath}/menu/deleteCart",
						type : "post",
						data : {"no" : no},
						success : function() {
							
							
							finalQty -= qty;
							finalPrice -= (qty * price);
							
							 $('.minicart-final-qty').text(finalQty);
							 $('.minicart-final-price').text(finalPrice);
							 
							
						}
					});
					
					
					
					
					if($('.cart-products .product').length == 0) {
						$('.cart-totals').hide();
						$('.cart-actions').hide();
						$('.cart-none').show();
					}
				});
			});
			
			
			//마우스 호버 비디오 재생 
			var video = document.getElementById("video1");
			
			$("#dropmenu").hover(function() {
				video.play();
			}, function(){
				video.pause();
			});			
			
			
		});
		

		
		//콤마찍기
		function comma(str) {
		    str = String(str);
		    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		}
		 
		//콤마풀기
		function uncomma(str) {
		    str = String(str);
		    return str.replace(/[^\d]+/g, '');
		}
		 
		//값 입력시 콤마찍기
		function inputNumberFormat(obj) {
		    obj.value = comma(uncomma(obj.value));
		}	

	</script>

	<div class="header-container header-nav header-nav-center">
		<div class="container">
			<div class="header-nav-main">
				<nav>
					<ul class="nav nav-pills" id="mainNav">
						<li class="active"><a href="${ pageContext.request.contextPath }/index2.jsp"> Home </a>
						<li class="dropdown dropdown-mega " id="dropmenu"><a href="${ pageContext.request.contextPath}/menu/menuAll.do" class="dropdown-toggle"> Menu </a>
							<ul class="dropdown-menu">
								<li>
									<div class="dropdown-mega-content">
										<div class="row">
											<div class="col-md-8">
												<!-- <div class="dropdown-mega-top">
													<span>Suggestions:</span> <a href="demo-shop-9-category-4col.html">3D</a> <a href="demo-shop-9-category-4col.html">Mobile</a> <a href="demo-shop-9-category-4col.html">Camera</a> <a href="demo-shop-9-category-4col.html">Headsets</a>
												</div> -->
											</div>
										</div>
										<div class="row">
											<div class="col-md-8">
												<div class="row">
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/all.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">&nbsp; 전체메뉴<br>ALL MENU</a>
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#recommend" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/recommend.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#recommend" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">추천메뉴<br>RECOMMEND</a>														
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#premium" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/premium.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#premium" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">프리미엄<br>PREMIUM</a>														
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#best" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/best.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#best" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">베스트<br>BEST</a>														
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#classic" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/classic.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#classic" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">클래식<br>CLASSICS</a>														
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#breakfast" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/breakfast.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#breakfast" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">아침식사<br>BREAKFAST</a>														
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#salad" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/salad.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#salad" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">샐러드<br>SALADS</a>														
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#addition" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/addition.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#addition" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">추가메뉴<br>EXTRAS</a>														
													</div>
													<div class="col-md-3">
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#beverage" class="cat-img">
														<img src="${ pageContext.request.contextPath}/upload/top_img/beverage.png" alt="Category Name" style="margin-left: auto; margin-right: auto; display: block;"></a>
														<a href="${ pageContext.request.contextPath}/menu/menuAll.do#beverage" class="dropdown-mega-sub-title" style="font-size: 10pt; font-weight: bold; text-align: center;">음료<br>DRINK</a>														
													</div>
												</div>
											</div>
											<div class="col-md-4">
												<div class="menu-banner-area">
												<!-- 298 x 232 -->
													<div class="menu-banner-header">
														<h3>
															Buy Now <span class="font-weight-bold">Your</span> <span class="font-weight-extra-bold">SUB</span>
														</h3>
														<a href="https://youtu.be/KeDXiW6rIBE" class="btn btn-primary" target="_blank">View now <i class="fa fa-caret-right"></i></a>
													</div>
													<video id="video1" src="${ pageContext.request.contextPath}/upload/TVCF.mp4" width="298" height="232" controls></video>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul></li>
						<li class="dropdown"><a href="${ pageContext.request.contextPath }/event/eventPage.do" class="dropdown-toggle"> EVENT <span class="tip tip-new">New</span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${ pageContext.request.contextPath}/event/eventPage.do">브랜드 EVENT</a></li>
								<li><a href="${ pageContext.request.contextPath}/event/storeEventPage.do">매장별 EVENT</a></li>
							</ul></li>
							<li class="dropdown"><a href="${ pageContext.request.contextPath }/store/findStoreU.do" class="dropdown-toggle"> STORE 
						</a>
							<ul class="dropdown-menu">
								<li><a href="${ pageContext.request.contextPath}/store/findStoreU.do">매장찾기</a></li>
								
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="${ pageContext.request.contextPath }/community/qna.do"> Community <span class="tip tip-hot">Hot!</span></a>
							<ul class="dropdown-menu">
								<li><a href="${ pageContext.request.contextPath }/community/qna.do">자주묻는 질문</a></li>
								<li><a href="${ pageContext.request.contextPath }/community/subway/notice.do">Subway소식</a></li>
								<li><a href="${ pageContext.request.contextPath }/community/claimWrite.do">1:1 문의</a></li>
								<li><a href="${ pageContext.request.contextPath }/community/snsPage.do" data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/subway-sns.jpg">SNS 게시판</a></li>
							</ul></li>
						<!-- 회원 로그인하면 My page -->
						<c:if test="${ (not empty loginVO) and (loginVO.type eq 'U')  }">
							<li class="dropdown"><a href="${ pageContext.request.contextPath }/member/memberDetail.do" class="dropdown-toggle"> My Page </a>
								<ul class="dropdown-menu">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">회원 정보</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/Latest-Order.do?id=${loginVO.id}">최근 주문 내역</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
							</li>
						</c:if>
						<!-- 비회원 로그인하면 주문내역 조회 -->
						<c:if test="${ loginVO.type eq 'N' }">
							<li class="dropdown"><a href="${ pageContext.request.contextPath }/sign/nonmemberMenu.jsp">주문내역조회</a></li>
						</c:if>
						<c:choose>
							<c:when test="${ empty loginVO }">
								<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
									<a href="${ pageContext.request.contextPath }/sign/login.do">
										<i class="fa fa-user"></i> Sign IN
									</a>
								</li>
								<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
									<a href="${ pageContext.request.contextPath }/sign/signUp.do">
										<i class="fa fa-user"></i> Sign UP
									</a>
								</li>
							</c:when>
							<c:when test="${ loginVO.type eq 'U' }">
								<li class="dropdown dropdown-mega dropdown-mega-signin signin logged" id="headerAccount">
									<a class="dropdown-toggle" href="${ pageContext.request.contextPath }/member/memberDetail.do"> <i class="fa fa-user"></i>${ loginVO.name }</a>
									<ul class="dropdown-menu">
										<li>
											<div class="dropdown-mega-content">
												<div class="row">
													<div class="col-md-8">
														<div class="user-avatar">
															<div class="img-thumbnail">
																<c:choose>
													                <c:when test="${ loginVO.file ne 'null' and loginVO.file ne null }">
															                <img src="../upload/${ loginVO.file }">
													                </c:when>
																	<c:otherwise>
																		<img src="${ pageContext.request.contextPath }/resources/img/AA.jpg" style="width: 150px; height: 50px;">
																	</c:otherwise>
																</c:choose>
															</div>
															<p><strong>${ loginVO.type }</strong> <span>${ loginVO.grade }</span></p>
														</div>
													</div>
													<div class="col-md-4">
														<ul class="list-account-options">
															<li><a href="${ pageContext.request.contextPath }/member/memberDetail.do">My Page</a></li>
															<li><a href="${ pageContext.request.contextPath }/sign/logout.do">Log Out</a></li>
														</ul>
													</div>
												</div>
											</div>
										</li>
									</ul></li>
							</c:when>
							<c:otherwise>
								<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
									<a href="${ pageContext.request.contextPath }/sign/nonlogout?id=${loginVO.id}"><i class="fa fa-user"></i> ${ loginVO.name }</a>
								</li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
