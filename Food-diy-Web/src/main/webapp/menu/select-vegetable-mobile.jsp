<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-vegetable"></i>
		<figure class="product-image-area product-topping-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_bacon.jpg" />
				 <strong class = "name">베이컨 Bacon</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_double_meat.jpg" /> 
				<strong class = "name">더블미트 Double Meat</strong>
		</figure>	
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_eggmayo.jpg" /> 
				<strong class = "name">에그마요 Aggmayo</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-topping"></i>
		<figure class="product-image-area product-topping-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/toppings/mobile/topping_avocado.jpg" /> 
				<strong class = "name">아보카도 Avocado</strong>
		</figure>
	</li>
</ul>

<script>
	$(document).ready(function() {
		
		$('.fa-check-topping').hide();
		
		$('li .product-topping-area').each(function () {
			 $(this).click(function(){
				 $(this).siblings('.fa-check').show();
				 
				 var name = $(this).find('.name').text();
				 $('.topping-name').append(name);
			 });
		});
	});
</script>
