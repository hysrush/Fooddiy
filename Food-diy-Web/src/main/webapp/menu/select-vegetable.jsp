<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="products-grid columns4" data-sort-id="portfolio">
	<c:forEach items="${ ingList }" var="ingList">
		<c:if test='${ ingList.type eq "V" }'>
			<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
				<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
					<span class="thumb-info thumb-info-lighten product-area-vegetable"> <span class="thumb-info-wrapper"> <img src="${ pageContext.request.contextPath }/resources/img/vegetable/web/${ ingList.pic }" class="img-responsive img-vegetable" alt=""
							style="margin-top: 50px; margin-bottom: 50px"> <span class="thumb-info-title"> <span class="thumb-info-inner name">${ ingList.name }</span> <span class="thumb-info-type eng_name">${ ingList.eng_name }</span>
						</span>
					</span>

						<div class="row button-family" style="text-align: center;">
							<button type="button" class="btn mr-xs mb-sm less">적게</button>
							<button type="button" class="btn mr-xs mb-sm nomal">보통</button>
							<button type="button" class="btn mr-xs mb-sm more">많이</button>
						</div>
					</span>
				</div>
			</li>
		</c:if>
	</c:forEach>
</ul>


<script>
	$(document).ready(function() {
		
		$('li .product-area-vegetable').children().addClass('selected');
		$('li .product-area-vegetable').css({
			'border-color' : '#7aa93c',
			'border-width' : '3px'
		});
		
		$('li .product-area-vegetable').each(function() {
			
			var name = $(this).find('.name').text();
			var engName = $(this).find('.eng_name').text().split(' ');
			
			if(engName.length == 1) {
 				engName = engName[0];
 			}
			else{
				engName = engName[0] + engName[1];	
			}
			
			var vegetable = $(this).find('.thumb-info-wrapper');
			var less = $(this).find('.less');
			var nomal = $(this).find('.nomal');
			var more = $(this).find('.more') ;
			
			$(vegetable).click(function() {
				
				
				if(!$(this).data('clickStatus')){
					
					$(this).removeClass('selected');
					$(this).parent().css({
						'border-color' : '#DDD',
						'border-width' : '1px'
					});
					
					$(this).next().hide();
					$(less).css({
						'color' : '#7aa93c',
						'background-color' : 'white',
						'border-color' : '#7aa93c'
						
					});
					$(nomal).css({
						'color' : 'white',
						'background-color' : '#7aa93c'
					});
					$(more).css({
						'color' : '#7aa93c',
						'background-color' : 'white',
						'border-color' : '#7aa93c'
					});
					
					if($('.order-table').find('.vegetable-info').children().hasClass(engName)) {
						$('.order-table').find('.vegetable-info').children('.'+engName).text(name + " " + "(빼기)");
						
					}else {
						var div = '<div class = "'  + engName  +  '">';
						div += name + " " + "(빼기)";
						div += "</div>";
						
						$('.order-table').find('.vegetable-info').append(div);
					}

					
					
					$(this).data('clickStatus', 1);
				}
				else {
					$(this).addClass('selected');
					$(this).parent().css({
						'border-color' : '#7aa93c',
						'border-width' : '3px'
					});
					$(this).next().show();
					$('.order-table').find('.vegetable-info').children('.'+engName).remove();
					$(this).data('clickStatus', 0);
				}
			});
			
			$(less).click(function() {
				$(this).css({
					'color' : 'white',
					'background-color' : '#3871a6'
				});
				$(this).next().css({
					'color' : '#7aa93c',
					'background-color' : 'white',
					'border-color' : '#7aa93c'
				});
				$(this).next().next().css({
					'color' : '#7aa93c',
					'background-color' : 'white',
					'border-color' : '#7aa93c'
				});

					
					if($('.order-table').find('.vegetable-info').children().hasClass(engName)) {
						$('.order-table').find('.vegetable-info').children('.'+engName).text(name + " " + "(적게)");
						
					}else {
						var div = '<div class = "'  + engName  +  '">';
						div += name + " " + "(적게)";
						div += "</div>";
						
						$('.order-table').find('.vegetable-info').append(div);
					}
			});
			
			
			$(more).click(function() {
				$(this).css({
					'color' : 'white',
					'background-color' : '#FFBB00'
				});
				$(this).prev().css({
					'color' : '#7aa93c',
					'background-color' : 'white',
					'border-color' : '#7aa93c'
				});
				$(this).prev().prev().css({
					'color' : '#7aa93c',
					'background-color' : 'white',
					'border-color' : '#7aa93c'
				});
				
				if($('.order-table').find('.vegetable-info').children().hasClass(engName)) {
					$('.order-table').find('.vegetable-info').children('.'+engName).text(name + " " + "(많이)");
					
				}else {
					var div = '<div class = "'  + engName  +  '">';
					div += name + " " + "(많이)";
					div += "</div>";
					
					$('.order-table').find('.vegetable-info').append(div);
				}
			});
			
			$(nomal).click(function() {
				$(this).css({
					'color' : 'white',
					'background-color' : '#7aa93c'
				});
				$(this).prev().css({
					'color' : '#7aa93c',
					'background-color' : 'white',
					'border-color' : '#7aa93c'
				});
				$(this).next().css({
					'color' : '#7aa93c',
					'background-color' : 'white',
					'border-color' : '#7aa93c'
				});
				
				$('.order-table').find('.vegetable-info').children('.'+engName).remove();
			});
			
		});
	});

</script>