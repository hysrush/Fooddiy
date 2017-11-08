<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-cheese"></i>
		<figure class="product-image-area product-cheese-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/cheese/cheese_cheddar.jpg" />
				 <strong class = "name">체다 치즈 Cheddar</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-cheese"></i>
		<figure class="product-image-area product-cheese-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/cheese/cheese_mozzarella.jpg" /> 
				<strong class = "name">모짜렐라 치즈 Mozzarella</strong>
		</figure>	
	</li>
	<li><i class="fa fa-check fa-check-cheese"></i>
		<figure class="product-image-area product-cheese-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/cheese/cheese_natural_swiss.jpg" /> 
				<strong class = "name">스위스 치즈 Natural Swiss</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-cheese"></i>
		<figure class="product-image-area product-cheese-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/cheese/cheese_old_english.jpg"/>
				<strong class = "name">아메리칸 치즈 America</strong>
		</figure>
	</li>
</ul>


<script>
	$(document).ready(function() {
		
		$('.fa-check-cheese').hide();
		
		$('li .product-cheese-area').each(function () {
			 
			 $(this).click(function(){
				 
				 $('.fa-check-cheese').hide();
				 $(this).siblings('.fa-check').show();
			 });
		});
	});
</script>
