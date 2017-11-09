<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_ranch.jpg" />
				 <strong class = "name">랜치드레싱 Ranch</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_mayonnaise.jpg" /> 
				<strong class = "name">마요네즈 Mayonnaise</strong>
		</figure>	
	</li>
	<li>
		<i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_sweet_onion.jpg" /> 
				<strong class = "name">스위트 어니언 Seet Onion</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_honey_mustard.jpg" /> 
				<strong class = "name">허니 머스터드 Honey_mustard</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_sweet_chilli.jpg" /> 
				<strong class = "name">스위트 칠리 Sweet Chilli</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_bbq.jpg" /> 
				<strong class = "name">바베큐 BBQ</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_hot_chilli.jpg" /> 
				<strong class = "name">핫 칠리 Hot Chilli</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_chipotle_southwest.jpg" /> 
				<strong class = "name">사우스 웨스트 Chipotle</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_yellow_mustard.jpg" /> 
				<strong class = "name">머스타드 Yellow Mustard</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_horseradish.jpg" /> 
				<strong class = "name">디종 홀스 래디시 Horseradish</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_thousand_island.jpg" /> 
				<strong class = "name">사우전 아일랜드 Thousand Island</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_italian_dressing.jpg" /> 
				<strong class = "name">이탈리안 드레싱 Italian Dressing</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_marinara.jpg" /> 
				<strong class = "name">마리나라소스 Marinara</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_red_wine_vinegar.jpg" /> 
				<strong class = "name">레드와인식초 Red Wine Vinegar</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_salt.jpg" /> 
				<strong class = "name">소금 Salt</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_black_pepper.jpg" /> 
				<strong class = "name">후추 Black Pepper</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-sauce"></i>
		<figure class="product-image-area product-sauce-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/sauce/mobile/sauce_olive_oil.jpg" /> 
				<strong class = "name">올리브 오일 Olive Oil</strong>
		</figure>
	</li>
</ul>

<script>
	$(document).ready(function() {
		
		$('.fa-check-sauce').hide(); 
		
 		$('li .product-sauce-area').each(function () {
			
	 		$(this).click(function() {
	 			$(this).siblings('.fa-check-sauce').toggle(); 
	 		});
 		
 		});
 	});
</script>
