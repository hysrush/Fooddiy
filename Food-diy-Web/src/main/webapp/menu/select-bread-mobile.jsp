<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">
	<c:forEach items="${ ingList }" var="ingList">
		<c:if test='${ ingList.type eq "B" }'>
			<li><i class="fa fa-check fa-check-bread"></i>
				<figure class="product-image-area product-bread-area">
						<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/bread/${ ingList.pic}" />
						<strong class = "name">&nbsp;${ ingList.name} </strong> <strong class = "eng_name">${ ingList.eng_name}</strong>
				</figure>
			</li>
		</c:if>
	</c:forEach>
</ul>

<script>
	$(document).ready(function() {
		
		$('.fa-check-bread').hide();
		
		$('li .product-bread-area').each(function () {
			 $(this).click(function(){
				 $('.fa-check-bread').hide();
				 $(this).siblings('.fa-check').show();
				 var td = '<td width = "' + '"30%'+ '">&nbsp;&nbsp;&nbsp;&nbsp;빵 선택 >></td>';
				 	td += '<td class="' + 'bread-name"' + '">';
				 	td += '<strong class = "'+ 'name">'+  $(this).find('.name').text() + '</strong>';
				 	td += '<strong class = "'+ 'eng_name">'+  $(this).find('.eng_name').text() + '</strong>';
				 	td += '</td>';

				 $('.bread-table tr').html(td);
				 
			 });
		});
	});
</script>
