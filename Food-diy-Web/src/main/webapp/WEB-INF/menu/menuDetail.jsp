<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	
	if(${ menuDetailVO.type == 'M' }||${ menuDetailVO.type == 'S' }||${ menuDetailVO.type == 'N' }||${ menuDetailVO.type == 'D' } ){
		$('.inch').css("display","none");
		$('#sand_price').val(${ menuDetailVO.price });
		$('#sand_size').val(null);
	}
	else{
		$('.inch').css("display","");
	}	
	
	$('.inch').click(function(){
	   var sand_size = $("input[type=radio][name=size]:checked").val();
	   $('#sand_size').val(sand_size);
	   
	   if(sand_size == '30cm'){
		   if(${ menuDetailVO.type == 'R' }){
			   $("#price").html("8700원");
			   $('#sand_price').val(8700);
		   }
		   if(${ menuDetailVO.type == 'P' }){
			   $("#price").html("9800원");
			   $('#sand_price').val(9800);
		   }
		   if(${ menuDetailVO.type == 'B' }){
			   $("#price").html("9200원");
			   $('#sand_price').val(9200);
		   }
		   if(${ menuDetailVO.type == 'C' }){
			   $("#price").html("8200원");
			   $('#sand_price').val(8200);
		   }
	   }
	   else{
		   $("#price").html(${ menuDetailVO.price } + '원');
		   $('#sand_price').val(${ menuDetailVO.price });
	   }
	});
	
});

