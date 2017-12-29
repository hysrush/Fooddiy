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
		
		<!-- js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>

<style type="text/css">
	#title h4{
		color: #339900 !important;
		font-weight: bold;
	}
	td p {
		padding: 20px 30px 30px 20px;
	}
	@media ( min-width : 760px) {
		#fileImg {
			padding-top: 10px;
			max-width: 700px;
			display: inline;
		}
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
		<div role="main" class="main">

			<section class="page-header">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ul class="breadcrumb">
								<li><a href="#">커뮤니티</a></li>
								<li class="active">공지사항</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>Subway 소식</h1>
						</div>
					</div>
				</div>
			</section>

			<div class="container">

				<div class="row">
					<!-- 스티키 사이드바 -->
					<div class="col-md-2 hidden-xs hidden-sm">
						<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">
							<h4 class="heading-primary"><strong>커뮤니티 </strong></h4>
							<ul class="nav nav-list mb-xlg sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
								<li><a href="${ pageContext.request.contextPath }/community/qna/qna.do">자주묻는 질문</a></li>
								<li class="active"><a href="#">Subway 소식</a>
									<ul>
										<c:if test="${ noticeVO.type eq 'A' }">
											<li class="active"><a href="${ pageContext.request.contextPath }/community/subway/notice.do">공지사항</a></li>
											<li><a href="${ pageContext.request.contextPath }/community/subway/news.do">보도자료</a></li>
										</c:if>
										<c:if test="${ noticeVO.type eq 'B' }">
											<li><a href="${ pageContext.request.contextPath }/community/subway/notice.do">공지사항</a></li>
											<li class="active"><a href="${ pageContext.request.contextPath }/community/subway/news.do">보도자료</a></li>
										</c:if>
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
									<div class="col-md-12">
										<h4 class="mb-none">Subway 소식! 공지사항과 보도자료입니다.</h4>
										<br>
										<p class="mb-none">Subway 소식! 공지사항과 보도자료입니다.</p>
									</div>
								</div>
							</div>
						</section>
						<div class="tabs tabs-bottom tabs-center tabs-simple">
							<ul class="nav nav-tabs">
								<c:if test="${ noticeVO.type eq 'A' }">
									<li class="active"><a href="${ pageContext.request.contextPath }/community/subway/notice.do">공지사항</a></li>
								</c:if>
								<c:if test="${ noticeVO.type eq 'B' }">
									<li class="active"><a href="${ pageContext.request.contextPath }/community/subway/notice.do">보도자료</a></li>
								</c:if>
							</ul>
							<div class="tab-content">
								<!-- 공지사항 / 보도자료 디테일 -->
								<div class="blog-posts single-post">
										<div class="center">
											<div class="post-content">
												<div class="post-meta" style="float: right;">
													<span><a href="${ pageContext.request.contextPath }/main/Start"><i class="fa fa-home"></i></a> > </span>
													<span><a href="${ pageContext.request.contextPath }/community/subway/notice.do">Subway소식</a> > </span>
													<c:if test="${ noticeVO.type eq 'A' }">
														<span><a href="#">공지사항</a></span>
													</c:if>
													<c:if test="${ noticeVO.type eq 'B' }">
														<span><a href="#">보도자료</a></span>
													</c:if>
												</div>
												<br>
												<form action="/Mission-Web/fileDownload" method="post" id="dForm">
													<table class="table table-bordered">
															<tr>
																<td id="title">
																	<!-- 제목 -->
																	<h4 class="mb-none">
																		<c:out value="${ noticeVO.title }"></c:out>
																	</h4>
																</td>
																<div class="post-meta">
																	<!-- 조회수 -->
																	<td width="130px"><i class="fa fa-eye"></i> 조회수 ${ noticeVO.viewCnt }</td>
																	<!-- 등록일 -->
																	<td width="150px"><i class="fa fa-calendar"></i>&nbsp;${ noticeVO.regDate }</td>
																</div>
															</tr>
														<tr>
															<!-- 내용 -->
															<td colspan="3">
																<c:if test="${ not empty fileList }">
																	<c:forEach items="${ fileList }" var="file">
																		<div class="text-center">
																			<img id="fileImg" class="img-responsive" alt="첨부파일" src="${ pageContext.request.contextPath}/upload/${ file.filePath }">
																		</div>
																	</c:forEach>
																</c:if>
																<!-- 자동 단락 나누기 (jstl - fn) -->
																<p class="text-left">${ fn:replace(noticeVO.content, cn, br) }</p>
															</td>
														</tr>
														<!-- 첨부파일 -->
														<c:if test="${ not empty fileList }">
														<tr>
															<td colspan="3">
																<c:forEach items="${ fileList }" var="file">
																<div class="text-left">
																	<i class="fa fa-file"></i>&nbsp;
																	<a onclick="action('F', ${ file.no })">
																		<span class="text-muted fileName">${ file.fileOriName }</span>
																	</a>
																		<span class="text-muted"> (${ file.fileSize }KB)</span>
																</div>
																</c:forEach>
															</td>
														</tr>
														</c:if>
													</table>
												</form>
												<div class="center">
													<button type="button" class="btn btn-primary" onclick="action('L','${ noticeVO.type }')">목록</button>
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
		</div>

		<footer class="light visible-lg" id="footer">
			<jsp:include page="/resources/include/bottom.jsp"/>
		</footer>
		
		<footer class="light hidden-lg" id="footer">
			<jsp:include page="/resources/include/mobile-bottom.jsp"/>
		</footer>

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
		
<script type="text/javascript">
	$(document).ready(function() {
		
		// 파일명 호버 효과
		$(".fileName").hover( function () { 
			$(this).css('text-decoration', 'underline');
		}, function () { 
			$(this).css('text-decoration', 'none');
		} );
	    
	});
	
	// Notice action 함수
	function action(btn, type) {
		switch (btn) {
		case 'L':
			// Notice 리스트 / A - 공지사항, B - 보도자료
			if (type == 'A') {
				location.href = "${ pageContext.request.contextPath}/community/subway/notice.do";
			} else if (type == 'B') {
				location.href = "${ pageContext.request.contextPath}/community/subway/news.do";
			}
			break;
		case 'F':
			// File 다운로드
			location.href = '${ pageContext.request.contextPath}/community/subway/downloadFile.do?no=' + type;
			break;
		default:
			break;
		}
	}
</script>
</body>
</html>