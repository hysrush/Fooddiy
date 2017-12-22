<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			<thead>
				<tr>
					<th  style="text-align: center" colspan="2"><h4>주문 정보</h4> </th>
				</tr>
			</thead>
			<tbody>
				<tr >
					<th width="15%">메뉴 사진</th>
					<td><img style="width: 100%" src="${ cartList.pic}"/></td>
			
			</tbody>
		</table>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th width="15%">메뉴</th>
						<th width="62%">주문옵션</th>
						<th>수량</th>
						<th>합계금액</th>
					</tr>
				</thead>
				<tbody>
						<tr >
							<td>
								${ cartList.name} <br>
								${ cartList.size} <br>
							</td>
							<td>
								${ cartList.bread}	<br>
								${ cartList.cheese}	<br>
								${ cartList.topping}	<br>
								${ cartList.vegetable}	<br>
								${ cartList.sauce}	<br>
								${ cartList.requirement}
							</td>
							<td>${ cartList.qty}</td>
							<td class = "commaN">${ cartList.total_price }원</td>
						</tr>
				</tbody>
			</table>
							<div class="modal-footer" >
								<button  type="button" class="btn btn-white" data-dismiss="modal">Close</button>
							</div>
	</div>
</body>
</html>


