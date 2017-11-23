<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="list list-icons list-primary list-borders">

	<c:forEach items="${ ingList }" var="ingList">
		<c:if test='${ ingList.type eq "C" }'>	
			<li><i class="fa fa-check fa-check-cheese"></i>
				<figure class="product-image-area product-cheese-area">
						<img style="width: 80px;" src="${ pageContext.request.contextPath }/resources/img/cheese/${ ingList.pic}" />
						<strong class = "name">${ ingList.name} ${ ingList.eng_name}</strong>
				</figure>
			</li>
		</c:if>
	</c:forEach>
</ul>


<script>
	$(document).ready(function() {
		
		$('.fa-check-cheese').hide();
		
		$('li .product-cheese-area').each(function () {
			 
			 $(this).click(function(){
				 
				 $('.fa-check-cheese').hide();
				 $(this).siblings('.fa-check').show();
				 var td = '<td width = "' + '"30%'+ '">치즈 선택 >> </td>';
					 td += '<td class="' + 'cheese-name"' + '">';
				 	td += '<strong class = "'+ 'name"> '+  $(this).find('.name').text() + '</strong>';
				 	td += '</td>';

				 $('.cheese-table tr').html(td);
			 });
		});
	});
</script>
