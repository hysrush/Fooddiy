<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<li><i class="fa fa-check fa-check-bread"></i>
		<figure class="product-image-area product-bread-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/bread/bread_wheat.jpg" />
				 <strong class = "name">위트 Wheat</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-bread"></i>
		<figure class="product-image-area product-bread-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/bread/bread_honeyoats.jpg" /> 
				<strong class = "name">허니오트 Honey Oat</strong>
		</figure>	
	</li>
	<li><i class="fa fa-check fa-check-bread"></i>
		<figure class="product-image-area product-bread-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/bread/bread_white.jpg" /> 
				<strong class = "name">화이트 White</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-bread"></i>
		<figure class="product-image-area product-bread-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/bread/bread_sesame.jpg" /> 
				<strong class = "name">하티이탈리안 Hearty Italian</strong>
		</figure>
	</li>
	<li><i class="fa fa-check fa-check-bread"></i>
		<figure class="product-image-area product-bread-area">
				<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/bread/bread_flat.jpg" /> 
				<strong class = "name">플랫브래드 Flat Bread</strong>
		</figure>
	</li>
</ul>

<script>
	$(document).ready(function() {
		
		$('.fa-check-bread').hide();
		
		$('li .product-bread-area').each(function () {
			 $(this).click(function(){
				 $('.fa-check-bread').hide();
				 $(this).siblings('.fa-check').show();
				 
				 var name = "&nbsp;&nbsp;&nbsp;&nbsp;빵 선택 >> ";
				 	name += '<strong class = "'+ 'name">'+  $(this).find('.name').text() + '</strong>';

				 $('.bread-name').html(name);
				 
			 });
		});
	});
</script>
