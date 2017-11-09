<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_bacon.jpg" /></td>
						<td width="40%"><strong class = "name">베이컨 Bacon</strong></td>
						<td width="20%" style="text-align: right; color: red; font-size: 15px; font-weight: bold;">+900원</td>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_double_meat.jpg" /> </td>
						<td width="50%"><strong class = "name">더블미트 Double Meat</strong></td>
						<td width="20%" style="text-align: right; color: red; font-size: 15px; font-weight: bold;">+1500원</td>
					</tbody>
				</table>
				
				
		</figure>	
	</li>
	<li>
		<i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_eggmayo.jpg" /></td>
						<td width="40%"><strong class = "name">에그마요 Aggmayo</strong></td>
						<td width="20%" style="text-align: right; color: red; font-size: 15px; font-weight: bold;">+1200원</td>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_avocado.jpg" /></td>
						<td width="40%"><strong class = "name">아보카도 Avocado</strong></td>
						<td width="20%" style="text-align: right; color: red; font-size: 15px; font-weight: bold;">+1100원</td>
					</tbody>
				</table>
		</figure>
	</li>
</ul>

<script>
	$(document).ready(function() {
		
		$('.fa-check-topping').hide(); 
		
 		$('li .product-topping-area').each(function () {
			
	 		$(this).click(function() {
	 			$(this).siblings('.fa-check-topping').toggle(); 
	 		});
 		
 		});
 	});
</script>
