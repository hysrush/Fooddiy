<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="products-grid columns4" data-sort-id="portfolio">

 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-bread"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/bread/bread_honeyoats.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">허니오트</span>
							<span class="thumb-info-type">Honey Oat</span>
					</span>
				</span>
			</span>
		</div>
	</li>
 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-bread"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/bread/bread_sesame.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">하티이탈리안</span>
							<span class="thumb-info-type">Hearty Italian</span>
					</span>
				</span>
			</span>
		</div>
	</li>
 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-bread"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/bread/bread_wheat.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">위트</span>
							<span class="thumb-info-type">Wheat</span>
					</span>
				</span>
			</span>
		</div>
	</li>
 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-bread"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/bread/bread_white.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">화이트</span>
							<span class="thumb-info-type">White</span>
					</span>
				</span>
			</span>
		</div>
	</li>
 	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal" data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten product-area-bread"> 
				<span class="thumb-info-wrapper"> 
					<img src="${ pageContext.request.contextPath }/resources/img/bread/bread_flat.jpg" class="img-responsive" alt="" style="margin-top: 30px; margin-bottom: 50px"> 
					<span class="thumb-info-title"> 
						 	<span class="thumb-info-inner">플랫브레드</span>
							<span class="thumb-info-type">Flat Bread</span>
					</span>
				</span>
			</span>
		</div>
	</li>
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
				});
			});
	
	});
</script>

