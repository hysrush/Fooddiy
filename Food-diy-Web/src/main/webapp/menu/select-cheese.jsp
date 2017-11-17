<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="portfolio-list sort-destination" data-sort-id="portfolio">

 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-cheese"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/cheese/web/cheese_cheddar.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">체다 치즈</span>
							<span class="thumb-info-type">Cheddar</span>
					</span>
				</span>
			</span>
		</div>
	</li>
 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-cheese"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/cheese/web/cheese_mozzarella.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">모짜렐라 치즈</span>
							<span class="thumb-info-type">Mozzarella</span>
					</span>
				</span>
			</span>
		</div>
	</li>
 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-cheese"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/cheese/web/cheese_natural_swiss.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">스위스 치즈</span>
							<span class="thumb-info-type">Natural Swiss</span>
					</span>
				</span>
			</span>
		</div>
	</li>
 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-cheese"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/cheese/web/cheese_old_english.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">아메리칸 치즈</span>
							<span class="thumb-info-type">America</span>
					</span>
				</span>
			</span>
		</div>
	</li>

</ul>

<script>
	$(document).ready(function() {
		
			$('li .product-area-cheese').each(function() {
				$(this).click(function() {
					$('li .product-area-cheese').children().removeClass('selected');
					$(this).children().addClass('selected');
					$('.product-area-cheese').css({
						'border-color' : '#DDD',
						'border-width' : '1px'
					});
					$(this).css({
						'border-color' : '#7aa93c',
						'border-width' : '3px'
					});
				});
			})
	
	});
</script>


