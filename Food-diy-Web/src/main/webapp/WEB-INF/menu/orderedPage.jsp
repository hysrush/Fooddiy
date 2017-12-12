<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
<!-- 이미지 캐러셀 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Head Libs -->
<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>



<style type="text/css">
/* 
	body {
		background-image: url("/resources/img/orderingImage/order.png");
	} */
</style>
</head>
<body onLoad="setTimeout('goIndex()', 3000)">

	<div role="main" class="main">
		<div class="container" style="background-image: url("${pageContext.request.contextPath}/resources/img/orderingImage/order.png")">
			<div class="row">
				<div class="col-md-12">
					<hr class="tall">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 center">
					<h1 class="mb-sm small">주문중 입니다</h1>
					<img alt="ddd" src="${pageContext.request.contextPath}/resources/img/orderingImage/order.png">
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	
		$(document).ready(function() {
			
			 var watch; // 왓치라는 변수를 하나 만든다.
			 
			 function start(){
			    watch = setTimeout(start,1000); //왓치변수에 재귀호출하는 행위를 넣는다.
			    timer(); //타이머 함수를 불러온다.
			 }

			 function timer(){
			  var d = new Date(); // 이번엔 시간을 찍어보자.
			  var t = d.toLocaleTimeString(); // 우리말에 맞게 시간만 뽑아낸다.
			  console.log(t);
			 }
			 
			 function stop(){ // stop 이라는 함수는 6초후 
			  setTimeout(function() { // 이름없는 함수를 호출하는 동작을 한다.
			   clearTimeout(watch); // 재귀호출하는 watch 변수를 지운다.
			  }, 3000);
			 
			 }

			 start(); // start 함수 시작. 6초 동안 시간을 찍는다.
			 stop(); // stop 함수 시작. 6초 후 시간 찍는것을 멈춘다.
			 //location.href = "${pageContext.request.contextPath}/index2.jsp";
			//setTimeout( goIndex() , 1000 * 10);
		});
			function goIndex() {
				location.href = "${pageContext.request.contextPath}/index2.jsp";
			}
	
	
	</script>
<!-- Vendor -->
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
		
		<!-- Theme Custom -->
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

</body>
</html>