<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script type="text/javascript">
	function doAction(type) {
		switch (type) {
		case 'L':
			location.href = "${ pageContext.request.contextPath}/community/claim.do";
			break;
		default:
			break;
		}
	}
</script>
</head>
<body>
	<div class="body">
		<div role="main" class="main">
			<div class="col-md-9 center">
				<h2>1:1 문의 리스트</h2>
				<div class="tab-content">
				<!-- 공지사항 / 보도자료 디테일 -->
					<div class="blog-posts single-post">
						<div class="center">
							<div class="post-content">
								<div class="post-meta" style="float: right;">
									<span><a href="${ pageContext.request.contextPath }/main/Start"><i class="fa fa-home"></i></a> > </span>
									<span><a href="#">커뮤니티</a> > </span>
									<span><a href="${ pageContext.request.contextPath }/community/claim.do">1:1문의</a></span>
								</div>
								<br>
								<form action="/Mission-Web/fileDownload" method="post" id="dForm">
									<table class="table table-bordered">
										<tr>
											<!-- 타입 -->
											<c:if test="${ claimVO.type eq 'I'}"><td>문의</td></c:if>
											<c:if test="${ claimVO.type eq 'P'}"><td>칭찬</td></c:if>
											<c:if test="${ claimVO.type eq 'S'}"><td>제안</td></c:if>
											<c:if test="${ claimVO.type eq 'C'}"><td>불만</td></c:if>
											<c:if test="${ claimVO.type eq 'X'}"><td>기타</td></c:if>
											<!-- 제목 -->
											<td>
												<h4 class="mb-none">
													<strong><c:out value="${ claimVO.title }"></c:out></strong>
												</h4>
											</td>
											<div class="post-meta">
												<!-- 조회수 -->
												<td width="15%"><i class="fa fa-eye"></i> 조회수 ${ claimVO.viewCnt }</td>
												<!-- 등록일 -->
												<td width="15%"><i class="fa fa-calendar"></i>&nbsp;${ claimVO.regDate }</td>
											</div>
										</tr>
										<!-- 방문일 / 방문매장명 -->
										<c:if test="${ not empty claimVO.visitDate && not empty claimVO.visitStore }">
											<tr>
												<th width="15%">방문일</th>
												<td>${ claimVO.visitDate }</td>
												<th width="15%">방문매장</th>
												<td>${ claimVO.visitStore }</td>
											</tr>
										</c:if>
										<tr>
											<!-- 내용 -->
											<td colspan="4"><p><c:out value="${ claimVO.content }"></c:out></p></td>
										</tr>
										<!-- 첨부파일 -->
										<c:if test="${ not empty claimVO.file }">
											<tr>
												<th width="15%">첨부파일</th>
												<td colspan="3">
													<div align="center">
														<img alt="" class="img-responsive img-rounded" src="../upload/${ claimVO.file }" style="max-height:400px">
													</div>
												</td>
											</tr>
										</c:if>
									</table>
								</form>
								<div class="center">
									<button type="button" class="btn btn-primary" onclick="doAction('L')">목록</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
	
</body>
</html>