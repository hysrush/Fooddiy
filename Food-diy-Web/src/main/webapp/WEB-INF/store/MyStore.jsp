
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>| 매장별 EVENT |</title>

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
<script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<style>
/* Always set the map height explicitly to define the size of the div
		* element that contains the map. */
#map {
	height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>



</head>
<body>
	<div class="body">
		<header id="header" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
			<jsp:include page="/resources/include/top-new.jsp" />
		</header>

		<!-- Mobile menu 부분 -->
		<jsp:include page="/resources/include/mobile-menu.jsp" />


		<div role="main" class="main">

			<section class="page-header">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ul class="breadcrumb">
								<li><a href="#">Home</a></li>
								<li class="active">FindStore</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1>매장찾기</h1>
						</div>
					</div>
				</div>
			</section>

			<div class="container">

				<div class="row">
					<div class="col-md-3">
						<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">

							<h4 class="heading-primary">이벤트</h4>
							<ul class="nav nav-list mb-xlg">
								<li><a href="${ pageContext.request.contextPath }/store/findStore.do">매장 찾기</a></li>
								<li class="active"><a href="${ pageContext.request.contextPath }/store/myStore.do">근처 매장</a></li>
							</ul>
						</aside>
					</div>
					<div class="col-md-9">

						<div class="tabs tabs-bottom tabs-center tabs-simple">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tabsNavigationSimple1" data-toggle="tab" aria-expanded="true">매장찾기</a></li>
							</ul>




							<div id="map" style="width: 1000px; height: 500px;"></div>



						</div>
					</div>
				</div>
			</div>
			<!-- container -->
		</div>
		<!-- main -->
		<footer id="footer">
			<jsp:include page="/resources/include/bottom.jsp" />
		</footer>
	</div>
	<!-- body -->



	<!--  hidden 값으로 db에서 매장 주소정보를 가져온다 -->
	<c:forEach var="row" items="${ storeList }" varStatus="i">
		<input type="hidden" name="storeAddrInfo" value="${row.storeAddr}">
		<input type="hidden" name="storeNameInfo" value="${row.storeName}">
		<input type="hidden" name="storePhoneInfo" value="${row.storePhone}">
	</c:forEach>









	<!-- Vendor -->
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery-cookie/jquery-cookie.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/common/common.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.validation/jquery.validation.min.js"></script>
	<script src="${ pageContext.request.contextPath}/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
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


	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e4954cc0e63bd91f632decfb6b47fd4&libraries=services"></script>

	<script>
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		
		
		
		
			if (navigator.geolocation) {
					    
					    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
					    navigator.geolocation.getCurrentPosition(function(position) {
					        
					        var lat = position.coords.latitude, // 위도
					            lon = position.coords.longitude; // 경도
					        
					        var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
					            message = '<div style="padding:5px;">현재위치</div>'; // 인포윈도우에 표시될 내용입니다
					        
					        // 마커와 인포윈도우를 표시합니다
					        displayMarker(locPosition, message);
					            
					      });
					    
					} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
					    
					    var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
					        message = 'geolocation을 사용할수 없어요..'
					        
					    displayMarker(locPosition, message);
					}
			
					
			// 지도에 마커와 인포윈도우를 표시하는 함수입니다
			function displayMarker(locPosition, message) {
			
			    // 마커를 생성합니다
			    var markerNow = new daum.maps.Marker({  
			        map: map, 
			        position: locPosition
			    }); 
			  	
			    
			    
			    var iwContent = message, // 인포윈도우에 표시할 내용
			        iwRemoveable = true;
			
			    // 인포윈도우를 생성합니다
			    var infowindow = new daum.maps.InfoWindow({
			        content : iwContent,
			        removable : iwRemoveable
			    });
			    
			    // 인포윈도우를 마커위에 표시합니다 
			    infowindow.open(map, markerNow);
			    
			    // 지도 중심좌표를 접속위치로 변경합니다
			    map.setCenter(locPosition);      
			}    
		
			
			
			
			var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; // 마커 이미지 
			 
			//내 db의 주소값을 가져올 배열 
			var addrArray = new Array();
			var num = 0;
			
			$( "input[name = 'storeAddrInfo']" ).each(function( index ) {
				console.log(index);
				addrArray[num] = $(this).val();
				num++;
			});

			
		
					
		var storeAddr = new Array();
		var storeName = new Array();
		var storePhone = new Array();
		var storeZip = new Array();
		<c:forEach items="${storeList}" var="store">
			storeAddr.push("${store.storeAddr}");
			storeName.push("${store.storeName}");
			storePhone.push("${store.storePhone}");
			storeZip.push("${store.storeZip}");
		</c:forEach>
		var j = 0;
		
		// 배열에 넣은 주소를 for문을 돌면서 마커로 찍는다 	
		for(var i = 0; i< storeAddr.length; i++ ){
			
			geocoder.addressSearch(storeAddr[i] , function(result, status) {
														
														//console.log( "j = " + j + " , storeName: " +storeName[j]);
														// 정상적으로 검색이 완료됐으면 
													    if (status === daum.maps.services.Status.OK) {
													    	console.log("result = " + result[0].road_address.zone_no);
													    	
													    	for(var index = 0 ; index < storeAddr.length ; index++){
													    		//console.log("storeAddr[index] = " + storeAddr[index]);
													    		if(storeZip[index] == result[0].road_address.zone_no)
													    			
													    			
													    			
													    			break;
																}
													    	
													    	//console.log("index = " + index);
													    	// console.log("storeName[index] = " + storeName[index]);
													    	
													        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
													
													    	 // 마커 이미지의 이미지 크기 입니다
													        var imageSize = new daum.maps.Size(24, 35); 
													        
													        // 마커 이미지를 생성합니다    
													        var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
													        
													        // 결과값으로 받은 위치를 마커로 표시합니다
													        var marker = new daum.maps.Marker({
													            map: map,
													            position: coords,
													            image : markerImage, // 마커 이미지 
													            clickable: true
													        });
													    	
													        // 인포윈도우로 장소에 대한 설명을 표시합니다
													        var iwContents = '';
														     iwRemoveable = true;
								        	
													        	 // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													        	iwContents += '<form  class="nearStore" action = "" method="POST">';		
							 						            iwContents += '<div style="width:150px;height:80px;text-align:center;padding:6px 0;">';
							 						            iwContents += storeName[j]+ '<br/>' + storePhone[j] + '<br/>'; 
							 						            iwContents += '<input type="submit" name = "storeChoice" onclick="choice(\''+storeName[j]+'\')" value="선택" />';
																iwContents += '</div>';
													        	
													        	
													         // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
										
														    // 인포윈도우를 생성합니다
														    var infowindow = new daum.maps.InfoWindow({
														        content : iwContents,
														        removable : iwRemoveable
														        
														    });										
														
														    // 마커에 클릭이벤트를 등록합니다
														    daum.maps.event.addListener(marker, 'click', function() {
														          // 마커 위에 인포윈도우를 표시합니다
														          infowindow.open(map, marker);  
														    });
														        
														
											
													        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
													       	// map.setCenter(coords);
													    } 
													 	j++; 
			});
			
			
		}
	
	
		</script>
				 
	
	
		<script>
	             function choice(storeName){
	               
	                 
	                 //var btn= this;
	                 var storeName = storeName;
	               <c:choose>  
	           		<c:when test="${cartStoreVO == null}">
	                
	                 $('.nearStore').attr('action', "${pageContext.request.contextPath}/menu/select_ingredients.do") // 메뉴페이지      
	                 $('.nearStore').attr('method', "POST") // 메뉴페이지      
	                </c:when>
	                 
	                 <c:otherwise>
	                 $('.nearStore').attr('action', "${pageContext.request.contextPath}/menu/cart.do")   //구매페이지
	                 $('.nearStore').attr('method', "GET")   //구매페이지
	                 </c:otherwise>
	                </c:choose> 
	              } 
		
		
		</script>


</body>
</html>


