<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title> | 매장별 EVENT |  </title>	

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
									<li><a href="#">Home</a></li>
									<li class="active">Events</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>매장별 EVENT</h1>
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
									<li class="active"><a href="${ pageContext.request.contextPath }/store/findStore.do">매장 찾기</a></li>
									<li>
										<a href="${ pageContext.request.contextPath }/store/myStore.do">근처 매장</a>
									</li>
								</ul>
							</aside>
						</div>
							<div class="col-md-9">
		
									<div class="tabs tabs-bottom tabs-center tabs-simple">
										<ul class="nav nav-tabs">
											<li class="active">
												<a href="#tabsNavigationSimple1" data-toggle="tab" aria-expanded="true">매장찾기</a>
											</li>
										</ul>		
				
							<div class="tab-content">
											<div class="tab-pane active" id="tabsNavigationSimple1">
												<div class="center">
												
									<div class="col-md-12">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">지역검색</h4>
											
													
												
													<div class="row">
														<div class="form-group">
															<div class="col-md-6">
																<label>시,도</label>
																<select class="form-control" id ="sido">
																	<option value="" selected="selected" disabled= "disabled">시,도 를 선택해주세요 </option>
																	  <c:forEach var="city" items="${ cityList }" varStatus="i">
																	  		<option value="${city.cityNo}">${ city.cityName }</option>																		    
																	  </c:forEach>
																</select>
															</div>
															
															<div class="col-md-6">
																<label>군,구</label>
																<select class="form-control" id= "gugun">
																	<option value="" selected="selected" >구,군 을 선택해주세요 </option>
																</select>
															</div>	
														</div>
													</div>
											
													
											<h4 class="mt-xlg mb-none text-uppercase">&nbsp;&nbsp;<strong id="searchInfo" >지역을 선택해주세요</strong></h4>
											<br>
												<div  id="storeList">
													<form action="storeEventPage.do" method ="post">
														<table border="1">
														
															<tbody id ="storeList">
																<!-- 매장 리스트 -->
															</tbody>
														</table>
													</form>
												</div>
												
												
												
													<!--   AJAX 테이블이 생성될 공간 
														<div class="row">
															<div class="col-md-12">
																<form action="storeEventPage.do" method ="post">
																	<div id="storeList">
						
																	</div>
																</form>
															</div>
														</div> -->
										</div>
									</div>	
												 <!--   선택한 매점 이름과 매칭되는 지도api 불러오기 -->
													<div class="row">
														<div class="col-md-12 col-sm-12 col-xs-12">
															<div id="map" style="height: 500px;"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
					</div>			
				</div><!-- container -->
			</div>	<!-- main -->				
				<footer id="footer">
					<jsp:include page="/resources/include/bottom.jsp"/>
				</footer>
		</div> <!-- body -->						
							
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
		
		<script type="text/javascript">
			
			$("#sido").change(function(){
				
				// 1. Parameter setting
				var sido = $("#sido").val();
				console.log( "선택된 값1 : " + $("#sido").val() );
	       		
				// 2. ajax call
				$.ajax({
		              url : "./test",
		              type: "post",
		              data : { "sido" : sido },
		              success : function(responseData){
		                  			var data = JSON.parse(responseData);
		                  			
		                  			
		  				          	$('#gugun').empty();
			  				        $('#gugun').append('<option value="" selected="selected">구,군 을 선택해주세요 </option>');
		  				          	for(var i = 0 ; i < data.guList.length ; i++){
		  				          		$('#gugun').append('<option value="'+ data.guList[i].LOC_NO + '">' + data.guList[i].LOC_NAME + '</option>');	
		  				          	} 	
		              }
		          });
			});

				$("#gugun").change(function(){
					
					var gugun = $("#gugun").val();
					console.log( " 구군 값 : " + $("#gugun").val());
					
					$.ajax({
						url : "./test3",
						type : "post",
						data : {"gugun" : gugun},
						success : function(responseData){
									var data = JSON.parse(responseData);
									
									$('#storeList').empty();
							
									
									$('#storeList').css("max-height","250px");
									$('#storeList').css("overflow","auto");
									$('#storeList').css("max-width","1000px");
										
										// 검색완료 시, 구군 이름 표시
										$("strong#searchInfo").text('"' + data.locationName + '"(으)로 검색');
										
									 	for(var i = 0 ; i < data.storeList.length; i++){
											var contents = '';
											contents += '<tr>';
											contents +=		'<td style = "width: 30%" nowrap>';
											contents +=			'<i class="fa fa-map-marker" style="color:green;"></i>&nbsp;&nbsp;';
											contents +=			'<strong class="storeName" value="'+ data.storeList[i].storeName +'" >'+ data.storeList[i].storeName + '</strong>';
											contents +=			'<div class="storePhone post-meta">' + data.storeList[i].storePhone +'</div>';
											contents +=		'</td>';
											contents +=		'<td class="storeAddr" style = "width: 65%">'+ data.storeList[i].storeAddr +'</td>';
											contents +=		'<td style = "width: 5%" align ="right"><input class="btn btn-success btn-sm" type="button" name="storeChoice"';
											contents += 				'onclick="test(\''+data.storeList[i].storeAddr+'\')" value="선택"  /></td>';
											contents += '</tr>';
										
											$('#storeList').append(contents);
									 	}
										

								 			
						}
					});
		
				});
				 // 매장명으로 주소 가져오기 
				function test(storeAddr){
 					alert('storeAddr = ' + storeAddr);
 					
 					var btn = this;
 					var store = storeAddr;
 					
 					$.ajax({
 						url : "./test4",
 						type : "post",
 						data : {"store" : store},
 						success : function(responseData){
 							var data = JSON.parse(responseData);
 							
 						
 							
 							var geocoder = new daum.maps.services.Geocoder();
 							var addr = data.storeList[0].storeAddr;
									
	 						// 주소로 좌표를 검색합니다
	 						geocoder.addressSearch( store, function(result, status) {
	
	 						    // 정상적으로 검색이 완료됐으면 
	 						     if (status === daum.maps.services.Status.OK) {
	
	 						        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	
	 						        // 결과값으로 받은 위치를 마커로 표시합니다
	 						        var marker = new daum.maps.Marker({
	 						            map: map,
	 						            position: coords
	 						        });
	 						        		
	 						       		console.log("storeAddr = " + addr);
	 						        	var contents = '';
	 						            contents += '<form  class="test5" action = "" method="POST">';
	 						            contents += '<div style="width:150px;height:80px;text-align:center;padding:6px 0;">';
	 						            contents += '서브웨이'+data.storeList[0].storeName+ '<br/>' + data.storeList[0].storePhone+ '<br/>'; 
	 						            contents += '<input type="hidden" name = "storeName" value='+data.storeList[0].storeName + ' />';
	 						            contents += '<input type="hidden" name = "storeAddr" value='+ addr + ' />';
	 						            contents += '<input type="hidden" name = "storePhone" value='+data.storeList[0].storePhone + ' />';
	 						            contents += '<input type="hidden" name = "storeAddr2" value='+data.storeList[0].storeAddr2 + ' />';     
	 						            //contents += '<input type="submit" value="선택"/>';
	 						            contents += '<input type="submit" name = "storeChoice" onclick="choice(\''+data.storeList[0].storeName+'\')" value="선택" />';
										contents += '</div>';
										contents += '</form>';
										
		 						        // 인포윈도우로 장소에 대한 설명을 표시합니다
	 						        var infowindow = new daum.maps.InfoWindow({
	 						       		content : contents
	 						       		
	 						       		
	 						        });
	 						        infowindow.open(map, marker);
	
	 						        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	 						        map.setCenter(coords);
	 						    } 
	 						});    
 						}
 					});

 				}
				 
				
				 
	
				 
	             function choice(storeName){
	               
	                 
	                 //var btn= this;
	                 var storeName = storeName;
	               <c:choose>  
	           		<c:when test="${cartStoreVO == null}">
	                
	                 $('.test5').attr('action', "${pageContext.request.contextPath}/menu/select_ingredients.do") // 메뉴페이지      
	                 $('.test5').attr('method', "POST") // 메뉴페이지      
	                </c:when>
	                 
	                 <c:otherwise>
	                 $('.test5').attr('action', "${pageContext.request.contextPath}/menu/cart.do")   //구매페이지
	                 $('.test5').attr('method', "GET")   //구매페이지
	                 </c:otherwise>
	                </c:choose> 
	              } 
		</script>
		<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new daum.maps.Map(mapContainer, mapOption); 
		
		

			if (navigator.geolocation) {
					    
					    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
					    navigator.geolocation.getCurrentPosition(function(position) {
					        
					        var lat = position.coords.latitude, // 위도
					            lon = position.coords.longitude; // 경도
					        
					        var locPosition = new daum.maps.LatLng(lat, lon)
	
					            map.setCenter(locPosition);  
					            
					      });
					    
					} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
					    
					    var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
					        message = 'geolocation을 사용할수 없어요..'
					        
					    displayMarker(locPosition, message);
					}
		
		</script>

	</body>
</html>