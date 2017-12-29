<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title> | 비회원 주문조회 | </title>	
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

		<!-- 이미지 캐러셀 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">	

	<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/js/sign/check.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<script>

	function mymodal(no) {
	    $('div.modal').modal().removeData();
	    var url = '${ pageContext.request.contextPath}/sign/'+no+'/nonMenuDetail';
	    $('div.modal').modal({ remote : url });
	} 
	
	$(document).ready(function(){
		//주문 조회를 눌렀을 때 모달창으로 확인
		$("#menuCheck").click(function(){
			
			var n = $("#orderNum").val();
			
			$.ajax({
				url : "${pageContext.request.contextPath}/sign/orderCheckForm",
				type : "post",
				data : {
					'num' : n
				},
				error : function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

				},
				success : function(code){
					if(code == 0){
						swal("주문 사항이 없습니다.", "확인 후 다시 입력해 주세요.", "error");
					
					} else{ // 모달창 띄우기
						mymodal(n);
					}
				}
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
		
		<div role="main" class="main">
			<section class="page-header">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="#">비회원</a></li>
									<li class="active">주문조회</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<h1>주문조회 </h1>
							</div>
						</div>
					</div>
				</section>
			
			<div class="container">
				<div class="row">
				<div class="col-md-4"></div>
					<!-- START -->
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-12">
								<div class="tabs tabs-bottom tabs-center tabs-simple">
									<ul class="nav nav-tabs">
										<li class="active">
											<a href="#nonmemberMenu" data-toggle="tab" aria-expanded="false"> 주문조회</a>
										</li>
									</ul>
									<div class="tab-content">
										<!-- 주문조회 -->
										<div class="tab-pane  active" id="nonmemberMenu">
											<div class="container">
												<div class="row">
													<div class="col-md-8">
														<div class="featured-boxes">
															<div class="row">
																<div class="col-sm-6">
																	<div class="featured-box featured-box-primary align-left mt-xlg">
																		<div class="box-content">
																			<h4 class="heading-primary text-uppercase mb-md">주문조회</h4>
																			<form>
																				<div class="row">
																					<div class="form-group">
																						<div class="col-md-12">
																							<input type="text" id="orderNum" class="form-control" placeholder="주문 번호를 입력하세요" size="60px" required="required">
																						</div>
																					</div>
																				</div>
																				<div class="row mt-xlg">
																					<div class="col-md-12s">
																						<input type="button" value=" 조회하기 " id="menuCheck" 
																							class="btn btn-info mb-md form-control btn-primary btn-icon" data-loading-text="Loading..."/>
																					</div>
																				</div>
																			</form>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- 모달 -->
	<div class="modal inmodal fade" id="myModal6" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 모달내용 -->
	
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
		
		<!-- Current Page Vendor and Views -->
		 <script src="${ pageContext.request.contextPath}/resources/js/views/view.contact.js"></script> 

		<!-- Demo -->
		<script src="${ pageContext.request.contextPath}/resources/js/demos/demo-shop-9.js"></script>
		
		<!-- Theme Custom -->
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
		
		<!-- Examples -->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqatUi4ICaA6KBVjyOxul0QKP4F_H7-mY"></script>
		
</body>
</html>