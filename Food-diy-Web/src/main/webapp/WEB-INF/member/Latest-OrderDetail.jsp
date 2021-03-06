<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> | 최근 주문 내역 | </title>
<script>
$(document).ready(function(){	
	
	
	
	
});

</script>
</head>
<body>


	<div class="modal-header ">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h4 class="modal-title" id="largeModalLabel">MENU</h4>
	</div>

	<div class="modal-body shop" style="max-height:500px;overflow: auto;">

		<!-- 모달 속 상세내용 -->
		<table class="table table-bordered">
			<c:forEach items="${ member.detailOrderList }" var="Menu">
				<thead>
				<tr>
					<th style="text-align: center" width="15%">메뉴 사진</th>
				</tr>
				</thead>
				<tr>
					<td align="center"><img style=" width: 40%" src="${ Menu.pic}"/></td>
				</tr>
			</c:forEach>
		</table>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="text-align: center" colspan="2"><h4>주문 결제정보</h4> </th>
				</tr>
			</thead>
			<tbody >
				<tr >
					<th width="9%">주문번호</th>
					<td>${ orderList.no }</td>
					<th class="col-xs-4" width="10%">주문번호</th>
					<td>${ member.no }</td>
				</tr>
				<tr>
					<th>주문시간</th>
					<td>${ orderList.regDate }</td>
				</tr>
				<tr>
					<th>결제방법</th>
					<td>${ orderList.payment }</td>
				</tr>
				<tr>
					<th>결제금액</th>
					<td class = "commaN">${ orderList.final_price }원</td>
				</tr>
			</tbody>
		</table>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th class="col-xs-3" width="9%">메뉴</th>
						<th>주문옵션</th>
						<th>수량</th>
						<th>합계금액</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ orderList.detailOrderList }" var="oneMenu">
						<tr >
							<td>
								${ oneMenu.name} <br>
								${ oneMenu.size} <br>
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
							<div class="modal-footer" >
								<button  type="button" class="btn btn-white" data-dismiss="modal">Close</button>
							</div>
	</div>
</body>
</html>


