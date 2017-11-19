<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title> | 매장별 EVENT |  </title>	

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
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>


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
									<li><a href="#">Home</a></li>
									<li class="active">Events</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>매장별 EVENT</h1>
							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<div class="row">
						<div class="col-md-3">
							<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">

									<h4 class="heading-primary">이벤트</h4>
								<ul class="nav nav-list mb-xlg">
									<li><a href="${ pageContext.request.contextPath }/event/eventPage.do">브랜드 이벤트</a></li>
									<li class="active">
										<a href="${ pageContext.request.contextPath }/event/storeEventPage.jsp">점포별 이벤트</a>
									</li>
								</ul>
							</aside>
						</div>
						<div class="col-md-9">
							<!-- START -->
							<div class="row">
								<div class="col-md-12">
		
									<div class="tabs tabs-bottom tabs-center tabs-simple">
										<ul class="nav nav-tabs">
											<li class="active">
												<a href="#tabsNavigationSimple1" data-toggle="tab" aria-expanded="true">매장별 이벤트</a>
											</li>
											<li class="">
												<a href="#tabsNavigationSimple2" data-toggle="tab" aria-expanded="false">종료된 매장별  이벤트 </a>
											</li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="tabsNavigationSimple1">
												<div class="center">
												<!--  cart -->
											 			<div class="col-md-12">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">지역검색</h4>
												<form action="${ pageContext.request.contextPath }/event/storeEventPage.do" id="frmCalculateShipping" method="post">
													<div class="row">
														<div class="form-group">
															<div class="col-md-6">
																<label>시,도</label>
																<select class="form-control" id ="sido">
																	<option value="" selected="selected" disabled= "disabled">시,도 를 선택해주세요 </option>
																	  <c:forEach var="city" items="${ cityList }" varStatus="i">
																	  		<option value="${city.cityNo}">${ city.cityName }</option>																		    
																	  </c:forEach>
																</select>
															</div>
															
															<div class="col-md-6">
																<label>군,구</label>
																<select class="form-control" id= "gugun">
																	<option value="" selected="selected">구,군 을 선택해주세요 </option>
																	 	<c:forEach var="location" items="${ locationList }" varStatus="i">
																	 			
																			<option value="${ location.locationNo }" >${ location.locationName }</option>
																	     
																	  </c:forEach>
																</select>
															</div>	
														</div>
													</div>
												<!-- <div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>매장별 검색</label>
																<input type="text" value="" class="form-control">
															</div>
														</div>
													</div> -->
													<div class="row">
														<div class="col-md-12">
																		<!--  ajax로 보내버리는 a태그  -->
																	<a data-href= "${ pageContext.request.contextPath}/resources/ajax/test-ajax.jsp"  data-ajax-on-page>
																		<input type="submit" value="Search" class="btn btn-default pull-right mb-xl" data-loading-text="Loading...">
																	</a>
														</div>
													</div>
												</form>
													<!--  AJAX 테이블이 생성될 공간  -->
														<div class="container">
															<div class="col-md-8">
															<div id="porfolioAjaxBox" class="ajax-box ajax-box-init mb-lg">
																	<!-- <div class="bounce-loader">
																	<div class="bounce1"></div>
																	<div class="bounce2"></div>
																	<div class="bounce3"></div>
																</div> -->
																<div class="ajax-box-content" id="porfolioAjaxBoxContent"></div>
															</div>
														</div>

											</div>
										</div>
									</div>	
												<%-- 	<!-- 1 -->
													<div class="col-md-12">
														<div class="recent-posts">
															<article class="post">
																<div class="owl-carousel owl-theme nav-inside pull-left mr-lg mb-sm" data-plugin-options="{'items': 1, 'margin': 10, 'animateOut': 'fadeOut', 'autoplay': true, 'autoplayTimeout': 3000}">
																	<div>
																		<img alt="" class="img-responsive img-rounded" src="${ pageContext.request.contextPath}/resources/img/blog/blog-image-2.jpg">
																	</div>
																	
																</div>
																<div class="date">
																	<span class="day">15</span>
																	<span class="month">Jan</span>
																</div>
																<h4><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
																<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="/" class="read-more">read more <i class="fa fa-angle-right"></i></a></p>
															</article>
														</div>
													</div>
													<!-- 2 -->
													<div class="col-md-12">
													<div class="recent-posts">
															<article class="post">
																<div class="owl-carousel owl-theme nav-inside pull-left mr-lg mb-sm" data-plugin-options="{'items': 1, 'margin': 10, 'animateOut': 'fadeOut', 'autoplay': true, 'autoplayTimeout': 3000}">
																	<div>
																		<img alt="" class="img-responsive img-rounded" src="${ pageContext.request.contextPath}/resources/img/blog/blog-image-2.jpg">
																	</div>
																	
																</div>
																<div class="date">
																	<span class="day">15</span>
																	<span class="month">Jan</span>
																</div>
																<h4><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h4>
																<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat libero. <a href="/" class="read-more">read more <i class="fa fa-angle-right"></i></a></p>
															</article>
														</div>
													</div>	
													 --%>
													
													
													
													
													
													
													<!--  -->
										<div class="col-md-12">
											<ul class="pagination">
												<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
											</ul>
										</div>
													
													
													
													
													
												</div>
											</div>
											
											</div>
										</div>
											<div class="tab-pane" id="tabsNavigationSimple2">
											
											
											
												<div class="center">
													<!-- 이벤트 사진과 일정과 내용을 넣는 곳  -->
												
												</div>
									</div>
								</div>
							</div>
							<!-- END -->
						</div>
					</div>
				</div>
			</div>
			<footer id="footer">
				<jsp:include page="/resources/include/bottom.jsp"/>
			</footer>
		</div>
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
		
		<!-- Examples -->
		<script src="${ pageContext.request.contextPath}/resources/js/examples/examples.portfolio.js"></script>
		
		<script type="text/javascript">
			
			$("#sido").change(function(){
				
				// 1. Parameter setting
				var sido = $("#sido").val();
				console.log( "선택된 값1 : " + $("#sido").val() );
	       		
				// 2. ajax call
				$.ajax({
		              url : "./test",
		              type: "post",
		              data : { "sido" : sido },
		              success : function(responseData){
		                  			var data = JSON.parse(responseData);
		                  			
		                  			// 3. result setting
		  				          	alert('다녀옴 , result = ' + data.result);
		  				          	alert('다녀옴 , guList[1] = ' + data.guList[0].LOC_NAME);
		  				          	alert('다녀옴 , guList[1] = ' + data.guList[0].LOC_NO);
		                  			
		  				          	$('#gugun').empty();
			  				        $('#gugun').append('<option value="" selected="selected">구,군 을 선택해주세요 </option>');
		  				          	for(var i = 0 ; i < data.guList.length ; i++){
		  				          		$('#gugun').append('<option value="'+ data.guList[i].LOC_NO + '">' + data.guList[i].LOC_NAME + '</option>');	
		  				          	} 	
		              }
		          });
			});
			
			$("#gugun").change(function(){
				
				// 1. Parameter setting
				
				var gugun = $("#gugun").val();
				
				console.log( "선택된 값1 : " + $("#gugun").val() );
				
				// 2. ajax call
				$.ajax({
		              url : "./test2",
		              type: "post",
		              data : {"gugun" : gugun},
		              success : function(responseData){
		                  			var data = JSON.parse(responseData);
		                  			
		                  			// 3. result setting
		  				          	alert('다녀옴 , result = ' + data.result);
		  				          	alert('다녀옴 , guList = ' + data.guList.LOC_NO);
		  				          	alert('다녀옴 , storeList = ' + data.storeList.STO_NAME);
		                  			
		  				          //   $('#gugun').empty();
			  				      //   $('#gugun').append('<option value="" selected="selected">구,군 을 선택해주세요 </option>');
		  				          //	for(var i = 0 ; i < data.guList.length ; i++){
		  				          //		$('#gugun').append('<option value="" selected="selected">' + data.guList[i] + '</option>');	
		  				          	}
		  				          	
		  				          	
		  				          	
		              
		          });
			});
			
			
			
			
			
		
		</script>
		
		
		
		
		
		
		
		
	</body>
</html>