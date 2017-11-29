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
		
		$('#phoneCert').attr('disabled', true);
		
		$("#phoneCheck").change(function(){
			
			if($("#phoneCheck").is(":checked")){
				$('#phoneCert').attr('disabled', false);
			}else{
				$('#phoneCert').attr('disabled', true);
			}
			
		});
		
		var cellPhone = document.getElementById('cellPhone');
		var birthNumber = document.getElementById('birthNumber');
		
		$('#check').attr('disabled', true);
		
		// 인증 버튼 활성화
		$("input").change(function(){
			
			var p = document.form_chk;
			
			if(isNull(p.name) && isNull(p.birth) && isNull(p.phone)){
				$('#check').attr('disabled', false);
			}else{
				$('#check').attr('disabled', true);
			}
		
		});
		
		// 하이픈 추가
		cellPhone.onkeyup = function(event){
			event = event || window.event;
			var _val = this.value.trim();
			this.value = autoHypenPhone(_val) ;
			
		}
		
		// 슬래쉬 추가 
		birthNumber.onkeyup = function(event){
			
			event = event || window.event;
			var num = this.value.trim();
			this.value = autoSlashBirth(num);
		}
		
		
		$("#check").click(function(){
			window.opener.name = "main"; // 부모창의 이름 설정
	    	document.form_chk.target = opener.window.name; // 타켓을 부모창으로 설정
	    	/* document.form_chk.method="post";
	    	document.form_chk.action = "${ pageContext.request.contextPath }/sign/phoneCertForm.do";
	   		document.form_chk.submit();*/
	   		self.close();
		});
		
		
		/* 팝업창
		$("#phoneCert").click(function(){
			
			var popUrl = "${ pageContext.request.contextPath }/sign/phoneCertForm.do";	//팝업창에 출력될 페이지 URL
			var popOption = "width=370, height=450, resizable=no, scrollbars=no, status=no";
			
			window.open(popUrl,"",popOption);
			
		});*/
		
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
									<input type="checkbox" id="phoneCheck" name="phoneCheck">
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
											<button id="phoneCert" class="btn btn-info mb-md form-control" data-toggle="modal" data-target="#modal">인증하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<!-- 휴대전화 인증 modal 띄우기 -->
<script src="${ pageContext.request.contextPath }/resources/js/sign/check.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/sign/autoHypen.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/sign/autoSlash.js"></script>
<div class="modal fade" id="modal">
<div class="container">
			<div class="row">
				<div class="col-md-4"></div>
			</div>
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="featured-boxes">
						<div class="featured-box featured-box-primary align-left mt-xlg">
							<div align="center" class="box-content">
								<h4>휴대전화 인증</h4><br/>
								<p>본인 인증 서비스</p>
								<div class="row mt-xlg">
									<div class="col-md-12">
										<form name="form_chk" method="post" target="main" action="${ pageContext.request.contextPath }/sign/phoneCertForm.do">
											<div class="form-group">
												<div class="col-xs-6 col-md-6">
												<label>이름 </label> <input type="text" name="name" placeholder="류대현"class="form-control"/>
												</div>
												<div class="col-xs-6 col-md-6">
													<label>주민번호 </label> <input type="text" name="birth" id="birthNumber" placeholder="(ex 19970901)" maxlength="10" class="form-control" required/>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-6 col-md-6">
													<label>전화번호 </label> <input type="tel"  name="phone" id="cellPhone" placeholder="(- 빼고 입력)" maxlength="13" class="form-control" required />
												</div><br/>
												<div class="col-xs-6 col-md-6">	
													남 <input type="radio" class="btn btn-info" name="sex" value="남자" class="form-control" />&nbsp;
													여 <input type="radio" class="btn btn-info" name="sex" value="여자" class="form-control"/>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-12 col-md-12">
													<!-- <a href="javascript:fnPopup();" class="btn btn-info mb-md form-control"> 인증하기 </a> -->
													<input type="submit" id="check" value="인증하기" class="btn btn-info mb-md form-control"/>
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
		<!-- ---------------------------------------------------------------------------------------------- -->
		<footer class="light hidden-xs" id="footer">
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