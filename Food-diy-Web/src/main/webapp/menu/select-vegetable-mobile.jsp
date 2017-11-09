<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_lettuce.jpg" />
				 <strong class = "name">양상추 Lettuce</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_tomato.jpg" /> 
				<strong class = "name">토마토 Tommatoes</strong>
		</figure>	
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_cucumber.jpg" /> 
				<strong class = "name">오이 Cucumbers</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_capsicum.jpg" /> 
				<strong class = "name">피망 Capsicum</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_onion.jpg" /> 
				<strong class = "name">양파 Red Onion</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_pickles.jpg" /> 
				<strong class = "name">피클 Pickles</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_olives.jpg" /> 
				<strong class = "name">올리브 Olives</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-vegetable-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/vegetable/mobile/vegetable_jalapenos.jpg" /> 
				<strong class = "name">할라피뇨 Jalapenos</strong>
		</figure>
	</li>
</ul>

<script>
	$(document).ready(function() {
		
		
/* 		$('li .product-vegetable-area').each(function () {
			 $(this).click(function(){
				 $('.fa-check-vegetable').hide();
				 $(this).siblings('.fa-check-vegetable').show();
				 
				 var name = "&nbsp;&nbsp;&nbsp;&nbsp;빵 선택 >> " + $(this).find('.name').text();
				 $('.vegetable-name').html(name);
			 });
		});
		 */
		
		$('li .product-vegetable-area').each(function () {
			
	 		$(this).click(function() {
	 			$(this).siblings('.fa-check-vegetable').toggle(); 
	 		});
 		
 		});
	});
</script>
