<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="products-grid columns4" data-sort-id="portfolio">
	<c:forEach items="${ ingList }" var="ingList">
		<c:if test='${ ingList.type eq "T" }'>
			<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
				<div class="portfolio-item" data-toggle="modal"
					data-target="#largeModal">
					<span class="thumb-info thumb-info-lighten product-area-topping"> 
						<span class="thumb-info-wrapper"> 
							<img src="${ pageContext.request.contextPath }/resources/img/toppings/web/${ ingList.pic }" class="img-responsive" alt="" style="margin-top: 50px; margin-bottom: 50px">
								<span class="thumb-info-title"> 
								 	<span class="thumb-info-inner">${ ingList.name }</span>
									<span class="thumb-info-type">${ ingList.eng_name }</span>
									<span class="thumb-info-type topping-price commaN">${ ingList.price }</span>
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
		
		$('li .product-area-topping').each(function() {
			$(this).click(function() {
				
				if(!$(this).data('clickStatus')) {
					
					$(this).children().addClass('selected');
				
					$(this).css({
						'border-color' : '#7aa93c',
						'border-width' : '3px'
					});
					
					$(this).data('clickStatus', 1);
				}
				else {
					$(this).children().removeClass('selected');
					$(this).css({
						'border-color' : '#DDD',
						'border-width' : '1px'
					});
					
					$(this).data('clickStatus', 0);
				}
				
			});
		});
	});
</script>