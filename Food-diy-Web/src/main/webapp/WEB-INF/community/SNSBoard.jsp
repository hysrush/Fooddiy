<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>| SNS |</title>

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
	href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">

<!-- Head Libs -->
<script
	src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>

<!-- Theme Custom CSS -->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/resources/css/custom.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">





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
								<li><a
									href="${ pageContext.request.contextPath }/notice/qna.jsp">커뮤니티</a></li>
								<li class="active">SNS</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>SNS게시판</h1>
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
									<li ><a href="${ pageContext.request.contextPath }/community/qna.do">자주묻는 질문</a></li>
									<li><a href="${ pageContext.request.contextPath }/community/notice.do">Subway 소식</a>
										<ul>
											<li class="active"><a href="${ pageContext.request.contextPath }/community/notice.do">공지사항</a></li>
											<li><a href="${ pageContext.request.contextPath }/community/news.do">보도자료</a></li>
										</ul>
									</li>
									<li><a href="${ pageContext.request.contextPath }/community/claimWrite.do">1:1 문의</a></li>
									<li class="active"><a href="${ pageContext.request.contextPath }/community/snsPage.do">SNS게시판</a></li>
							</ul>
						</aside>
					</div>

					<!-- START! -->
						<div class="col-md-10" style="height:30px;">
							<span class="label label-lg label-danger">Best!!</span>
						</div>
						<span><input type="hidden" value="공백"/></span>
						<span><input type="hidden" value="공백"/></span>
						<span><input type="hidden" value="공백"/></span>
						
						<div class="col-md-10" >
						<div class="container"style= "border:1px solid black" >
							<div class="row">

								<div class="sort-destination-loader sort-destination-loader-showing">
									<ul class="portfolio-list sort-destination popup-gallery-ajax"
										data-sort-id="portfolio">
											<c:forEach items="${ hitList }" var="snsHit" begin="0" end="3">
													<li class="col-md-3 col-sm-10 col-xs-12 isotope-item brands">
													<div class="testimonial testimonial-style-3">
														<div class="testimonial-author">
															<div class="testimonial-author-thumbnail">
																<img src="../upload/${snsHit.pic}" class="img-responsive img-circle" alt="">
															</div>
															<p>
																<strong>${snsHit.id }</strong>
															</p>
														</div>
													</div>
													<div data-toggle="modal">
														<span class="product-thumb-info">
														<span class="thumb-info thumb-info-lighten">
													 <a onclick="modal('${ snsHit.no }')">
															<span class="thumb-info-wrapper"> 
															<img src="../upload/SNS/${ snsHit.fileName }" class="img-responsive" style="width: 250px; height: 250px">
																</span>
														</a>
														</span>
														 <span class="product-thumb-info-content">
																	<span>
																		<!--  좋아요 버튼 누르면 snsVO.like 증가  -->
																	<button type="button"  onclick="like('${snsHit.no}')" class="mb-xs mt-xs mr-xs btn btn-borders btn-info"> 
																		<i class="fa fa-thumbs-up"></i>
																	</button>
																	<i class="fa fa-heart" id="likey">${snsHit.like}</i>
																	
																	
																</span> 
																<span>
																		<h4>${snsHit.title }</h4>
																</span>
															
														</span>
														</span>
													</div>
												</li>
											
										
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						</div>				
					
					
					<div class="col-md-2 hidden-xs">
					</div>
					<br/>
					<br/>
					<br/>
					<div class="col-md-10">
							 
						</div>
					<div class="col-md-2 hidden-xs">
					</div>
					<div class="col-md-10">
						<div class="container">
							<div class="row">

								<div
									class="sort-destination-loader sort-destination-loader-showing">
									<ul class="portfolio-list sort-destination popup-gallery-ajax"
										data-sort-id="portfolio">


										<c:forEach items="${ snsList }" var="snsVO">
											<li class="col-md-3 col-sm-10 col-xs-12 isotope-item brands">
												<div class="testimonial testimonial-style-3">
													<div class="testimonial-author">
														<div class="testimonial-author-thumbnail">
															<img src="../upload/${snsVO.pic}" class="img-responsive img-circle" alt="">
														</div>
														<p>
															<strong>${snsVO.id }</strong>
														</p>
													</div>
												</div>
												<div data-toggle="modal">
													<span class="product-thumb-info">
													<span class="thumb-info thumb-info-lighten">
												 <a onclick="modal('${ snsVO.no }')">
														<span class="thumb-info-wrapper"> 
														<img src="../upload/SNS/${ snsVO.fileName }" class="img-responsive" style="width: 250px; height: 250px">
															</span>
													</a>
													</span>
													 <span class="product-thumb-info-content">
																<span>
																	<!--  좋아요 버튼 누르면 snsVO.like 증가  -->
																<button type="button"  onclick="like('${snsVO.no}')" class="mb-xs mt-xs mr-xs btn btn-borders btn-info"> 
																	<i class="fa fa-thumbs-up"></i>
																</button>
																<i class="fa fa-heart" id="likey">${snsVO.like}</i>
																
																
															</span> 
															<span>
																	<h4>${snsVO.title }</h4>
															</span>
														
													</span>
													</span>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>

							</div>

						</div>

					</div>
					<div class="col-md-2 hidden-xs">
					</div>
					<div class="col-md-2 hidden-xs">
					</div>
					<div class="col-md-2 hidden-xs">
					</div>
					<div class="col-md-2 hidden-xs">
					</div>
					<div class="col-md-2 hidden-xs">
					</div>
					<div class="col-md-12" align="center">
						<ul class="pagination">

							<!-- 이전 페이지 이동  -->
							<li><a onclick='pagePre(${p.pageStartNum},${p.pageCnt});'><i
									class="fa fa-chevron-left"></i></a></li>

							<!--  페이지 번호  -->
							<c:forEach var='i' begin="${p.pageStartNum }"
								end="${p.pageLastNum}" step="1">
								<li class='pageIndex$[i]'><a onclick="pageIndex(${i});">${i}</a></li>
							</c:forEach>
							<!-- 다음 페이지 이동 -->

							<li><a
								onclick='pageNext(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'><i
									class="fa fa-chevron-right"></i></a></li>
						</ul>

						<form action="./snsPage.do" method="post" id='frmPaging'>
							<!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
							<input type='hidden' name='index' id='index' value='${p.index}'>
							<input type='hidden' name='pageStartNum' id='pageStartNum'
								value='${p.pageStartNum}'> <input type='hidden'
								name='listCnt' id='listCnt' value='${p.listCnt}'>
						</form>
					</div>


					<div class="col-md-12" align="right">
						<a
							href="${ pageContext.request.contextPath }/community/snsWrite.do"><input
							type="button" value="글 등록 " /></a>
					</div>





					<!-- END -->
				</div>
			</div>
			<!-- END -->

		</div>
		<footer class="light visible-lg" id="footer">
			<jsp:include page="/resources/include/bottom.jsp"/>
		</footer>
		
		<footer class="light hidden-lg" id="footer">
			<jsp:include page="/resources/include/mobile-bottom.jsp"/>
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


	<script>
	function modal(snsNo) {
	      $(".thumb-info").click(function() {
	    	  $('div.modal').modal().removeData();
	         var url = '${ pageContext.request.contextPath}/community/snsDetail.do?no='+snsNo;
	         $('div.modal').modal({ remote : url  });
	       
	      })
	   };

	</script>


	<script>
			function frmPaging() {
			    document.getElementById("frmPaging").submit();
			}
			// 이전 페이지 index
			function pagePre(index, pageCnt) {
			    if (0 < index - pageCnt) {
			        index -= pageCnt;
			        document.getElementById("pageStartNum").value = index;
			        document.getElementById("index").value = index - 1;
			        frmPaging();
			    }
			}
			// 다음 페이지 index
			function pageNext(index, total, listCnt, pageCnt) {
			    var totalPageCnt = Math.ceil(total / listCnt);
			    var max = Math.ceil(totalPageCnt / pageCnt);
			    if (max * pageCnt > index + pageCnt) {
			        index += pageCnt;
			        document.getElementById("pageStartNum").value = index;
			        document.getElementById("index").value = index - 1;
			        frmPaging();
			    }
			}
			
			// index 리스트 처리
			function pageIndex(pageStartNum) {
			    document.getElementById("index").value = pageStartNum - 1;
			    frmPaging();
			}
			// 리스트출력개수 처리
			function listCnt() {
			    document.getElementById("index").value = 0;
			    document.getElementById("pageStartNum").value = 1;
			    document.getElementById("listCnt").value = document.getElementById("listCount").value;
			    frmPaging();
			}
			window.onload = function() {
			    // 현재번호 active
			    var index = document.getElementById("index").value;
			    var pageIndex = document.querySelector('.pageIndex'+(Number(index)+1));
			   
			    // 리스트갯수 selected 처리
			    $("#listCount > option").each(function () {
			        if ($(this).val() == $('#listCnt').val()) {
			            $(this).prop("selected", true);
			        }
			    });
			}
			
	

			</script>

	
	<script>
		
	function like(no){
			
			var btn = this;
			var no = no;
			
			$.ajax({
					url : "./like",
					type : "post",
					data : {"no" : no},
					success : function(responseData){
						var data = JSON.parse(responseData);
							alert("좋아요가 완료되었습니다.!");
							alert(data.like);
							
							var contents = '';
							contents +=  data.like;
							
							$('#likey').text(data.like);
			    
						    } 
					});    
			};		
		
	
	
	
	
	
	</script>
	





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
	<script
		src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>

	<!-- Theme Initialization Files -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

	<!-- 모달창 띄우는 js -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/examples/examples.portfolio.js"></script>
</body>
</html>