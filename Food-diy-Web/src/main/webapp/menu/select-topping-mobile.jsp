<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_bacon.jpg" /></td>
						<td width="40%"><strong class = "name">베이컨 </strong> <strong class = "id">Bacon</strong></td>
						<td width="20%" style="text-align: right; color: red; font-size: 15px;"><strong class = "price">+900원</strong></td>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_double_meat.jpg" /> </td>
						<td width="50%"><strong class = "name">더블미트 </strong> <strong class = "id">Double meat</strong></td>
						<td width="20%" style="text-align: right; color: red; font-size: 15px;"><strong class = "price">+1500원</strong></td>
					</tbody>
				</table>			
		</figure>	
	</li>
	<li>
		<i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody class = "ddd">
						<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_eggmayo.jpg" /></td>
						<td width="40%"><strong class = "name">에그마요 Aggmayo</strong></td>
						<td width="20%" style="text-align: right; color: red; font-size: 15px;"><strong class = "price">+1200원</strong></td>
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
						<td width="20%" style="text-align: right; color: red; font-size: 15px;"><strong class = "price">+1100원</strong></td>
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
	 			
	 			var name = $(this).find('.name').text();
	 			var id = $(this).find('.id').text();
	 		 	var price = $(this).find('.price').text();

	 		  	
	 			if(!$(this).data("clickStatus")){	
	 				$(this).siblings('.fa-check-topping').show();
					
	 									
					if($('.topping-table tr td').length == 1) {
						var td = '<td class="' + 'topping-name" id = "'+ name + '">';
							td += '<strong class = "'+ 'name">'+ name + id + '</strong>';
							td += '</td>';
							td += '<td class = "'+ 'topping-price">' + price + '</td>';
							
						$('.topping-table tr').append(td);
		 			}else { 
		 				
		 				var row =  '<tr id = "'+ name + '">';
		 					row += '<td width ="' + '30%"> </td>'
		 					row += '<td class="' + 'topping-name">';
							row += '<strong class = "'+ 'name">'+ name + id + '</strong>';
							row += '</td>';
							row += '<td class = "'+ 'topping-price">' + price + '</td>';
							row += '</tr>';
							
							$('.topping-table').append(row);
		 			}
					
	 				$(this).data("clickStatus", 1);
				}else {
					
	 				$(this).siblings('.fa-check-topping').hide();
	 				
	 				$('td[id = "' + name + '"]').next().remove();
	 				$('td[id = "' + name + '"]').remove();
	 				
	 				$('tr[id = "' + name + '"]').remove();
	 				
					$(this).data("clickStatus", 0);
				}
	 		});
 			
 		});
 	});
</script>
