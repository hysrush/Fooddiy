<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.modal-header {
	background-color: #7aa93c;
	height: 70px;
}
#formModalLabel {
	color: white;
}
.close {
	color: white;
}
.modalSection {
	padding: 10px !important;
	margin-top: 25px;
}
.storeName {
	font-size: 10pt;
}
.storeAddr {
	font-size: 9pt;
}
#AddressSearch .tab-content >.active {
	height: 180px;
}
</style>
<div class="modal fade" id="formModal" tabindex="-1" role="dialog"
	aria-labelledby="formModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="formModalLabel">매장 찾기</h4>
			</div>

			<div class="modal-body">
				<!-- 탭 시작 -->
				<div class="tabs">
					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#AddressSearch" data-toggle="tab"
							class="text-center" aria-expanded="true"><i class="fa fa-map"></i>&nbsp;&nbsp;주소로 찾기</a></li>
						<li class=""><a href="#StoreSearch" data-toggle="tab"
							class="text-center" aria-expanded="false"><i
								class="fa fa-home"></i>&nbsp;&nbsp;매장명으로 찾기</a></li>
					</ul>
					<div class="tab-content">
						<!-- 주소로 찾기 -->
						<div id="AddressSearch" class="tab-pane active">
							<section class="modalSection section section-default">
								<div class="form-group mt-md">
									<label for="selectAddress1" class="col-sm-3 control-label">시/도</label>
									<div class="col-sm-9">
										<select class="form-control" id ="sido">
											<option value="" selected="selected" disabled= "disabled">시,도 를 선택해주세요 </option>
											  <c:forEach var="city" items="${ cityList }" varStatus="i">
											  		<option value="${city.cityNo}">${ city.cityName }</option>																		    
											  </c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group mt-md">
									<label for="selectAddress2" class="col-sm-3 control-label">시/도</label>
									<div class="col-sm-9">
										<select class="form-control" id="gugun">
											<option value="" selected="selected">구,군 을 선택해주세요 </option>
											 	<c:forEach var="location" items="${ locationList }" varStatus="i">
													<option value="${ location.locationNo }" >${ location.locationName }</option>
											  </c:forEach>
										</select>
									</div>
								</div>
							</section>
							<div class="form-group">
								<h4 class="mt-xlg mb-none text-uppercase">&nbsp;&nbsp;<strong id="searchInfo1" >지역을 선택해주세요</strong></h4>
								<br>
								<div class="col-md-12 row" id="storeDiv1" >
									<form id="demo-form" class="form-horizontal mb-md" novalidate="novalidate">
										<table class="table table-hover" >
											<!-- 매장 리스트 -->
											<tbody id ="storeList1">
											</tbody>
										</table>
										<!-- 방문매장 form값 -->
										<form:hidden id="visitStore" path="visitStore" value="선택없음" />
									</form>
								</div>
							</div>
						</div>
						<!-- 매장명으로 찾기 -->
						<div id="StoreSearch" class="tab-pane">
							<section class="modalSection section section-default" style="margin-bottom: 0px;">
								<div class="form-group mt-md">
									<label for="selectAddress1" class="col-sm-3 control-label">매장명</label>
									<div class="col-sm-9">
										<!-- 검색창 / 검색 버튼 -->
										<div class="input-group input-group-md">
											<input class="form-control" type="text" name="searchWord" id="searchWord" placeholder="Search...">
											<span class="input-group-btn">
												<button type="button" class="btn btn-success btn-md" id="searchBtn">
													<i class="fa fa-search"></i>
												</button>
											</span>
										</div>
									</div>
								</div>
							</section>
							<br>
							<div class="form-group">
							<h4 class="mt-xlg mb-none text-uppercase">&nbsp;&nbsp;<strong id="searchInfo2" >매장명을 입력해주세요</strong></h4>
							<br>
							<div class="col-md-12 row" id="storeDiv2">
								<form id="demo-form" class="form-horizontal mb-md" novalidate="novalidate">
									<table class="table table-hover" >
										<!-- 매장 리스트 -->
										<tbody id ="storeList2">
										</tbody>
									</table>
									<!-- 방문매장 form값 -->
									<form:hidden id="visitStore" path="visitStore" value="선택없음" />
								</form>
							</div>
						</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer center">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="modalClose">Close</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
			
	$("#sido").change(function(){
		
		// 1. Parameter setting
		var sido = $("#sido").val();
		console.log( "선택된 값1 : " + $("#sido").val() );
      		
		// 2. ajax call
		$.ajax({
              url : "./sido",
              type: "post",
              data : { "sido" : sido },
              success : function(responseData){
                  			var data = JSON.parse(responseData);
                  			
                  			// 3. result setting
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
			url : "./gugun",
			type : "post",
			data : {"gugun" : gugun},
			success : function(responseData){
				
						var data = JSON.parse(responseData);
						
						$('#storeList1').empty();
						
						// div요소 변경
						$('#storeDiv1').css("max-height","250px");
						$('#storeDiv1').css("overflow","auto");
						$('#storeDiv1').css("width","580px");
						
						// 검색완료 시, 구군 이름 표시
						$("strong#searchInfo1").text('"' + data.locationName + '"(으)로 검색');
						
					 	for(var i = 0 ; i < data.storeList.length; i++){
							var contents = '';
							contents += '<tr>';
							contents +=		'<td width="25%">';
							contents +=			'<i class="fa fa-map-marker" style="color:green;"></i>&nbsp;&nbsp;';
							contents +=			'<strong class="storeName" value="'+ data.storeList[i].storeName +'" >'+ data.storeList[i].storeName + '점</strong>';
							contents +=			'<div class="storePhone post-meta">' + data.storeList[i].storePhone +'</div>';
							contents +=		'</td>';
							contents +=		'<td class="storeAddr">'+ data.storeList[i].storeAddr +'</td>';
							contents +=		'<td><input class="btn btn-success btn-sm" type="button" name="storeChoice"';
							contents += 				'onclick="goStoreName(\''+data.storeList[i].storeName+'\')" value="선택" data-dismiss="modal" /></td>';
							contents += '</tr>';
						
							$('#storeList1').append(contents);
					 	}
			}
		});
		
	});
	
	$("#searchBtn").click(function(){
		
		var search = $("#searchWord").val();
		//alert( "매장 검색값 : " + search);
		
		$.ajax({
			url : "./search",
			type : "post",
			data : {"search" : search},
			success : function(responseData){
				
						var data = JSON.parse(responseData);
						
						$('#storeList2').empty();
						
						// div요소 변경
						$('#storeDiv2').css("max-height","250px");
						$('#storeDiv2').css("overflow","auto");
						$('#storeDiv2').css("width","600px");
						
						// 검색완료 시, 구군 이름 표시
						$("strong#searchInfo2").text('"' + search + '"(으)로 검색');
						
						if (data.searchList == null) {
							alert("test");
							var contents = '';
							contents += '<tr>';
							contents += 	'<span>해당 매장으로 검색한 결과가 없습니다.';
							contents += 	'다른 매장명으로 검색을 하려면 다시 입력한 후 검색버튼을 눌러주세요.</span>';
							contents += '</tr>';
						
							$('#storeList2').append(contents);
						}
						
					 	for(var i = 0 ; i < data.searchList.length; i++){
							var contents = '';
							contents += '<tr>';
							contents +=		'<td width="25%">';
							contents +=			'<i class="fa fa-map-marker" style="color:green;"></i>&nbsp;&nbsp;';
							contents +=			'<strong class="storeName" value="'+ data.searchList[i].storeName +'" >'+ data.searchList[i].storeName + '점</strong>';
							contents +=			'<div class="storePhone post-meta">' + data.searchList[i].storePhone +'</div>';
							contents +=		'</td>';
							contents +=		'<td class="storeAddr">'+ data.searchList[i].storeAddr +'</td>';
							contents +=		'<td><input class="btn btn-success btn-sm" type="button" name="storeChoice"';
							contents += 				'onclick="goStoreName(\''+data.searchList[i].storeName+'\')" value="선택" data-dismiss="modal" /></td>';
							contents += '</tr>';
						
							$('#storeList2').append(contents);
					 	}
			}
		});
		
	});
	
	function goStoreName(data){
			
		//alert('선택한 매장명 : ' + data);
		
		var basic = $("#visitStore").val();
		//alert('매장 초기값 : ' + basic);
		
		// 값넣기		
		$("#visitStore").val(data);
				
		var storeChoice = $("#visitStore").val();
		//alert('매장값 : ' + storeChoice);
		
		$("#storeName").val(storeChoice + '점');
	}
	

</script>