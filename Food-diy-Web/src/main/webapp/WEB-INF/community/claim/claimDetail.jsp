<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		
		<!-- sweetalert js & css -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script> 
		<link rel="stylesheet" href="https://wfolly.firebaseapp.com/node_modules/sweetalert/dist/sweetalert.css">

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
		
		
<style type="text/css">
	#div01 {
		width: 70px;
		text-align: center;
		border-width: 2px;
		border-style: solid;
	}
	.fa-building {
		padding-top: 10px;
	}
	#contents {
		padding: 20px 30px 30px 20px;
	}
	.content {
		padding-left: 30px;
		max-width: 770px;
	}
	.contentOnly {
		padding: 20px 30px 30px 20px;
	}
	.visitTable {
		border: 2px solid #7aa93c;
	}
	.visitTable tr {
		border-bottom: 2px solid #7aa93c;
    	padding: 10px;
	}
	.visitTable th, .visitTable td {
		border-left: 2px solid #7aa93c !important;
		border-right: 2px solid #7aa93c !important;
	}
	#totalImg {
		max-width: 700px;
	}
	#typeLabel {
		font-size: 15px;
	}
	.fileImg {
		padding: 10px;
		max-width: 150px;
		max-height: 150px;
	}
	.plusIcon {
		position:absolute;
		margin: 30px;
		top:15px;
		left:30px;
		z-index:100;
	}
	h4 {
		color: #666666 !important;
		font-weight: bold;
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
		<!-- ---------------------------------------------------------------------------------------------- -->
			<section class="page-header">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ul class="breadcrumb">
								<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">My Page</a></li>
								<li class="active">나의 1:1문의</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>나의 1:1문의</h1>
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
									<li> <a href="${ pageContext.request.contextPath}/member/Latest-Order.do?id=${loginVO.id}">최근 주문 내역</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의 메뉴</a></li>
									<li class="active"><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
		</aside></div></div>
		
			
			<div class="body">
		<div role="main" class="main">
			<div class="col-md-9 center">
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
											<td width="15%"> 
												<span class="label label-primary" id="typeLabel">${ claimVO.type }</span>
											</td>
											<!-- 제목 -->
											<td id="title">
												<h4 class="mb-none">
													<c:out value="${ claimVO.title }"></c:out>
												</h4>
											</td>
											<!-- 등록일 -->
											<td width="15%">
												<div class="post-meta">
													<i class="fa fa-calendar"></i>&nbsp;${ claimVO.regDate }
												</div>
											</td>
											<!-- 답변여부 -->
											<td width="15%">
												<span class="label label-primary" id="repType">${ claimVO.repOX }</span>
											</td>
										</tr>
										<!-- 방문일 / 방문매장명 -->
										<c:choose>
											<c:when test="${ not empty claimVO.visitDate && not empty claimVO.visitStore }">
												<tr id="totalImg">
													<th colspan="4" style="background-color: #eee">1:1문의 정보</th>
												</tr>
												<tr id="totalImg">
													<td colspan="4">
														<table class="table table-bordered text-center" style="margin-bottom: 0px">
															<tr>
																<th width="130px"><i class="fa fa-building"></i> 방문매장</th>
																<td>${ claimVO.visitStore }점</td>
																<th width="130px"><i class="fa fa-calendar-o"></i> 방문일</th>
																<td>${ claimVO.visitDate }</td>
															</tr>
															<tr>
																<th><i class="fa fa-send"></i> 답변 메일</th>
																<td colspan="3">${ claimVO.emailID }@${ claimVO.emailDomain }</td>
															</tr>
															<tr>
																<th><i class="fa fa-phone"></i> 연락처</th>
																<td colspan="3">${ claimVO.phone1 }-${ claimVO.phone2 }-${ claimVO.phone3 }</td>
															</tr>
														</table>
													</td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr id="totalImg">
													<th colspan="4" style="background-color: #eee">1:1문의 정보</th>
												</tr>
												<tr id="totalImg">
													<td colspan="4">
														<table class="table table-bordered text-center" style="margin-bottom: 0px">
															<tr>
																<th><i class="fa fa-calendar-o"></i> 답변 메일</th>
																<td colspan="3">${ claimVO.emailID }@${ claimVO.emailDomain }</td>
															</tr>
															<tr>
																<th><i class="fa fa-calendar-o"></i> 연락처</th>
																<td colspan="3">${ claimVO.phone1 }-${ claimVO.phone2 }-${ claimVO.phone3 }</td>
															</tr>
														</table>
													</td>
												</tr>
											</c:otherwise>
										</c:choose>
										<tr id="totalImg">
											<td colspan="4">
												<!-- 내용 -->
												<p class="text-left contentOnly">
													<!-- 자동 단락 나누기 (jstl - fn) -->
													${ fn:replace(claimVO.content, cn, br) }
												</p>
											</td>
										</tr>
										<!-- 첨부파일 -->
										<c:if test="${ not empty fileList }">
											<tr id="totalImg">
												<th colspan="4" style="background-color: #eee">첨부파일</th>
											</tr>
											<tr id="totalImg">
												<td colspan="4">
													<table class="table table-bordered text-center">
														<tr>
															<c:forEach items="${ fileList }" var="file">
															<th>
																<div class="col-md-12 text-left">
																	<i class="fa fa-file"></i>&nbsp;
																	<a onclick="action('F', ${ file.no })">
																		<span class="text-muted fileName">${ file.fileOriName }</span>
																	</a>
																		<span class="text-muted"> (${ file.fileSize }KB)</span>
																</div>
															</th>
															</c:forEach>
														</tr>
														<tr>
															<c:forEach items="${ fileList }" var="file">
															<td>
																<div class="col-md-12">
																	<a href="${ pageContext.request.contextPath}/upload/${ file.filePath }" target="_blank">
																		<img class="text-center fileImg" alt="첨부파일" src="${ pageContext.request.contextPath}/upload/${ file.filePath }">
																		<img class="plusIcon" src="${ pageContext.request.contextPath}/resources/img/icons/round-add-button.png">
																	</a>
																</div>
															</td>
															</c:forEach>
														</tr>
													</table>
												</td>
											</tr>
										</c:if>
									</table>
								</form>
								<div class="text-right">
									<button class="btn btn-default" type="button" onclick="action('E', ${ claimVO.no })"><i class="fa fa-edit"></i>&nbsp;&nbsp;수정</button>
									<button class="btn btn-default" type="button" onclick="action('D', ${ claimVO.no })"><i class="fa fa-trash"></i>&nbsp;&nbsp;삭제</button>
									<button class="btn btn-default" type="button" onclick="action('L', ${ claimVO.no })"><i class="fa fa-list"></i>&nbsp;&nbsp;목록</button>
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

	<!-- ---------------------------------------------------------------------------------------------- -->
	<div>
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
<script type="text/javascript">
	$(document).ready(function() {
		
		// Claim 타입별 라벨 클래스명 & 텍스트 변경
		if($('#typeLabel').text() == 'I'){
			$('#typeLabel').attr("class","label label-primary");
			$('#typeLabel').html("문의");
		}
		else if($('#typeLabel').text() == 'P'){
			$('#typeLabel').attr("class","label label-warning");
			$('#typeLabel').html("칭찬");
		}
		else if($('#typeLabel').text() == 'S'){
			$('#typeLabel').attr("class","label label-success");
			$('#typeLabel').html("제안");
		}
		else if($('#typeLabel').text() == 'C'){
			$('#typeLabel').attr("class","label label-danger");
			$('#typeLabel').html("불만");
		}
		else if($('#typeLabel').text() == 'X'){
			$('#typeLabel').attr("class","label label-information");
			$('#typeLabel').html("기타");
		}
		
		// Claim rep타입별 라벨 클래스명 & 텍스트 변경
		if($('#repType').text() == 'X'){
			$('#repType').attr("class","label label-repX");
			$('#repType').html("접수완료");
		}
		else if($('#repType').text() == 'O'){
			$('#repType').attr("class","label label-repO");
			$('#repType').html("답변완료");
		}
		
		// 파일명 호버 효과
		$(".fileName").hover( function () { 
			$(this).css('text-decoration', 'underline');
		}, function () { 
			$(this).css('text-decoration', 'none');
		} );
		
		// 이미지 호버 효과
		$('.plusIcon').hide();
		$(".fileImg").each(function () {
			$(this).hover( function () { 
				$(this).siblings('.plusIcon').show();
			}, function () { 
				$(this).siblings('.plusIcon').hide();
			} );
		});
	    
	});
	
	// Claim action 함수
	function action(type, no) {
		switch (type) {
		case 'E':
			// Claim 수정
			location.href = '${ pageContext.request.contextPath}/community/claim/claimEditForm.do?no=' + no;
			break;
		case 'D':
			// Claim 삭제
			deleteClaim(no);
			break;
		case 'L':
			// Claim 리스트
			location.href = '${ pageContext.request.contextPath}/community/claim/claimList.do?id=${loginVO.id}';
			break;
		case 'F':
			// File 다운로드
			location.href = '${ pageContext.request.contextPath}/community/claim/downloadFile.do?no=' + no;
			break;
		default:
			break;
		}
    }
	
	// 삭제 alert창
	function deleteClaim(no) {
		swal({
	        title: "정말 삭제하시겠습니까?",
	        type: "warning",
	        showCancelButton: true,
	        cancelButtonText: "취소",
	        confirmButtonColor: "#DD6B55",
	        confirmButtonText: "삭제",
	        closeOnConfirm: false
	    }, function () {
	        swal("삭제되었습니다!", "", "success");
	        // OK 누르면 삭제 실행
	        $('.confirm').click(function () {
	        	location.href = '${ pageContext.request.contextPath}/community/claim/claimDelete.do?no=' + no;
			});
	    });
	}
</script>
</body>

</body>
</html>