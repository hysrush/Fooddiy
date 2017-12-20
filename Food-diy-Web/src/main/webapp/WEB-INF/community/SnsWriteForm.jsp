
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> | SNS 등록폼 | </title>
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
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom2.css">

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous"> 

		<!-- js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>


</head>
<body>
	<div align="center" >
		<h2>SNS 등록폼</h2>
		<form:form commandName="snsVO" method="POST" enctype="multipart/form-data">
			<div style="max-width: 800px;">
			
				<div class="form-group" align="left">
					<label for="title">제목</label>
					<form:input path="title" type="text" class="form-control" id="title" placeholder="제목"/>
					<form:errors path="title" class="form-control"></form:errors>
				</div>
								
				
				<div class="form-group" align="left">
					<label for="id">글쓴이 : </label>
					<form:input path="id" type="text" class="form-control" id="id" value ="${loginVO.id }" readonly="true"/>
					<form:errors path="id" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="pic"></label>
					<form:input path="pic" type="hidden" class="form-control" id="pic" value = "${loginVO.file }"/>
					<form:errors path="pic" class="form-control"></form:errors>
				</div> 
				 <div class="form-group" align="left">
					<label for="fileName">이벤트 첨부 파일</label>
					<form:input path="fileName" type="file" class="form-control" id="fileName" placeholder="첨부파일"/>
					<form:errors path="fileName" class="form-control"></form:errors>
				</div>
				  
				
				<div class="form-group" align="left">
					<label for="content">이벤트 내용</label>
					<form:textarea path="content" class="form-control" rows="5" id="content" placeholder="내용"/>
					<form:errors path="content" class="form-control"></form:errors>
				</div>
				<button type="submit" class="btn btn-default">등록</button>
			</div>
		</form:form>
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
		
		<!-- 데이트피커 js -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		
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
		<!-- 호텔데모 js -->
		<script src="${ pageContext.request.contextPath}/resources/js/demos/demo-hotel.js"></script>
		
		<!-- Theme Custom -->
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
	
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>

		<title> | 1:1 문의 | </title>	
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	


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
		
		<!-- 데이트피커 css -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/bootstrap-datepicker/bootstrap-datepicker3.css">

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
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom2.css">

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous"> 

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
<style type="text/css">
	.mail_input, .mail_sel, .phone_input, .phone_sel {
		width: 30%;
		float: left;
	}
	#csForm > tbody > tr > td:FIRST-CHILD {
		width: 15%;
		text-align: center;
		font-weight: bold;
		color: black;
	}
	#csForm th {
		min-width: 78px;
		background-color: #7aa93c;
		color: white;
		font-weight: bold;
	}
	#storeName {
		background-color: white;
	}
	.errorMsg {
		font-size: 6px;
		color: red;
	}
</style>
<script type="text/javascript">
	
	
	
	$(document).ready(function(){
		
		$('.direct-order-button').removeClass('btn-primary');
		$('.go-cart-button').removeClass('btn-primary');
		
		$('.direct-order-button').css('color','white');
		$('.go-cart-button').css('color','white');
		
		$(".order").css("display","block");
	});
	


	
</script>

