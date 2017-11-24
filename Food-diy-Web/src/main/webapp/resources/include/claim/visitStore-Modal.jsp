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
										<select class="form-control" id= "gugun">
											<option value="" selected="selected">구,군 을 선택해주세요 </option>
											 	<c:forEach var="location" items="${ locationList }" varStatus="i">
													<option value="${ location.locationNo }" >${ location.locationName }</option>
											  </c:forEach>
										</select>
									</div>
								</div>
							</section>
							<div class="form-group">
								<h4 class="mt-xlg mb-none text-uppercase">&nbsp;&nbsp;<strong id="searchInfo" >지역을 선택해주세요</strong></h4>
								<br>
								<div class="col-md-12 row" id="storeDiv">
									<form id="demo-form" class="form-horizontal mb-md" novalidate="novalidate">
										<table class="table table-hover" >
											<tbody id ="storeList">
												<!-- 매장 리스트 -->
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
							<form id="demo-form" class="form-horizontal mb-md"
								novalidate="novalidate">
								<section class="modalSection section section-default">
									<div class="form-group mt-md">
										<label for="selectAddress1" class="col-sm-3 control-label">매장명</label>
										<div class="col-sm-9">
											<div class="input-group input-group-md">
												<input class="form-control" type="text" name="visitStore"
													id="visitStore" placeholder="Search..."> <span
													class="input-group-btn">
													<button type="submit" class="btn btn-success btn-md">
														<i class="fa fa-search"></i>
													</button>
												</span>
											</div>
										</div>
									</div>
								</section>
								<br>
								<div class="form-group">
									<label class="col-sm-3 control-label">Comment</label>
									<div class="col-sm-9">
									</div>
								</div>
							</form>
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
              url : "./test",
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
			url : "./test3",
			type : "post",
			data : {"gugun" : gugun},
			success : function(responseData){
				
						var data = JSON.parse(responseData);
						
						$('#storeList').empty();
						// div요소 변경
						$('#storeDiv').css("max-height","250px");
						$('#storeDiv').css("overflow","auto");
						// strong요소 변경 => 나중에 고민,..
						switch (gugun) {
						case "1":
							gugun = "서초구";
							break;
						case "2":
							gugun = "강남구";
							break;
						case "3":
							gugun = "노원구";
							break;
						case "4":
							gugun = "도봉구";
							break;
						default:
							break;
						}
						// 검색완료 시, 구군 정보 표시
						$("strong#searchInfo").text('"' + gugun + '"(으)로 검색');
						
					 	for(var i = 0 ; i < data.storeList.length; i++){
							var contents = '';
							contents += '<tr>';
							contents +=		'<td width="25%">';
							contents +=			'<i class="fa fa-map-marker" style="color:green;"></i>&nbsp;&nbsp;';
							contents +=			'<strong class="storeName" value="'+data.storeList[i].storeName +'" >'+ data.storeList[i].storeName + '점</strong>';
							contents +=			'<div class="storePhone post-meta">'+ data.storeList[i].storePhone +'</div>';
							contents +=		'</td>';
							contents +=		'<td class="storeAddr">'+ data.storeList[i].storeAddr +'</td>';
							contents +=		'<td><input class="btn btn-success btn-sm" type="button" name="storeChoice"';
							contents += 				'onclick="test(\''+data.storeList[i].storeName+'\')" value="선택" data-dismiss="modal" /></td>';
							contents += '</tr>';
						
							$('#storeList').append(contents);
					 	}
			}
		});
		
	});
	
	function test(data){
			
		//alert('선택한 매장명 : ' + data);
		
		var a = $("#visitStore").val();
		//alert('매장 초기값 : ' + a);
		
		// 값넣기		
		$("#visitStore").val(data);
				
		var storeChoice = $("#visitStore").val();
		//alert('매장값 : ' + storeChoice);
		
		$("#storeName").val(storeChoice + '점');
	}

</script>