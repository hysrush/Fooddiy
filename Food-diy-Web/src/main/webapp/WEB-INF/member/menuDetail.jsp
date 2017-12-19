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
	
	// 사이드 메뉴 사이즈 숨김, 값 전달
	if(${ menuDetailVO.type == 'S' }||${ menuDetailVO.type == 'N' }||${ menuDetailVO.type == 'D' } ){
		$('.inch').css("display","none");
		$('#sand_price').val(${ menuDetailVO.price });
		$('#sand_size').val(null);
	}
	else if(${ menuDetailVO.type == 'M' }){
		$('#half').css("display","none");
		$('#half2').css("display","none");
		$('#sand_price').val(${ menuDetailVO.price });
		var sand_size = $("input[type=radio][name=size]:checked").val();
		$('#sand_size').val(sand_size);
	}
	else{
		$('.inch').css("display","");
	}	
	
	// 사이즈별 가격 표시
	$('.inch').click(function(){
	   var sand_size = $("input[type=radio][name=size]:checked").val();
	   $('#sand_size').val(sand_size);
	   
	   if(sand_size == '30cm'){
		   if(${ menuDetailVO.type == 'R' }){
			   $("#price").html("8700원");
			   $('#sand_price').val(8700);
		   }
		   if(${ menuDetailVO.type == 'P' }){
			   $("#price").html("9800원");
			   $('#sand_price').val(9800);
		   }
		   if(${ menuDetailVO.type == 'B' }){
			   $("#price").html("9200원");
			   $('#sand_price').val(9200);
		   }
		   if(${ menuDetailVO.type == 'C' }){
			   $("#price").html("8200원");
			   $('#sand_price').val(8200);
		   }
	   }
	   else{
		   $("#price").html(${ menuDetailVO.price } + '원');
		   $('#sand_price').val(${ menuDetailVO.price });
	   }
	});
	
	// 사이드 주문 시 매장으로	
	$("#submit").submit(function(){
		// 장바구니가 비었을때
		if(${ cartStoreVO == null })
		{
			$('#submit').attr('action', '${ pageContext.request.contextPath }/store/findStore.do')
			return true;
		}
		// 사이드 선택 시
		else if(${ menuDetailVO.type == 'S' } || ${ menuDetailVO.type == 'N' } || ${ menuDetailVO.type == 'D' })
		{				
			$('#submit').attr('action', '${ pageContext.request.contextPath }/menu/cart.do')
			return true;
		}
		else
		{
			$('#submit').attr('action', '${ pageContext.request.contextPath }/menu/select_ingredients.do');
			return true;
		}
	});	
	
	
});

</script>
</head>
<body>


	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">&times;</button>
		<h4 class="modal-title" id="largeModalLabel">MENU</h4>
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
</html>


