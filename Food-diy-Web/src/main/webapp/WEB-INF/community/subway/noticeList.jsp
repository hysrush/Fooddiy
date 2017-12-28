<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		
		<!-- dataTables -->
		<link href="${ pageContext.request.contextPath }/resources/css/dataTables/datatables.min.css" rel="stylesheet">
	    <!-- FooTable -->
	    <link href="${ pageContext.request.contextPath }/resources/css/footable/footable.core.css" rel="stylesheet">
		
		<!-- js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>

<style type="text/css">
	#title a {
		color: #666666 !important;
		font-weight: bold;
	}
	.dataTables_wrapper {
		padding-bottom: 0 !important;
	}
	.filter {
		float: right;
		width: 140px;
		padding-right: 10px;
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
										<li class="active"><a href="#">공지사항</a></li>
										<li><a href="${ pageContext.request.contextPath }/community/subway/news.do">보도자료</a></li>
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
								<li class="active"><a href="#tabsNavigationSimple1" data-toggle="tab">공지사항</a></li>
							</ul>
							<div>
								<!-- 보도자료 -->
								<div class="tab-pane" id="tabsNavigationSimple2">
									<div class="center">
										<div class="col-md-12">
											<!-- 필터 및 검색 -->
											<form name="form1" method="post" action="${ pageContext.request.contextPath }/community/subway/notice.do">
												<div class="col-md-3 input-group" style="float: right;">
													<input name="keyword" value="${map.keyword}" type="text" aria-controls="DataTables_Table_0"
															class="input-sm form-control" placeholder="검색어를 입력해주세요" >
													<span class="input-group-btn">
														<button type="submit" class="btn btn-sm btn-primary" id="searchBtn"><i class="fa fa-search"></i></button>
													</span>
												</div>
												<div class="filter">
											        <select name="searchOption" class="form-control">
											            <!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
											            <option value="notice_title" <c:out value="${map.searchOption == 'notice_title'?'selected':''}"/> >제목</option>
											            <option value="notice_content" <c:out value="${map.searchOption == 'notice_content'?'selected':''}"/> >내용</option>
											            <option value="all" <c:out value="${map.searchOption == 'all'?'selected':''}"/> >제목+내용</option>
											        </select>
										        </div>
										    </form>
											<!-- 테이블 -->
											<div class="table-responsive" style="width: 100%">
												<!-- 레코드의 갯수를 출력 -->
    											<%-- <span id="searchCnt">${map.count}개의 게시물이 있습니다.</span> --%>
												<table class="footable table table-hover toggle-arrow-tiny dataTables-example" width="80%" data-page-size="100">
													<thead>
														<tr>
														    <th data-hide="phone" data-sort-ignore="true">번호</th>
														    <th data-toggle="true" data-sort-ignore="true">제목</th>
														    <th data-hide="phone" data-sort-ignore="true">등록일</th>
														    <th data-hide="phone" data-sort-ignore="true">조회수</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${ noticeList }" var="notice">
															<c:if test="${ notice.type eq 'A' }">
																<tr>
																	<td>${ notice.no }</td>
																	<td id="title">
																		<a href="${ pageContext.request.contextPath }/community/subway/noticeDetail.do?no=${ notice.no }">
																			<c:out value="${ notice.title }" />
																		</a>
																	</td>
																	<td>${ notice.regDate }</td>
																	<td>${ notice.viewCnt }</td>
																</tr>
															</c:if>
														</c:forEach>
													</tbody>
												</table>
											</div>
											<!-- 페이지네이션 -->
											<div class="col-md-12 center">
												<ul class="pagination pull-center">
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
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
	</div>

	<!-- Vendor -->
	<%-- <script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script> --%>
	<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
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
	
	<!-- dataTables -->
	<script src="${ pageContext.request.contextPath }/resources/js/dataTables/datatables.min.js"></script>
    <!-- FooTable -->
    <script src="${ pageContext.request.contextPath }/resources/js/footable/footable.all.min.js"></script>
	
	<!-- Current Page Vendor and Views -->
	<script src="${ pageContext.request.contextPath}/resources/js/views/view.contact.js"></script>

	<!-- Demo -->
	<script src="${ pageContext.request.contextPath}/resources/js/demos/demo-shop-9.js"></script>
	
	<!-- Theme Custom -->
	<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
	
	<!-- Theme Initialization Files -->
	<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

	<!-- Page-Level Scripts -->
    <script type="text/javascript">
		$(document).ready(function() {
			
			// footable 시작
			$('.footable').footable();
			
			// 데이터테이블 생성 & 옵션 변경
			$('.footable').css("width","100%");
			var table = $('.dataTables-example').DataTable({
				pageLength: 10,
                bPaginate: true,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                "oLanguage": {
                	// 기본 info (고정값)
                	"sInfo": "총 데이터 : _TOTAL_개 (현재 페이지 : _START_ to _END_)",
                	// 검색 후 info (고정값)
                    "sInfoFiltered": "*",
                    // 결과 없을때 info
                	"sInfoEmpty": "검색 결과 : _TOTAL_개",
                	// 결과 없을때 테이블 안 info
                    "sZeroRecords" : "입력하신 검색어와 일치하는 결과가 없습니다. 다시 한번 검색해주세요!",
                    // 검색 text
                    "sSearch" : "전체 검색 : ",
                    // 로딩 text
                    "sLoadingRecords" : "읽는중...",
                    // 처리 text
                    "sProcessing" : "처리중...",
                    // 보기 text
                    "sLengthMenu" : "보기 : _MENU_",
                    // 페이징 버튼 text
                    "oPaginate": {
                    	"sPrevious": "<<",
                    	"sNext": ">>"
                      }
                },
                "iDisplayLength": -1,
                // 우선순위 Sort
                "aaSorting": [[ 5, "desc" ]], // Sort by first column descending
                // 컬럼 Sort 없애기
                "aoColumnDefs": [
                    { "bSortable": false, "aTargets": [ 0 ] }
                ],
                // 버튼 옵션
                buttons: [
                    {extend: 'copy', text: '<i class="fa fa-copy" aria-hidden="true"> Copy</i>'},
                    //{extend: 'csv'},
                    {extend: 'excel', title: 'ExcelFile', text: '<i class="fa fa-file-excel-o" aria-hidden="true"> Excel</i>'},
                    {extend: 'pdf', title: 'PdfFile', text: '<i class="fa fa-file-pdf-o" aria-hidden="true"> Pdf</i>'},
                    {extend: 'print', text: '<i class="fa fa-print" aria-hidden="true"> Print</i>',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');
                            $(win.document.body).find('table').addClass('compact').css('font-size', 'inherit');
                    	}
                    }
                ]
            });
			// 데이터테이블 검색입력 시, 단어 추출 작업
			$('#DataTables_Table_0_filter input').keyup(function() {
				var keyupWord = $(this).val();
				var empty = $('table .dataTables_empty').text();
				var text = $('#DataTables_Table_0_info').text();
				
				if (empty == "입력하신 검색어와 일치하는 결과가 없습니다. 다시 한번 검색해주세요!") {
					$('#DataTables_Table_0_info').html(text.replace("*", "<br><strong>" + keyupWord + "</strong>와(과) 일치하는 검색결과가 없습니다."));
				} else if (keyupWord.length > 0){
					$('#DataTables_Table_0_info').html(text.replace("*", "<br><strong>" + keyupWord + "</strong>와(과) 일치하는 검색결과입니다."));
				} 
			});
		});
		
	</script>		
</body>
</html>