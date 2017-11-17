<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="products-grid columns4" data-sort-id="portfolio">
	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal"
			data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-topping"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/toppings/web/topping_bacon.jpg" class="img-responsive" alt="" style="margin-top: 50px; margin-bottom: 50px">
						<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">베이컨</span>
							<span class="thumb-info-type">Bacon</span>
							<span class="thumb-info-type topping-price">1900원</span>
						</span>
				</span>
			</span>
		</div>
	</li>
	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal"
			data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-topping"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/toppings/web/topping_double_meat.jpg" class="img-responsive" alt="" style="margin-top: 50px; margin-bottom: 50px">
						<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">더블미트</span>
							<span class="thumb-info-type">Double Meat</span>
							<span class="thumb-info-type topping-price">1500원</span>
						</span>
				</span>
			</span>
		</div>
	</li>
	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal"
			data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-topping"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/toppings/web/topping_eggmayo.jpg" class="img-responsive" alt="" style="margin-top: 50px; margin-bottom: 50px">
						<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">에그마요</span>
							<span class="thumb-info-type">Eggmayo</span>
							<span class="thumb-info-type topping-price">1200원</span>
						</span>
				</span>
			</span>
		</div>
	</li>
	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal"
			data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-topping"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/toppings/web/topping_avocado.jpg" class="img-responsive" alt="" style="margin-top: 50px; margin-bottom: 50px">
						<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">아보카도</span>
							<span class="thumb-info-type">Avocado</span>
							<span class="thumb-info-type topping-price">1100원</span>
						</span>
				</span>
			</span>
		</div>
	</li>
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