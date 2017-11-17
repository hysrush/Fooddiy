<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<tr>
							<td width="30%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_bacon.jpg" /></td>
							<td width="50%"><strong class = "name">&nbsp;베이컨 </strong> <strong class = "id">Bacon</strong></td>
							<td width="20%" style="text-align: right; color: red; font-size: 15px; "><strong class = "price">+900원</strong></td>
						</tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<tr>
							<td width="30%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_double_meat.jpg" /> </td>
							<td width="50%"><strong class = "name">더블미트 </strong> <strong class = "id">Double meat</strong></td>
							<td width="20%" style="text-align: right; color: red; font-size: 15px;"><strong class = "price">+1500원</strong></td>
						</tr>
					</tbody>
				</table>			
		</figure>	
	</li>
	<li>
		<i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody class = "ddd">
						<tr>
							<td width="30%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_eggmayo.jpg" /></td>
							<td width="50%"><strong class = "name">&nbsp;에그마요 </strong><strong class = "id">Eggmayo</strong></td>
							<td width="20%" style="text-align: right; color: red; font-size: 15px;"><strong class = "price">+1200원</strong></td>
						</tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<table>
					<tbody>
						<tr>
							<td width="30%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_avocado.jpg" /></td>
							<td width="50%"><strong class = "name">&nbsp;아보카도 </strong><strong class = "id">Avocado</strong></td>
							<td width="20%" style="text-align: right; color: red; font-size: 15px;"><strong class = "price">+1100원</strong></td>
						<tr>
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
	 			var id = $(this).find('.id').text().split(' ');
	 		 	var price = $(this).find('.price').text();

	 		 	
	 		 	if(id.length = 1) {
	 				id = id[0];
	 			}
				else{
					id = id[0] + id[1];	
				}
	 		 	
	 			if(!$(this).data("clickStatus")){	
	 				$(this).siblings('.fa-check-topping').show();
					
	 									
					if($('.topping-table tr td').length == 1) {
						
						$('.topping-table tr').addClass(id);
						
						var td = '<td class="' + 'topping-name"' + '">';
							td += '<strong class = "'+ 'name">  ' + name + id + '</strong>';
							td += '</td>';
							td += '<td class = "'+ 'topping-price">' + price + '</td>';
							
						$('.topping-table tr').append(td);
		 			}else { 
		 				
		 				var row =  '<tr class = "'+ id + '">';
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

	 				
	 				var tr  = $('.topping-table tbody tr');
	 				
					if(tr.length == 1) {
						var td = $(tr[0]).children();
												
						for(var i = 1; i <= td.length; ++i){
							$(td[i]).remove();
						}
						
						$(tr[0]).removeClass(id);
					}
					else {
						if($(tr[0]).attr('class') == id) {
							var tr_child = $(tr[1]).children();
							$(tr_child[0]).text('토핑 선택>>');
							$(tr[0]).remove();
							
						}else {
							$('table.topping-table .'+id).remove();
						}
					}
	 				
					$(this).data("clickStatus", 0);
				}
	 		});
 			
 		});
 	});
</script>