</head>
<body>
	<div class="body" style="min-width: 320px;">
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
								<li class="active">1:1 문의</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1> 1:1 문의 </h1>
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
									<li><a href="${ pageContext.request.contextPath }/community/qna.do">자주묻는 질문</a></li>
									<li><a href="${ pageContext.request.contextPath }/community/notice.do">Subway 소식</a>
										<ul>
											<li class="active"><a href="${ pageContext.request.contextPath }/community/notice.do">공지사항</a></li>
											<li><a href="${ pageContext.request.contextPath }/community/news.do">보도자료</a></li>
										</ul>
									</li>
									<li><a href="${ pageContext.request.contextPath }/community/claimWrite.do">1:1 문의</a></li>
									<li class="active"><a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">SNS게시판</a></li>
							</ul>
						</aside>
					</div>
					<!-- START! -->
					<div class ="col-md-10">
						<div class="tabs tabs-bottom tabs-center tabs-simple">
							<div class="tab-content">
								<div class="tab-pane active" id="tabsNavigationSimple1">
									<div class="center">
										<br>
										<div class="form-group" align="left">
											<!-- 1:1문의 작성폼 시작  -->
										<form:form commandName="snsVO" method="POST"  name="csForm" id="csForm" enctype="multipart/form-data">
											<form:input path ="name" name="name"  id="name" type="hidden"  value="" readonly="readonly" />
											<form:input path ="bread" name="bread"  id="bread" type="hidden" value="" readonly="readonly" />
											<form:input path ="cheese" name="cheese"  id="cheese" type="hidden" value="" readonly="readonly" />
											<form:input path ="topping" name="topping"  id="topping" type="hidden" value="" readonly="readonly" />
											<form:input path ="vegetable" name="vegetable"  id="vegetable" type="hidden" value="" readonly="readonly" />
											<form:input path ="sauce" name="sauce"  id="sauce" type="hidden"  value="" readonly="readonly" />	
												<table class="table table-bordered">
													<tr>
														 		
														<th>
															<form:label for="title" path="title" cssErrorClass="error">제목</form:label>
														</th>
														<td>
															<form:input path="title" type="text" class="form-control" id="title" placeholder="제목"/>
															<form:errors path="title" class="form-control"></form:errors>
														</td>
													</tr>
													<tr>
														<th>
															<label for="writer">작성자</label>
														</th>
														<td>
															<form:input path="id" type="text" class="form-control" id="id" value ="${loginVO.id }" readonly="true"/>
															<form:errors path="id" class="form-control"></form:errors>
															<form:input path="pic" type="hidden" class="form-control" id="pic" value ="${loginVO.file }" readonly="true"/>	
														</td>
													</tr>
													<tr>
														<th>
															<label for="content">내용</label>
														</th>
														<td>
															<form:textarea path="content" class="form-control" rows="5" id="content" name="content" placeholder="내용"/>
															<form:errors path="content" class="form-control"></form:errors>
														</td>
													</tr>
													<tr>
														<th>
															<label for="file">파일첨부</label>
														</th>
														<td>
															<div class="file_BasicSection">
																<div class="fileDiv col-md-12" id="fileDiv1" >
																	
																	<form:input path="fileName" type="file" class="file_input form-control" id="fileName" 
																				name="fileName" placeholder="파일첨부" style="float: left; width: 70%;"/>&nbsp;&nbsp;
																	<button type="button" class="btn btn-success mr-xs mb-sm" id="btnAddFile" ><i class="fa fa-plus"></i></button>
																</div>
															</div>
															<div id="file_AddSection"></div>
															<p class="mb-none" style="padding: 10px;">
																파일첨부는 아래의 파일만 등록이 가능하며 <strong>최대 5개</strong>(1개당 최대2MB), 총 10MB까지 등록이 가능합니다.<br>
																(등록 가능 확장자 : jpg, jpeg, png, gif, zip, doc, docx, ppt, pptx, xls, xlsx, hwp)
															</p>
														</td>
													</tr>
													
													<tr>
														<th>
															<label>주문내역</label>
														</th>
														<td>
															<div class="col-md-12" style="float: left;">
																<div class="order col-md-6" style="float: left;">
																	<div class="input-group date col-md-12" data-toggle="modal" data-target="#formModal">
																		<input type="text" class="form-control" readonly="readonly" placeholder="주문내역" name="orderList" id="orderList"/>
																		<span class="input-group-addon"><i class="fa fa-home"></i></span>
																	</div>
																	<!-- 매장찾기 모달창 -->
																	<jsp:include page="/resources/include/SNS/orderList-Modal.jsp"></jsp:include>
																</div>
															</div>
       													</td>
													</tr>	
												
												
												</table>
													<div class="center">
													<button type="submit" class="btn btn-default" id="snsSubmit">등록</button>
												</div>
												
												
											</form:form>
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
		
		<!-- 데이트피커 js -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		
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
		<!-- 호텔데모 js -->
		<script src="${ pageContext.request.contextPath}/resources/js/demos/demo-hotel.js"></script>
		
		<!-- Theme Custom -->
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
</body>
</html>
