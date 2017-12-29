<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title> | 회원 정보 수정 | </title>	

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
<script>

	//재입력 비밀번호 체크하여 맞지 않음을 알림.
	function checkPw() {
	    var inputed = $("#pw").val();
	    var original = /^[a-zA-Z0-9]{3,15}$/;
	    var reinputed = $("#pwc").val();
	    
	   if(original.test(inputed)){
	    	
	    	$("#pw").css("background-color", "#B0F6AC");
	    	
	        if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
		            $("#pwc").css("background-color", "#FFCECE");
		        }
		        else if (inputed == reinputed) {
		            $("#pwc").css("background-color", "#B0F6AC");
		            
		        } else if (inputed != reinputed) {
		            $("#pwc").css("background-color", "#FFCECE");
		            
		        }
			}else{
	    	$("#pw").css("background-color", "#FFCECE");
	    }
	}
	
	

	$(document).ready(function(){
	
		
	 	$("#cancel").click(function(){
		
			location.href="${pageContext.request.contextPath}/member/memberDetail.do"; 
		}); 
		
	});
	
	
		//사진 미리보기
	 	function readyURL(input){
			
			var reader = new FileReader();	 		

			reader.onload = function(e) {
				
				$("#prof").attr("src", e.target.result);
			}
			reader.readAsDataURL(input.files[0]);

		}
		
	function userPw(){
	
		 var inputed = $("#pw").val();
		 var reinputed = $("#pwc").val();
		 
		if(inputed != reinputed){
	        alert("비밀번호가 맞지 않습니다.");
	        return false;
		}
		return true;
	}
		
</script>


<style type="text/css">
#div01 {
	width: 70px;
	text-align: center;
	border-width: 2px;
	border-style: solid;
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
									<li><a href="#">Home</a></li>
									<li class="active">Pages</li>
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
			
			<div class="container" style="">
				<div class="row">
					<div style="width: 600px">
						<div style="margin-top: 10%" class="col-md-3">
							<aside  class="sidebar">
								<h3 class="heading-primary">Categories</h3>
								<ul class="nav nav-list mb-xlg">
									<li class="active"><a href="${ pageContext.request.contextPath}/member/memberDetail.do">내 정보</a></li>
									<li> <a href="${ pageContext.request.contextPath}/member/Latest-Order.do?id=${loginVO.id}">최근 주문 내역</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
							</aside>
						</div>
					</div>
					
			<form action="${pageContext.request.contextPath}/member/memberUpdate.do" name="up" id="frmBillingAddress" method="post" onsubmit="return userPw()" enctype="multipart/form-data">
				<input type="hidden" name="id" value="${ loginVO.id }"/>
				<input type="hidden" name="file" va/>
				<div class="col-xs-12 col-md-4 ">
				<c:choose>
                <c:when test="${ loginVO.file ne null }">
		                <img src="../upload/${ loginVO.file }" id="prof" class="img-responsive" alt="" style="float:left; margin-left: 15%; margin-top: 20%; height:300px; width: 260px">
                </c:when>
    	            <c:otherwise>
		                <img src="${ pageContext.request.contextPath }/resources/img/parallax-2.jpg" id="prof" class="img-responsive" name="null" alt="" style="float:left; margin-left: 20%; margin-top: 8%; height:300px; width: 260px">
	                </c:otherwise>
                </c:choose>
					<input id="file" style="float:right; margin-top: 4%; margin-right: 9%" type="file" class="btn btn-default" name="file" value="${ loginVO.file }" onchange="readyURL(this);"/> 
				</div><br/><br/>
						<div class="col-xs-12 col-md-5" style="margin-top: 3%; margin-left: 0%">
							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">내정보</a>
										</h4>
									</div>
									<div id="collapseOne" class="accordion-body collapse in">
										<div class="panel-body">
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>이름</label>
															<input type="text" name="name" value="${ loginVO.name }" readonly="readonly" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>비밀번호</label>
															<input type="password" name="pw" id="pw" size="15" maxlength="12" value="" class="form-control" required="required"/>
														</div>
												</div>

													</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>비밀번호 확인</label>
															<input type="password" id="pwc" size="15" maxlength="12" value="" oninput="checkPw()" class="form-control"  required="required">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>전화번호 </label>
															<input type="text" name="phone" value="${loginVO.phone }" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>E-mail</label>
															<input type="text" name="email" value="${ loginVO.email }" class="form-control" readonly="readonly"/>

														</div>
														<div class="row">
												<!-- 	<div class="form-group">
														<div style="margin-left:5%; margin-top: 1% " class="col-md-5  col-xs-11">
															<label></label><br/>
															<select class="form-control" name="emailD">
																<option value="">-이메일 선택 -</option>
																<option value="@naver.com">@naver.com</option>
																<option value="@google.co.kr">@google.co.kr</option>
															</select>
														</div>
													</div> -->
												</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
													</div>
												</div>
												<!-- data-toggle="modal" data-target="#formModal" -->
													<input id="save" style="margin-left: 65%" type="submit" value="저장" class="btn btn-info" />
													<button id="cancel" type="button" class="btn btn-info" data-dismiss="modal">취소</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						
	
						</form>
						<!-- 	<div style="margin-top: 12%; ">
							<div class="row">
									<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<h3 class="modal-title" id="formModalLabel"><strong>회원정보 수정</strong></h3>
												</div>
												<div class="modal-body">
												<h4>정말로 수정 하시겠습니까?</h4>
													
												</div>
												<div class="modal-footer" >
													<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
													<button id="okay" type="button" class="btn btn-default" data-dismiss="modal">확인</button>
												</div>
											</div>
										</div>
									</div>
							</div>
					</div> -->
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

</body>



<!-- Vendor -->
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery-cookie/jquery-cookie.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/common/common.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.validation/jquery.validation.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/isotope/jquery.isotope.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/vide/vide.min.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="${ pageContext.request.contextPath }/resources/js/theme.js"></script>

<!-- Theme Custom -->
<script
	src="${ pageContext.request.contextPath }/resources/js/custom.js"></script>

<!-- Theme Initialization Files -->
<script
	src="${ pageContext.request.contextPath }/resources/js/theme.init.js"></script>

<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->

</body>
</html>