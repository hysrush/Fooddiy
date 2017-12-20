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
				<h4 class="modal-title" id="formModalLabel">매장 찾기</h4>
			</div>

			<div class="modal-body">
				<!-- 탭 시작 -->
				<div class="tabs">
					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#AddressSearch" data-toggle="tab"
							class="text-center" aria-expanded="true"><i class="fa fa-map"></i>&nbsp;&nbsp;주소로 찾기</a></li>
					</ul>
					
					<div class="tab-content">
						<!-- 주소로 찾기 -->
						<div id="AddressSearch" class="tab-pane active">
						
						
							<!-- 모달 속 상세내용 -->
		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="text-align: center" colspan="2">주문 결제정보</th>
				</tr>
			</thead>
			<tbody>
				<tr >
					<th width = "22%">주문번호</th>
					<td>${ member.no }</td>
				</tr>
				<tr>
					<th>주문시간</th>
					<td>${ member.regDate }</td>
				</tr>
				<tr>
					<th>결제방법</th>
					<td>${ member.payment }</td>
				</tr>
				<tr>
					<th>결제금액</th>
					<td class = "commaN">${ member.final_price }원</td>
				</tr>
			</tbody>
		</table>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>메뉴</th>
						<th>주문옵션</th>
						<th>수량</th>
						<th>합계금액</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ member.detailOrderList }" var="oneMenu">
						<tr >
							<td>
								${ oneMenu.name} <br>
								${ oneMenu.size} <br>
								<div class = "commaN">${ oneMenu.price}원</div>	
							</td>
							<td>
								${ oneMenu.bread}	<br>
								${ oneMenu.cheese}	<br>
								${ oneMenu.topping}	<br>
								${ oneMenu.vegetable}	<br>
								${ oneMenu.sauce}	<br>
								${ oneMenu.requirement}
							</td>
							<td>${ oneMenu.qty}</td>
							<td class = "commaN">${ oneMenu.total_price }원</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
							
							
							
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
			
	

</script>