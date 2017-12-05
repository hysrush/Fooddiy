<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title> | 최극 주문 내역 | </title>

<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

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

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">

		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>


		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">

<script src="${ pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<style type="text/css">
#div01 {
	width: 70px;
	text-align: center;
	border-width: 2px;
	border-style: solid;
}
</style>
<script>
$(document).ready(function(){
	
	$('table .remove_product').each(function() {
		
		$(this).click(function() {
			
			$(this).parent().remove();
			
			var no = $(this).siblings('.cartNo').text();
			var id = "${ loginVO.id }";
			
			//상품삭제
			$.ajax({
				url : "${pageContext.request.contextPath}/member/deleteCart",
				type : "post",
				data : {
					"no" : no,
					"id" : id
				},
				success : function() {
					window.location.reload();
				}
			});
		});
	});

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
		<!-- ---------------------------------------------------------------------------------------------- -->
	<div role="main" class="main">
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
								<h1>내 정보</h1>
							</div>
						</div>
					</div>
				</section>
				
			<div class="container">
				<div class="row">
					<div style="width: 600px">
						<div style="margin-top: 2%; margin-right: 10%" class="col-md-3">
							<aside  class="sidebar">

								<h3 class="heading-primary">Categories</h3>
								<ul class="nav nav-list mb-xlg">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">내 정보</a></li>
									<li class="active">
										<a href="${ pageContext.request.contextPath}/member/Latest-Order.do?id=${loginVO.id}">최근 주문 내역</a>
									</li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
		</aside></div></div>
	
		<div role="main" class="main shop">

				<div class="container">
						<div class="col-md-12r">

							<div style="@media screen " class="featured-boxes">
									<div class="col-md-9 col-xs-12">
										<div class="featured-box featured-box-primary mt-xlg">
											<div class="box-content">
												<table  class="cart-totals">
													<tbody>
														<tr>
															<th style="text-align: center; font-size: 100%;"></th>
															<th class="hidden-xs" style="width: 400px; text-align: center; font-size: 100%;"><h4 align="right" class="heading-primary text-uppercase mb-md"></h4></th>
															<th colspan="2" style="width: 80px;"><h4 align="right" style="margin-right:15%; font-size: 140%; float: center;" class="heading-primary text-uppercase mb-md">주문내용</h4></th>
															<th colspan="1" style="width: 50px; "><h4 align="center" style="font-size: 140%; float: center;" class="heading-primary text-uppercase mb-md ">가격</h4></th>
															<th style="width: 60px;"><h4 style="margin-left: 40%; font-size: 140%; float: center;" class="heading-primary text-uppercase mb-md ">날짜</h4></th>
															
															<!-- hidden-xs 안나오게 하는것 -->
														</tr>
														<c:choose>
														<c:when test="${not empty cartList }">   <!-- 카트 디비가 비워져있으면 뜨게 하는것 -->
														<c:forEach items="${ cartList }" var="cart">
															<tr class="cart-subtotal">
																<td class="cartNo" style="display: none;">${ cart.no }</td>
																<td class="product-thumbnail" style="width: 30px; height: 30px">
																	<form action="${pageContext.request.contextPath }/member/Latest-Order.do" method="post">
																		<input type="hidden" name="id" value="${cart.id }">																		
																		<input type="hidden" name="name" value="${cart.name }">																		
																		<input type="hidden" name="price" value="${cart.price }">
																		<input type="hidden" name="pic" value="${ cart.pic }" />
																		<input type="hidden" name="size" value="${ cart.size }" />
																		<input type="hidden" name="bread" value="${cart.bread }">																
																		<input type="hidden" name="cheese" value="${cart.cheese }">																		
																		<input type="hidden" name="topping" value="${cart.topping }">																		
																		<input type="hidden" name="vegetable" value="${cart.vegetable }">																		
																		<input type="hidden" name="sauce" value="${cart.sauce }">																		
																		<input style="width: 35px; height: 30px" type="image" name="submit" src="${ pageContext.request.contextPath }/resources/img/AA.jpg" value=""/>
																	</form>
																</td>
																<td style="margin-left: 20%; width: 5%" class="product-action-td remove_product">
																	<a title="Remove product" class="btn-remove"><i class="fa fa-times"></i></a>
																</td>
																<td class="hidden-xs" style="width: 30%;">
																	<a><img style="width: 80%; height: 85px" alt="Product Name" class="img-responsive " src="../upload/${ cart.pic }"></a>
																</td>
																<td align="center" style="width: 100px; font-size: 100%;">
																	<span class="amount">${ cart.bread }<br />${cart.cheese }<br />${ cart.topping }<br />${ cart.vegetable }<br />${ cart.sauce }</span>
																</td>
																<td style="font-size: 100%; " align="center">
																	<span class="amount">${ cart.price }</span>
																</td>
																<td style="font-size: 100%;" align="center">
																	<span class="amount">${ cart.regDate }</span>
																</td>
															</tr>
														</c:forEach>
														</c:when>
														<c:otherwise><h3 id="del">최근 주문 내용이 없습니다.</h3></c:otherwise>
														</c:choose>
													</tbody>
												</table>
												</div> 
										</div>	
								<!-- 	<div class="header-search hidden-xs">
										<form id="searchForm" action="page-search-results.html" method="get">
											<div  class="input-group">
												<input style="width: 400px; float: right;" type="text" class="form-control" name="q" id="q" placeholder="Search..." required>
												<span style="" class="input-group-btn">
													<button  class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
												</span>
											</div>
										</form>
										
									</div> -->
									</div>
								</div>
							</div>
							</div>
						</div>
	
				<!-- <div class="row">
								<div align="center" class="col-md-12">
									<ul  class="pagination pull-center">
										<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
									</ul>
								</div>
							</div> -->
		</div>
	</div>
	</div>
	<!-- ---------------------------------------------------------------------------------------------- -->
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


</body>
</html>