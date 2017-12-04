<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="products-grid columns4" data-sort-id="portfolio">
	
	<c:forEach items="${ ingList }" var="ingList">
		<c:if test='${ ingList.type eq "B" }'>
			<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
				<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
					<span class="thumb-info thumb-info-lighten product-area-bread"> 
						<span class="thumb-info-wrapper"> 
							<img src="${ pageContext.request.contextPath }/resources/img/bread/${ ingList.pic}" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
							<span class="thumb-info-title"> 
								 	<span class="thumb-info-inner name">${ ingList.name}</span>
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
		
			$('li .product-area-bread').each(function() {
				$(this).click(function() {
					$('li .product-area-bread').children().removeClass('selected');
					$(this).children().addClass('selected');
					$('.product-area-bread').css( {
						'border-color' : '#DDD',
						'border-width' : '1px'
 					});
					$(this).css({
						'border-color' : '#7aa93c',
						'border-width' : '3px'
					});
					
					var name = $(this).find('.name').text();
					
					
					var div = '<div class = "'  + 'bread-name">';
						div += name;
						div += "</div>";
					
					
					$('.order-table').find('.bread-info').html(div);
				});
			});
	
	});
</script>

