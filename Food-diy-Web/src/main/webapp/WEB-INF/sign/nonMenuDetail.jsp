<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> | 주문 조회 | </title>
<%-- <script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script> --%>
<script>
	$(".close").click(function(){
		
		location.href="${ pageContext.request.contextPath }/main/Start";
	});
</script>
</head>
<body>
<div class="modal-header ">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h4 class="modal-title" id="largeModalLabel">주문 조회</h4>
	</div>

	<div class="modal-body shop" style="max-height:500px;overflow: auto;">

		<!-- 모달 속 상세내용 -->
		<table class="table table-bordered">
			<thead>
				<tr>
					<th  style="text-align: center" colspan="2"><h4>주문 정보</h4> </th>
				</tr>
			</thead>
			<tbody>
				<tr >
					<th width="15%">메뉴 사진</th>
					<td><img style="width: 100%" src="${ orderMenu.menu.pic}"/></td>
			
			</tbody>
		</table>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th width="15%">메뉴</th>
						<td colspan="2">
								${ orderMenu.menu.name} <strong>${ orderMenu.menu.size}</strong>
						</td>
					</tr>
					<tr>
						<th width="62%">주문옵션</th>
						<th>수량</th>
						<td>${ orderMenu.menu.qty}</td>
					</tr>
					<tr>
						<td rowspan="3">
								${ orderMenu.menu.bread}	<br>
								${ orderMenu.menu.cheese}	<br>
								${ orderMenu.menu.topping}	<br>
								${ orderMenu.menu.vegetable}	<br>
								${ orderMenu.menu.sauce}	<br>
								${ orderMenu.menu.requirement}
						</td>
						<th>총 금액</th>
						<td>${ orderMenu.menu.total_price }원</td>
					</tr>
					<tr>
						<th>결제 수단</th>
						<td>${ orderMenu.order.payment }</td>
					</tr>
					<tr>
						<th>주문 상태</th>
							<c:if test="${ orderMenu.order.orderStatus eq 0 }">
								<td><span style=" background-color: #b73d2b;" class="orderStatus label label-primary">주문 취소</span></td>
							</c:if>
							<c:if test="${ orderMenu.order.orderStatus eq 1 }">
								<td><span style=" background-color: #cea51a;" class="orderStatus label label-primary">대기 중</span></td>
							</c:if>
							<c:if test="${ orderMenu.order.orderStatus eq 2 }">
								<td><span style=" background-color: #26bf11;" class="orderStatus label label-primary">준비 중</span></td>
							</c:if>
							<c:if test="${ orderMenu.order.orderStatus eq 3 }">
								<td><span style=" background-color: #2ed07c;" class="orderStatus label label-primary">준비완료</span></td>
							</c:if>
					</tr>
				</thead>
			</table>
		<div class="modal-footer">
			<button type="button" class="btn btn-white close" data-dismiss="modal">Close</button>
		</div>
	</div>
</body>
</html>


