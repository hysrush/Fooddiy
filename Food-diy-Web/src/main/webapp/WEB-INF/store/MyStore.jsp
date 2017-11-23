<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    
    <title>주소로 장소 표시하기</title>
    
</head>
	<body>
		
		<div id="map" style="width:1000px;height:500px;"></div>
		
			
			<select class="form-control" >
				<option value="" selected="selected" disabled= "disabled">시,도 를 선택해주세요 </option>
				 <c:forEach var="store" items="${ storeList }" varStatus="i">
				<option value="${store.storeAddr}">${store.storeAddr }</option>																		    
				 </c:forEach>
			</select>
			<%-- <c:set value="${storeList.storeAddr}" var='storeAddr'/> --%>


			
		
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
			var addressList = ["서울특별시 강남구 강남대로96길 12" ,"서울특별시 강남구 남부순환로 2611", "서울특별시 강남구 강남대로66길 6 1층"] // 마커 찍을 주소값 배열 
			
				
		// 배열에 넣은 주소를 for문을 돌면서 마커로 찍는다 	
		for(var i = 0; i< addressList.length; i++ ){	
			geocoder.addressSearch( addressList[i] , function(result, status) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === daum.maps.services.Status.OK) {
			    	 
			
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
	
			
			        
			        var iwContent = '<div style="padding:5px;">서브웨이 강남'+ i +'호점</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			        iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

				    // 인포윈도우를 생성합니다
				    var infowindow = new daum.maps.InfoWindow({
				        content : iwContent,
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
			});
		}
	
	
		</script>
	</body> 
</html>