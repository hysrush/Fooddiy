<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_lettuce.jpg" />
								<strong class = "name">&nbsp;양상추 </strong><strong class = "id">Lettuce</strong>
							</td>
							<td width="10%">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_tomato.jpg" /> 
								<strong class = "name">&nbsp;토마토 </strong><strong class = "id">Tommatoes</strong>
							</td>
							<td width="10%" style="text-align: right;">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>	
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_cucumber.jpg" />
								<strong class = "name">&nbsp;오이 </strong><strong class = "id">Cucumbers</strong>
							</td>
							<td width="10%">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_capsicum.jpg" />
								<strong class = "name">&nbsp;피망 </strong><strong class = "id">Capsicum</strong>
							</td>
							<td width="10%">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_onion.jpg" />
								<strong class = "name">&nbsp;양파 </strong><strong class = "id">Red Onion</strong>
							</td>
							<td width="10%">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_pickles.jpg" />
								<strong class = "name">&nbsp;피클 </strong><strong class = "id">Pickles</strong>
							</td>
							
							<td width="10%">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_olives.jpg" />
								<strong class = "name">&nbsp;올리브 </strong><strong class = "id">Olives</strong>
							</td>
							<td width="10%">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<table>	
					<tbody>
						<tr>
							<td width="90%">
								<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_jalapenos.jpg" />
								<strong class = "name">&nbsp;할라피뇨 </strong><strong class = "id">Jalapenos</strong>
							</td>
							<td width="10%">
								<div class ="circle-button">+</div>
							</td>
						<tr>
					</tbody>
				</table>
		</figure>
	</li>
</ul>


<div class="modal vegetable-modal" id="noAnimModal" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true" style="display: none;">
		<div class="modal-dialog" style="top: 30%">
				<div class="modal-content">
						<div class="modal-header" style="background-color: #7aa93c; padding: 10px 20px 10px 10px">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color: white; font-size: 30px">×</button>
								<h4 class="modal-title" id="noAnimModalLabel" style="color: white;">안내</h4>							
						</div>
						<div class="modal-body" style="text-align: center; padding: 20px 20px 20px">
								<p>야채는 2개까지 추가할 수 있습니다.</p>
						</div>
						<div class="modal-footer" style="margin-top: 0px; padding: 10px 20px 20px;">
								<button type="button" class="btn btn-default" data-dismiss="modal" style="color: white; background-color: #7aa93c;">확인</button>
						</div>
				</div>
		</div>
</div>

<script>
	$(document).ready(function() {
		
		$('li .product-vegetable-area table tbody tr td:first-child').each(function () {
			
	 		$(this).click(function() {
	 			$(this).parents('.product-vegetable-area').siblings('.fa-check-vegetable').toggle(); 
	 		});
 		});
		 
		$('.circle-button').click(function() {
			
			var name = $(this).parent().prev().find('.name').text();
			var id = $(this).parent().prev().find('.id').text();
			
			if(!$(this).data("clickStatus")){
			
				if(!$('.vegetable-table tr').hasClass(id)) {
					if($('.vegetable-table tr td').length == 1) {
						
						$('.vegetable-table tr').addClass(id);
						$('.vegetable-table tr').addClass('plus');
	
						
						var td = '<td class="' + 'vegetable-name ' + '">';
							td += '<strong class = "'+ 'name">  ' + name + id + '</strong>';
							td += '</td>';
							td += '<td class = "'+ 'vegetable-plus-minus">' + '(+)' + '</td>';
							$('.vegetable-table tr').append(td);
		 			}else { 
		 				
		 				if($('.vegetable-table .plus').length < 2) {
			 				var row =  '<tr class = "'+ id + ' plus">';
			 					row += '<td width ="' + '30%"> </td>'
			 					row += '<td class="' + 'vegetable-name">';
								row += '<strong class = "'+ 'name">'+ name + id + '</strong>';
								row += '</td>';
								row += '<td class = "'+ 'vegetable-plus-minus">' + '(+)' + '</td>';
								row += '</tr>';
								
								$('.vegetable-table').append(row);
		 				}else {
		 					$(".vegetable-modal").modal();
		 				}
		 			}
					
					$(this).text('-');
				}
				
				
				
				$(this).data("clickStatus", 1);
			}else {
				
				
				var a = $('table.vegetable tr');
				
				alert($(a[0]).find('.name').text());
				
				$('table.vegetable-table .'+id).remove();
				
				
				$(this).text('+');
				$(this).data("clickStatus", 0);
			}	
		});
	});
</script>
