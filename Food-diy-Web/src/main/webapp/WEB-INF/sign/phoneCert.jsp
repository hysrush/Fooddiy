<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title> | 휴대전화 인증 | </title>
		
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
	<script>window.name="main"</script>
	<script>
	$(document).ready(function(){
			
		$("#phoneCert").click(function(){
			
				if($("input:checkbox[id='phoneCheck']").is(":checked")){
					
						var popUrl = "${ pageContext.request.contextPath }/sign/phoneCertForm.do";	//팝업창에 출력될 페이지 URL

						var popOption = "width=370, height=500, resizable=no, scrollbars=no, status=no";

							window.open(popUrl,"",popOption);
						
				}else{
					$("#phonecheck").focus();
					alert('약관에 동의해 주세요');
					
				}
			});
		});
		
	</script>
	
	<!-- NICE가 제공하는 본인인증 테스트
	<script>
	window.name ="iProc";
	window.onload = function() {
	    fnPopup();
	}
	function fnPopup(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();	
	}
	</script>
 -->
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
		<div role="main" class="main">
			<section class="page-header">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="#">Sign Up</a></li>
									<li class="active">Register</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>회원가입</h1>
							</div>
						</div>
					</div>
				</section>
			
			<div class="container">
				<div class="row"><br/><br/><br/>
					<div class="col-md-4"></div>
					
					<div class="col-md-4">
						<span class="checkbox">
							<label for="phoneCheck">
								<h5>
									<input type="checkbox" id="phoneCheck" name="phoneCert">
									<strong>이용약관 및 개인정보수집 및이용에 모두 동의합니다.</strong>
								</h5>
							</label>
						</span>
					</div>
				</div>
				<div class="row">
				<div class="col-md-4"></div>
					<div class="col-md-4">
						<div class="featured-boxes">
							<div class="featured-box featured-box-primary align-left mt-xlg">
								<div align="center" class="box-content">
									<h4>휴대전화 인증</h4><br/>
									<p>본인명의의 휴대폰을 통해 인증합니다.</p>
									<div class="row mt-xlg">
										<div class="col-md-12">
											<%-- <input type="hidden" value="업체정보 암호화 데이타 : [AgAFRzQ2MTmDwh6PPOLysfSzTiYkMQeFSoA0LZWcg8izIf/fBtdoP6yDckoE2x8ro7y9POSvE2VFWiR6MbJgUuKemI5vGYjkSGIzGscKWJUOSbq4ZhlzIbGynT6t9uQReoHAdy5CiYDZ9WmcCborA7QxWUNjI79labRQV1pCEd4Wzj6q1DhJopIlEy/BT9hzAyBEjLjlBzRKlBo2+VdTCUwszTRRUxJ/9sH24XN99Tqm7ik97ewlAaZOpTm7r1pW+X5bzzQbxBORemkVec91d8VdWcDgXyFv4XBpwMG0oUgHy44ULok/DwiyjU9wcKZ4SmkIHuAfsAHwXkCKISAVQXaiKW6+JJZvMadSDAVIM8/ZLcAlxBG71Ya78zMs/U5Ict2WjHglkHXqwLG/F8aSkvjvIkH0KzS4jTiPWK9exS6Y9ixgRAkNLSDv7EkihS/zqAUawDDYwb1aCdv5AqCT2fEJygCfnVM38siWb5NfwSBT0L9CTfHzCg==]"/>
										
											<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
											<form name="form_chk" method="post" action="${ pageContext.request.contextPath }/sign/signup.jsp" onsubmit="return check()" target="popupChk">
												<input type="hidden" name="m" value="checkplusSerivce">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
												<input type="hidden" name="EncodeData" value="AgAFRzQ2MTmDwh6PPOLysfSzTiYkMQeFSoA0LZWcg8izIf/fBtdoP6yDckoE2x8ro7y9POSvE2VFWiR6MbJgUuKemI5vGYjkSGIzGscKWJUOSbq4ZhlzIbGynT6t9uQReoHAdy5CiYDZ9WmcCborA7QxWUNjI79labRQV1pCEd4Wzj6q1DhJopIlEy/BT9hzAyBEjLjlBzRKlBo2+VdTCUwszTRRUxJ/9sH24XN99Tqm7ik97ewlAaZOpTm7r1pW+X5bzzQbxBORemkVec91d8VdWcDgXyFv4XBpwMG0oUgHy44ULok/DwiyjU9wcKZ4SmkIHuAfsAHwXkCKISAVQXaiKW6+JJZvMadSDAVIM8/ZLcAlxBG71Ya78zMs/U5Ict2WjHglkHXqwLG/F8aSkvjvIkH0KzS4jTiPWK9exS6Y9ixgRAkNLSDv7EkihS/zqAUawDDYwb1aCdv5AqCT2fEJygCfnVM38siWb5NfwSBT0L9CTfHzCg==">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
											    
											    <!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용할 수 있으며, 인증결과 응답시 해당 값을 그대로 송신합니다.
											    	 해당 파라미터는 추가하실 수 없습니다. -->
												<input type="hidden" name="param_r1" value="">
												<input type="hidden" name="param_r2" value="">
												<input type="hidden" name="param_r3" value="">
											    
												<!-- <a href="javascript:fnPopup();" class="btn btn-info mb-md form-control"> 인증하기 </a> -->
												<input type="submit" id="phoneCert" value="인증하기" class="btn btn-info mb-md form-control"/>
											</form> --%>
											<button id="phoneCert" class="btn btn-info mb-md form-control">인증하기</button>
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
</html>