</script>
</head>
<body>


	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">&times;</button>
		<h4 class="modal-title" id="largeModalLabel">MENU</h4>
	</div>

	<div class="modal-body shop">

		<!-- 모달 속 상세내용 -->
		<div class="row">
			<div class="col-md-12"></div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div>
					<div class="thumbnail"
						style="margin-top: 50px; margin-bottom: 50px">
						<img alt="" class="img-responsive img-rounded"
							src="${ pageContext.request.contextPath }/upload/menu/${ menuDetailVO.imgFileName }">
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="summary entry-summary">
					<h1 class="mb-none">
						<strong>${ menuDetailVO.name }</strong>
					</h1>
					<div>${ menuDetailVO.mainmenu }</div>
					<div class="review_num">
						<span class="count" itemprop="ratingCount">4</span> reviews
					</div>

					<div title="Rated 5.00 out of 5" class="star-rating">
						<span style="width: 100%"><strong class="rating">4.50</strong>
							out of 5</span>
					</div>

					<p class="price">
						<span class="amount" id="price">${ menuDetailVO.price }원</span>
					</p>

					<p class="taller">${ menuDetailVO.detail }</p>
					<p class="inch">
						<input type="radio" name="size" value="15cm" checked="checked"><span
							style="font-size: 18px; margin-left: 5px; margin-right: 20px">15cm</span>
						<input type="radio" name="size" value="30cm"><span
							style="font-size: 18px; margin-left: 5px">30cm</span>
					</p>


					<c:choose>
						<c:when test="${ storeVO == null }">	
							<form
								action="${ pageContext.request.contextPath }/store/findStore.do"
								enctype="multipart/form-data" method="post" class="cart"
								style="margin-bottom: 10px">
								<!-- submit하면 hidden으로 값 넘겨준다 -->
								<input type="hidden" name="name" value="${ menuDetailVO.name }">
								<input type="hidden" name="price" id="sand_price" value="${ menuDetailVO.price }">
								<input type="hidden" name="size" id="sand_size" value="15cm">
								<input type="hidden" name="pic" id="sand_pic" value="${ pageContext.request.contextPath }/upload/menu/${ menuDetailVO.imgFileName }">
								<button type="submit" href="#" class="btn btn-primary btn-icon">주문하기</button>
							</form>
						</c:when>
						<c:otherwise>
							<form
								action="${ pageContext.request.contextPath }/menu/select_ingredients.do"
								enctype="multipart/form-data" method="post" class="cart"
								style="margin-bottom: 10px">
								<input type="hidden" name="name" value="${ menuDetailVO.name }">
								<input type="hidden" name="price" id="sand_price" value="${ menuDetailVO.price }">
								<input type="hidden" name="size" id="sand_size" value="15cm">
								<input type="hidden" name="pic" id="sand_pic" value="${ pageContext.request.contextPath }/upload/menu/${ menuDetailVO.imgFileName }">
								<button type="submit" href="#" class="btn btn-primary btn-icon">주문하기</button>
							</form>
						</c:otherwise>
					</c:choose>	
						<!-- submit하면 hidden으로 값 넘겨준다 -->

					<div class="product_meta">
						<span class="posted_in">알르레기 유발성분 : ${ menuDetailVO.allergy }
						</span>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="tabs tabs-product">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#productInfo" data-toggle="tab">영양정보</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="productInfo">
							<table class="table table-striped mt-xl">
								<tbody>
									<tr>
										<th>Serving Size(g)</th>
										<td>${ menuDetailVO.serviceSize }</td>
									</tr>
									<tr>
										<th>칼로리</th>
										<td>${ menuDetailVO.calorie }</td>
									</tr>
									<tr>
										<th>단백질(g)</th>
										<td>${ menuDetailVO.protein }</td>
									</tr>
									<tr>
										<th>나트륨(mg)</th>
										<td>${ menuDetailVO.natrium }</td>
									</tr>
									<tr>
										<th>당류(g)</th>
										<td>${ menuDetailVO.sugar }</td>
									</tr>
									<tr>
										<th>포화지방(g)</th>
										<td>${ menuDetailVO.fat }</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- SNS -->
		<div class="row">
			<div class="col-md-12">
				<hr class="tall">
				<h4 class="mb-md text-uppercase">
					<strong>SNS</strong> Review
				</h4>
				<div class="row">
					<ul class="team-list sort-destination" data-sort-id="team">
						<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
							<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
								<span class="thumb-info-wrapper"> <a
									href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
										<img
										src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
										class="img-responsive" alt="">
								</a>
							</span> <span class="thumb-info-caption"> <span
									class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
									class="thumb-info-social-icons"> <a target="_blank"
										href="http://www.facebook.com"><i class="fa fa-facebook"></i><span>Facebook</span></a>
										<a target="_blank" href="http://www.twitter.com"><i
											class="fa fa-twitter"></i><span>Twitter</span></a> <a
										target="_blank" href="http://www.instagram.com"><i
											class="fa fa-instagram"></i><span>Instagram</span></a>
								</span>
							</span>
						</span>
						</li>
						<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
							<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
								<span class="thumb-info-wrapper"> <a
									href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
										<img
										src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
										class="img-responsive" alt="">
								</a>
							</span> <span class="thumb-info-caption"> <span
									class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
									class="thumb-info-social-icons"> <a target="_blank"
										href="http://www.facebook.com"><i class="fa fa-facebook"></i><span>Facebook</span></a>
										<a target="_blank" href="http://www.twitter.com"><i
											class="fa fa-twitter"></i><span>Twitter</span></a> <a
										target="_blank" href="http://www.instagram.com"><i
											class="fa fa-instagram"></i><span>Instagram</span></a>
								</span>
							</span>
						</span>
						</li>
						<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
							<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
								<span class="thumb-info-wrapper"> <a
									href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
										<img
										src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
										class="img-responsive" alt="">
								</a>
							</span> <span class="thumb-info-caption"> <span
									class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
									class="thumb-info-social-icons"> <a target="_blank"
										href="http://www.facebook.com"><i class="fa fa-facebook"></i><span>Facebook</span></a>
										<a target="_blank" href="http://www.twitter.com"><i
											class="fa fa-twitter"></i><span>Twitter</span></a> <a
										target="_blank" href="http://www.instagram.com"><i
											class="fa fa-instagram"></i><span>Instagram</span></a>
								</span>
							</span>
						</span>
						</li>
						<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
							<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
								<span class="thumb-info-wrapper"> <a
									href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
										<img
										src="${ pageContext.request.contextPath }/resources/img/sns/review01.jpg"
										class="img-responsive" alt="">
								</a>
							</span> <span class="thumb-info-caption"> <span
									class="thumb-info-caption-text">내 입맛대로 골라먹었어염 :)</span> <span
									class="thumb-info-social-icons"> <a target="_blank"
										href="http://www.facebook.com"><i class="fa fa-facebook"></i><span>Facebook</span></a>
										<a target="_blank" href="http://www.twitter.com"><i
											class="fa fa-twitter"></i><span>Twitter</span></a> <a
										target="_blank" href="http://www.instagram.com"><i
											class="fa fa-instagram"></i><span>Instagram</span></a>
								</span>
							</span>
						</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


</body>
</html>


