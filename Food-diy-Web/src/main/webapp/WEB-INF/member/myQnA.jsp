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
		
		
<style type="text/css">
#div01 {
	width: 70px;
	text-align: center;
	border-width: 2px;
	border-style: solid;
}

.label {
	font-size: 12px;
}

#cnt {
	width: 80px;
	height: 30px;
	font-size: 13px;
	background-color: #d1dade;
	color: #5e5e5e;
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
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.jsp">My Page</a></li>
									<li class="active">나의 문의사항</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>Left Sidebar</h1>
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
			
			<div role="main" class="main shop">
				<div class="row">
					<div class="col-lg-9">
						<div class="ibox">
							<div class="ibox-content">
								<div class="table-responsive">
									<table class="footable table table-stripped toggle-arrow-tiny dataTables-example"  data-page-size="25">
										<thead>
											<tr style="font-size:15px; margin-top: 15%">
												<th  data-hide="phone" data-sort-ignore="true"></th>
												<th data-hide="phone" data-sort-ignore="true">유형</th>
												<th data-hide="phone" data-sort-ignore="true">제목</th>
												<th style="width: 70px" data-hide="phone" data-sort-ignore="true">등록일</th>
												<th data-hide="phone" data-sort-ignore="true">답변여부</th>
											</tr>
										</thead>
										<tbody class= "todayOrderList">
										<c:choose>
										<c:when test="${ not empty claimList  }">
										<c:forEach items="${ claimList  }" var="claim">
											<tr class="claimList">
												<td class="cartNo" style="display: none;">${ claim.no }</td>
			                                    <td width="8%"><input name="cart" type="checkbox" value="${ claim.no }"></td>
												<td class="convType" width="11%">
				                                    <span class="label label-primary">${ claim.type }</span>
			                                    </td>								
												<td>
													<a class="amount" href="${ pageContext.request.contextPath }/member/myQnADetail.do?no=${ claim.no }">
													<c:out value="${ claim.title }" /></a>
												</td>
												
												<td width="15%">
													<span class="amount ">${ claim.regDate }</span>
												</td>										
												<td align="center" width="15%">
													<button id="cnt" type="button" class="btn col-md-3"> 접수완료 </button>
												</td>
											</tr>
											
										</c:forEach>
										</c:when>
										<c:otherwise><h3 id="del">최근 주문 내용이 없습니다.</h3></c:otherwise>
										</c:choose>
										</tbody>
									</table>
								</div>
												<div align="right" style="margin-right: 15%; margin-top: 5%">
													<button class="btn btn-primary btn-icon" id="del" style="width: 17%; height: 30px">삭제</button>
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
	<div class="container">
		<footer class="light visible-lg" id="footer">
			<jsp:include page="/resources/include/bottom.jsp" />
		</footer>
		<footer class="light hidden-lg" id="footer">
			<jsp:include page="/resources/include/mobile-bottom.jsp" />
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

<script src="${ pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
		
<script type="text/javascript">
	$(document).ready(function(){
		
		
		// Claim 타입별 라벨 클래스명 & 텍스트 변경
		for(var i = 0; i < $('.claimList').length; ++i) {    	
			var claimType  = $('.claimList').eq(i).find('.label');
			if(claimType.text() == 'I'){
				claimType.attr("class","label label-primary");
				claimType.html("문의");
			}
			else if(claimType.text() == 'P'){
				claimType.attr("class","label label-warning");
				claimType.html("칭찬");
			}
			else if(claimType.text() == 'S'){
				claimType.attr("class","label label-tertiary");
				claimType.html("제안");
			}
			else if(claimType.text() == 'C'){
				claimType.attr("class","label label-danger");
				claimType.html("불만");
			}
			else if(claimType.text() == 'X'){
				claimType.attr("class","label label-default");
				claimType.html("기타");
			}
		}
		
		
		//삭제
		$("#del").click(function(){
			
			var no = [];
			
			$("input[name='cart']:checked").each(function() {
				no.push($(this).val());
		    });
			
			console.log(no);
			
			// controller로 배열 넘길 때 세팅 바꿔 줌
			jQuery.ajaxSettings.traditional = true;
		
			$.ajax({
				url : "${pageContext.request.contextPath}/member/myQnADel.do",
				type : "post",
				data : {
					noList : no
				},
				success : function(data){
					location.reload();
				}
			});
			
		});
		});
</script>
</body>


</body>
</html>