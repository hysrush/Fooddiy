<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="products-grid columns4" data-sort-id="portfolio">
	<c:forEach items="${ ingList }" var="ingList">
		<c:if test='${ ingList.type eq "S" }'>
			<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
				<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
					<span class="thumb-info thumb-info-lighten product-area-sauce"> 
						<span class="thumb-info-wrapper"> 
							<img src="${ pageContext.request.contextPath }/resources/img/sauce/web/${ ingList.pic }" 
								class="img-responsive" alt="" style="margin-top: 50px; margin-bottom: 50px"> 
							<span class="thumb-info-title"> 
								<span class="thumb-info-inner name">${ ingList.name }</span>
								<span class="thumb-info-type eng_name">${ ingList.eng_name }</span>
							</span> 
						</span>
					</span>
				</div>
			</li>
		</c:if>	
	</c:forEach>
</ul>


<script>
	$(document).ready(function() {
		
		$('li .product-area-sauce').each(function() {
			$(this).click(function() {
				var name = $(this).find('.name').text();
				var engName = $(this).find('.eng_name').text().split(' ');
				
				if(engName.length == 1) {
	 				engName = engName[0];
	 			}
				else{
					engName = engName[0] + engName[1];	
				}
				
				
				
				
				if(!$(this).data('clickStatus')) {
					
					
					if($('li .product-area-sauce .selected').length < 3){
						$(this).children().addClass('selected');
						
						$(this).css({
							'border-color' : '#7aa93c',
							'border-width' : '3px'
						});
						
						var div = '<div class = "'  + engName  +  '">';
						div += name
						div += "</div>";
					
						$('.order-table').find('.sauce-info').append(div);
						
						$(this).data('clickStatus', 1);
					}else {
						$(".sauce-modal").css('display', 'block');
						$(".sauce-modal").modal();
						$(this).data('clickStatus', 0);
					}
				}
				else {
					
					$(this).children().removeClass("selected");
					$(this).css({
						'border-color' : '#DDD',
						'border-width' : '1px'
					});
					$('.order-table').find('.sauce-info').children('.'+engName).remove();
					$(this).data('clickStatus', 0);
				}
				
			});
		});
	});

</script>

