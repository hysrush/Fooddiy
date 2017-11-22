<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">
	<c:forEach items="${ ingList }" var="ingList">
		<c:if test='${ ingList.type eq "S" }'>	
			<li><i class="fa fa-check fa-check-sauce"></i>
				<figure class="product-image-area product-sauce-area">
						 <table>
							<tbody>
								<tr>
									<td width="20%"><img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/${ ingList.pic}" /></td>
									<td width=""><strong class = "name">&nbsp;${ ingList.name} </strong> <strong class = "id">${ ingList.eng_name}</strong></td>
								</tr>
							</tbody>
						</table>
				</figure>
			</li>
		</c:if>
	</c:forEach>
</ul>


<script>
	$(document).ready(function() {
		
		$('.fa-check-sauce').hide();
		
 		$('li .product-sauce-area').each(function () {
			
	 		$(this).click(function() {
	 			
	 			var name = $(this).find('.name').text();
	 			var id = $(this).find('.id').text().split(' ');
	 			if(id.length == 1) {
	 				id = id[0];
	 			}
				else{
					id = id[0] + id[1];	
				}

	 		
				if(!$(this).data("clickStatus")){
					
					var flag = 0;
					var tr_cnt = $('.sauce-table tr').length;
					
					if(tr_cnt < 3) {
						$(this).siblings('.fa-check-sauce').show();
						$('.sauce-table tr').each(function() {
							
							
							if($(this).hasClass(id)){
								flag = 1;
							}
							
						});
						
						if(flag == 0){
							if($('.sauce-table tr td').length == 1) {
								
								$('.sauce-table tr').addClass(id);
								
								var td = '<td class="' + 'sauce-name ' + '">';
									td += '<strong class = "'+ 'name">  ' + name + id + '</strong>';
									td += '</td>';
									$('.sauce-table tr').append(td);
							}
							else {
								
					 			var row =  '<tr class = "'+ id + '">';
					 				row += '<td width ="' + '30%"></td>'
					 				row += '<td class="' + 'sauce-name">';
									row += '<strong class = "'+ 'name">'+ name + id + '</strong>';
									row += '</td>';
									row += '</tr>';
										
									$('.sauce-table').append(row);
							}
						}
						$(this).data("clickStatus", 1);
					}else {
						$(".sauce-modal").modal();
						$(this).data("clickStatus", 0);
						
					}
					
					
					
					
					
				}else {
					$(this).siblings('.fa-check-sauce').hide();
					
					var tr  = $('.sauce-table tbody tr');
					
					
					if(tr.length == 1) {
						var td = $(tr[0]).children();
												
						for(var i = 1; i <= td.length; ++i){
							$(td[i]).remove();
						}
						
						$(tr[0]).removeClass(id);
					}
					else {
						if($(tr[0]).attr('class').split(' ')[0] == id) {
							var tr_child = $(tr[1]).children();
							$(tr_child[0]).text('소스 선택 >>');
							$(tr[0]).remove();
							
						}else {
							$('table.sauce-table .'+id).remove();
						}
					}
					
					$(this).data("clickStatus", 0);
				}
	 		});
 			
 		});
 	});
</script>