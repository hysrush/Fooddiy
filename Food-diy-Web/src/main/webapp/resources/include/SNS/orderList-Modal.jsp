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
#btnTD {
	width: 5%;
}
</style>
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" style="min-width: 320px;"
	aria-labelledby="formModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="formModalLabel">최근 주문내역</h4>
			</div>

			<div class="modal-body">
				<!-- 탭 시작 -->
				<div class="tabs">
					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#AddressSearch" data-toggle="tab"
							class="text-center" aria-expanded="true"><i class="fa fa-map"></i>&nbsp;&nbsp;주문내역</a></li>
						
					</ul>
					<div class="tab-content">
						<!-- 주소로 찾기 -->
						<div id="AddressSearch" class="tab-pane active">
							<section class="modalSection section section-default">
								<div class="ibox">
							<div class="ibox-content">
								<div class="table-responsive">
									<table class="footable table table-stripped toggle-arrow-tiny dataTables-example" data-page-size="25">
										<thead>
											<tr style="margin-top: 15%">
												<th data-hide="phone" data-sort-ignore="true">주문번호</th>
												<th data-hide="phone" data-sort-ignore="true" align="center">메뉴</th>
												<th data-hide="phone" data-sort-ignore="true">결제금액</th>
												<th data-hide="phone" data-sort-ignore="true" width ="130px"> 선택 </th>
												
											</tr>
										</thead>
										<tbody class= "todayOrderList">

										<c:forEach items="${ todayOrder }" var="order">

											<tr>
													<td class="convType orderNumber" width="100px;">
				                                    	${ order.no }
			                                  		</td>
														
													<td width="520px">
														
														<c:forEach items = "${  order.detailOrderList }" var = "oneOrder">
															${ oneOrder.name }
															<input type="hidden" val="${oneOrder}"/>
														</c:forEach>
														
			                                   		</td>											
													<td class = "commaN finalPrice">${ order.final_price }원</td>
													<td>
													<c:forEach items = "${order.detailOrderList }" var = "oneOrder">
														<input class="btn btn-success btn-sm" type="button" name="orderChoice" onclick="goOrderName('${oneOrder.name}','${oneOrder.bread}','${oneOrder.cheese}','${oneOrder.topping}','${oneOrder.vegetable}','${oneOrder.sauce}')" value="선택" data-dismiss="modal" />
													</c:forEach>	
													</td>
										
													<td class = "cancel-button"></td>									
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
							</section>
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


	function goOrderName(name){
			var name = name;
			console.log(name);
	
		//alert('선택한 매장명 : ' + data);

	function goOrderName(name , bread , cheese , topping , vegetable , sauce){
		console.log(name + ',' + bread + ',' + cheese + ',' + topping + ',' + vegetable + ',' + sauce);
		
		$('#name').val(name);
		$('#bread').val(bread);
		$('#cheese').val(cheese);
		$('#topping').val(topping);
		$('#vegetable').val(vegetable);
		$('#sauce').val(sauce);
		
					
		console.log($('#name'));

		
		
		
		$("#orderList").val(name);
	}
	
	function isNull(obj) {
		return (typeof obj != "undefined" && obj != null && obj != "") ? false : true;
	}
	
	
	
	

</script>