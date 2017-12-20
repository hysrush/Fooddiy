<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#div01 {
	width: 70px;
	text-align: center;
	border-width: 2px;
	border-style: solid;
}
</style>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<script>

$(document).ready(function(){
	$('.qty-holder').each(function() {
		var totalQty = 0;
		var totalPrice = 0;
		var finalPrice = 0;
		var oneProductPrice = 0;
		var no = 0;
		//감소
		$(this).children('.qty-dec-btn').click(function() {
			totalQty = $(this).siblings('.qty-input').val() * 1;
			if(totalQty > 1) {
				no = $(this).parents('td').siblings('.cartNo').text();
				totalPrice = $(this).parents('td').siblings('.price-total').children('.total-price').text();

				finalPrice = $('.final-price').text();
				finalQty = $('.final-qty').text() * 1;
				
				totalPrice = uncomma(totalPrice) * 1;
				finalPrice = uncomma(finalPrice) * 1;
				
				oneProductPrice = totalPrice / totalQty;
				
				totalPrice -= oneProductPrice;
				finalPrice -= oneProductPrice;
				
				totalQty -= 1
				finalQty -= 1;
				
				$(this).parents('td').siblings('.price-total').children('.total-price').text(comma(totalPrice) + "원");
				
				$('.final-price').text(comma(finalPrice) + "원");
				$('.final-qty').text(finalQty);
				 
				 
				 
				$(this).siblings('.qty-input').val(totalQty);
			}
		});
		
		//증가
		$(this).children('.qty-inc-btn').click(function() {
				no = $(this).parents('td').siblings('.cartNo').text();
			
				totalQty = $(this).siblings('.qty-input').val() * 1;
				totalPrice = $(this).parents('td').siblings('.price-total').children('.total-price').text();
			
				finalPrice = $('.final-price').text();
				finalQty = $('.final-qty').text() * 1;
				
				totalPrice = uncomma(totalPrice) * 1;
				finalPrice = uncomma(finalPrice) * 1;
				
				oneProductPrice = totalPrice / totalQty;
				
				totalPrice += oneProductPrice;
				finalPrice += oneProductPrice;
				
				totalQty += 1
				finalQty += 1;
				
				 
				$(this).siblings('.qty-input').val(totalQty);
				
		});
		
	});
	
	
	$("#cartgo").click(function(){
		
		
		
		
	});
	
	$("#sns").click(function(){
		// sns 등록폼으로 이동
		location.href="${pageContext.request.contextPath}/community/SNSBoard.jsp"; 
	});
	
	$("#order").click(function(){
		
		swal("주문이 완료되었습니다.");
	});
	
	$("#del").click(function(){
		
		var no = [];
		
		$("input[name='cart']:checked").each(function() {
			no.push($(this).val());
	    });
		
		// controller로 배열 넘길 때 세팅 바꿔 줌
		jQuery.ajaxSettings.traditional = true;
	
		$.ajax({
			url : "${pageContext.request.contextPath}/member/myMenuDel.do",
			type : "post",
			data : {
				noList : no
			},
			success : function(data){
				location.reload();
			}
		});
		
	});
	 
	 
/* 	 $("#del").click(function(){
		  var cartno = "";
		  var memberChk = document.getElementsByName("cartList");
		  var chked = false;
		  var indexid = false;
		  for(i=0; i < memberChk.length; i++){
		   if(memberChk[i].checked){
		    if(indexid){
		      cartno = cartno + '-';
		    }
		    cartno = cartno + memberChk[i].value;
		    indexid = true;
		   }
		  }
		  if(!indexid){
		   alert("삭제할 사용자를 체크해 주세요");
		   return;
		  }
		  document.myMenu.myMenuDel.value = cartno;       // 체크된 사용자 아이디를 '-'로 묶은 userid 를     document.userForm.delUserid 의 value로 저장 
		  
		  var agree=confirm("삭제 하시겠습니까?");
		     if (agree){
		   document.cartForm.execute.value = "myMenuDel";
		     document.cartForm.submit();
		     } 
		  });﻿
		  */
	
});

function menuList() {
location.href = "${pageContext.request.contextPath}/menu/menuAll.do";
}

</script>
</head>
<body>
<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">&times;</button>
		<h4 class="modal-title" id="largeModalLabel">MENU</h4>
	</div>

<div class="modal-body shop">
<div class="row">
	<div class="col-md-9">
                  <div id="slidemenu">
                     <ul class="nav nav-pills sort-source" data-sort-id="portfolio"
                        data-option-key="filter"
                        data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}"></ul>
                     <div class="row">
                        <div
                           class="sort-destination-loader sort-destination-loader-showing">
                           <ul class="portfolio-list sort-destination"   data-sort-id="portfolio">
                           <tbody class= "todayOrderList">
                           <c:choose>
                           <c:when test="${ not empty cartList }">
                              <c:forEach items="${ cartList }" var="cart">
								<tr>
                                    <td class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
                                    		<td class="cartNo" style="display: none;">${ cart.no }</td>
																<td class="id" style="display: none;">${ cart.id }</td>
																<td class="price" style="display: none;">${ cart.price }</td>
																
													
												 			<td class="convType orderNumber" width="100px;"> ${ cart.no } </td>
                                       <div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
                                       				<table> 
                                       					<tr>
                                       						<td><a onclick = "mymodal(${ cart.no })"> ${cart.name } </a></td>
		                                                	<td width="10%" nowrap> ${ cart.id } </td>	
															<td class = "commaN finalPrice">${ cart.price }원</td>											
													
														</tr>
			                                   		</table>
                                       </div>
                                    </td>
								</tr>
                              </c:forEach>
							</c:when>
							</c:choose>
							</tbody>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>

</div>
</div>


</body>
</html>