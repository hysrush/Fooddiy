<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title> | 주문 상세 내역 | </title>

<link rel="stylesheet" href="https://wfolly.firebaseapp.com/node_modules/sweetalert/dist/sweetalert.css">
<style type="text/css">
	.convType > span {
		width: 60px;
	}
</style>

</head>

<body>



	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h4 class="modal-title">주문 상세</h4>
		<a> ${cart.pic }</a>
	</div>
	
	<div class="modal-body shop" style="max-height:500px;overflow: auto;">

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

</body>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script>
	$(document).ready(function(){ 
		//숫자표기
		for(var i = 0; i < $('.commaN').length; ++i) {
			$('.commaN').eq(i).text(comma($('.commaN').eq(i).text()));
		}
		
		
	});
	
</script>
</html>