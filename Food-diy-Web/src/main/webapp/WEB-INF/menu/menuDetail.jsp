<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Fooddiy-Order</title>

<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Responsive HTML5 Template">
<meta name="author" content="okler.net">

<!-- Favicon -->
<link rel="shortcut icon" href="${ pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="${ pageContext.request.contextPath}/resources/img/apple-touch-icon.png">
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- Web Fonts  -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">
<!-- Vendor CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/animate/animate.min.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/simple-line-icons/css/simple-line-icons.min.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/assets/owl.theme.default.min.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.min.css">
<!-- Theme CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme-elements.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme-blog.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/theme-shop.css">
<!-- Current Page CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/settings.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/layers.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/css/navigation.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/circle-flip-slideshow/css/component.css">
<!-- Skin CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/skins/skin-shop-9.css">
<!-- Theme Custom CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
<!-- Theme Custom CSS -->
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<!-- Head Libs -->
<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>


<script>
   $(document).ready(function() {
	   //sticky 메뉴 설정
	   var windowWidth = $( window ).width();
	   if(windowWidth < 992 && windowWidth > 420){
		   $('#lnb').stick_in_parent({
	          offset_top : 120,
	          inner_scrolling : false
	       });
	   }
	   else if(windowWidth < 420){
		   $('#lnb').stick_in_parent({
	          offset_top : 72,
	          inner_scrolling : false
	       });
	   }	   
	   
	   
		// 사이드 메뉴 사이즈 숨김, 값 전달
		if(${ menuDetailVO.type == 'S' }||${ menuDetailVO.type == 'N' }||${ menuDetailVO.type == 'D' } ){
			$('.inch').css("display","none");
			$('#sand_price').val(${ menuDetailVO.price });
			$('#sand_size').val(null);
		}
		else if(${ menuDetailVO.type == 'M' }){
			$('#half').css("display","none");
			$('#half2').css("display","none");
			$('#sand_price').val(${ menuDetailVO.price });
			var sand_size = $("input[type=radio][name=size]:checked").val();
			$('#sand_size').val(sand_size);
		}
		else{
			$('.inch').css("display","");
		}	
		
		// 사이즈별 가격 표시
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
		
		// 사이드 주문 시 매장으로	
		$("#submit").submit(function(){
			// 장바구니가 비었을때
			if(${ cartStoreVO == null })
			{
				$('#submit').attr('action', '${ pageContext.request.contextPath }/store/findStore.do')
				return true;
			}
			// 사이드 선택 시
			else if(${ menuDetailVO.type == 'S' } || ${ menuDetailVO.type == 'N' } || ${ menuDetailVO.type == 'D' })
			{				
				$('#submit').attr('action', '${ pageContext.request.contextPath }/menu/cart.do')
				return true;
			}
			else
			{
				$('#submit').attr('action', '${ pageContext.request.contextPath }/menu/select_ingredients.do');
				return true;
			}
		});
		
		// review 카운트
		var val = $('.counter').last().text();
		if(val != "")
		   $('.count').text(val);
		else
		   $('.count').text('0');
		
		
		// 메뉴이름 공백제거
		var t1 = $('#menuname').text().replace(/ /gi, '');
		var t2 = t1.replace(/,/gi, '');
		var t3 = t2.replace(/\&/gi, '');
		$('#insta').attr("href", function(){
			return "http://www.instagram.com/explore/tags/" + t3;
		});
		
		
		// 아침식사 주문 시간
		var tt = new Date();
		var hour = tt.getHours();
		$('#bft').hide();
		if(${ menuDetailVO.type == 'M' }){
			if(hour < 8 || hour >= 11){
				$('#order').attr("disabled", "disabled");
				$('#bft span').css("color", "#CF1508");
				$('#bft').show();
			}
		}
   });   
  
   // sns 상세화면 모달창
   function modal(snsNo) {
	   $('div.modal').modal().removeData();
       var url = '${ pageContext.request.contextPath}/community/snsDetail.do?no='+snsNo;
       $('div.modal').modal({ remote : url });
   }   
   
	// 좋아요 클릭
   function like(no){
	   
		var btn = this;
		var no = no;
		
		$.ajax({
				url : "./like",
				type : "post",
				data : {"no" : no},
				success : function(responseData){
					var data = JSON.parse(responseData);
						alert("좋아요가 완료되었습니다.!");
						alert(data.like);
						
						var contents = '';
						contents +=  data.like;
						
						$('#'+data.no+'').text(data.like);
		    
			    } 
		});    
	};
   
   
   
   
   
</script>

</head>
<body>
   <div class="body">
      <header id="header"
         data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
         <jsp:include page="/resources/include/top-new.jsp" />
      </header>

      <!-- Mobile menu 부분 -->
      <jsp:include page="/resources/include/mobile-menu.jsp" />

      <div role="main" class="main">
         <section class="page-header">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <ul class="breadcrumb">
                        <li><a href="#">Menu</a></li>
                        <li class="active">All menu</li>
                     </ul>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <h1>전체메뉴</h1>
                  </div>
               </div>
            </div>
         </section>

         <div class="container">
         	<div class="row">               

               <!-- 모바일 크기에서 보이는 슬라이드 메뉴 -->
               <%-- <aside class="sidebar hidden-md hidden-lg" id="lnb">
                  <nav>
                     <ul>
                        <li class="active"><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do">전체메뉴</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#recommend">추천메뉴</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#premium">프리미엄</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#best">베스트</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#classic">클래식</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#breakfast">아침식사</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#salad">샐러드</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#addition">추가메뉴</a></li>
                        <li><a
                           href="${ pageContext.request.contextPath }/menu/menuAll.do#beverage">음료</a></li>
                     </ul>
                  </nav>
               </aside> --%>

               <div class="col-md-12">
               
               
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
								<h1 class="mb-none" >
									<strong id="menuname" style="margin-bottom: 20px; font-size: 40px">${ menuDetailVO.name }</strong>
								</h1>
								<div style="font-size: 20px;">${ menuDetailVO.mainmenu }</div>
								<div class="review_num" style="font-size: 15px;">
									<span class="count">0</span> reviews
								</div>
			
								<div title="Rated 5.00 out of 5" class="star-rating">
									<span style="width: 100%"><strong class="rating">5.0</strong>
										out of 5</span>
								</div>
			
								<p class="price" style="font-size: 30px;">
									<span class="amount commaN" id="price">${ menuDetailVO.price }원</span>
								</p>
			
								<p class="taller" style="font-size: 15px;">${ menuDetailVO.detail }</p>
								<p class="inch">
									<input type="radio" name="size" value="15cm" checked="checked"><span
										style="font-size: 25px; margin-left: 5px; margin-right: 20px;">15cm</span>
									<input type="radio" name="size" value="30cm" id="half"><span
										style="font-size: 25px; margin-left: 5px" id="half2">30cm</span>
								</p>
								<p id="bft">
									<span style="font-size: 20px;color: #00CF1508;"><strong>AM 08:00 부터 ~ AM 11:00 까지 주문 가능합니다.</strong></span>
								</p>					
								
								<form:form commandName="cartVO" method="POST" id="submit">
									<form:input path="id" type="hidden" value="${ loginVO.id }"/>
									<form:input path="name" type="hidden" value="${ menuDetailVO.name }"/>
									<form:input path="type" type="hidden" value="${ menuDetailVO.type }"/>
									<form:input path="price" type="hidden" id="sand_price" value="${ menuDetailVO.price }"/>
									<form:input path="size" type="hidden" id="sand_size" value="15cm"/>
									<form:input path="pic" type="hidden" id="sand_pic" value="${ pageContext.request.contextPath }/upload/menu/${ menuDetailVO.imgFileName }"/>
									<div style="text-align: center;margin-bottom: 20px;">
										<button type="submit" class="btn btn-primary btn-icon" id="order" style="width: 150px;font-size: 20px;">주문하기</button>
										<button type="button" class="btn btn-warning btn-icon" id="list" onclick="location.href='${ pageContext.request.contextPath }/menu/menuAll.do'"
										 style="margin-left: 30px;width: 150px;font-size: 20px;">목록보기</button>
									</div>
								</form:form>
								
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
								<strong>SNS</strong> Review &nbsp;&nbsp; 
								<a target="_blank" id="insta" href="http://www.instagram.com/explore/tags/${ menuDetailVO.name }"><i class="fa fa-instagram"></i><span>&nbsp;Instagram</span></a>
							</h4>
							<div class="row">
								<ul class="team-list sort-destination" data-sort-id="team">							
								
									<c:forEach items="${ hitList }" var="snsHit" begin="0" end="3" varStatus="status">
										<li class="col-md-3 col-sm-6 col-xs-12 isotope-item leadership">
											<span class="thumb-info thumb-info-hide-wrapper-bg mb-xlg">
												<a onclick="modal('${ snsHit.no }')">
													<span class="thumb-info-wrapper">
														<img src="../upload/SNS/${ snsHit.fileName }" class="img-responsive" alt="" style="width: 100%; height: 200px">
													</span>
												</a>
												<span class="thumb-info-caption">
													<span>
														<button type="button"  onclick="like('${ snsHit.no }')" class="mb-xs mt-xs mr-xs btn btn-borders btn-info"> 
														<i class="fa fa-thumbs-up"></i>
														</button>
														<i class="fa fa-heart" id="${ snsHit.no }" style="color: red">&nbsp;${ snsHit.like }</i>
													</span>
													<span class="thumb-info-caption-text">${ snsHit.title }</span>
												</span>
											</span>							
										</li>
										<p class="counter" style="display: none">${ status.count }</p>
									</c:forEach>
													
								</ul>
							</div>
						</div>
					</div>
					
				</div>
               
               
               
               
               
                  
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="container">

	<footer class="light visible-lg" id="footer">
		<jsp:include page="/resources/include/bottom.jsp"/>
	</footer>
	
	<footer class="light hidden-lg" id="footer">
		<jsp:include page="/resources/include/mobile-bottom.jsp"/>
	</footer>

   </div>


   <!-- 모달들 -->
   <div class="modal fade" tabindex="-1" role="dialog" id="myModal"
      aria-labelledby="largeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
         <div class="modal-content">
            <!-- 모달내용 -->
         </div>
      </div>
   </div>
   
   

   <!-- Vendor -->
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery-cookie/jquery-cookie.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/common/common.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery.validation/jquery.validation.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/isotope/jquery.isotope.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/vide/vide.min.js"></script>
   <!-- Theme Base, Components and Settings -->
   <script src="${ pageContext.request.contextPath}/resources/js/theme.js"></script>
   <!-- Current Page Vendor and Views -->
   <script src="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
   <script src="${ pageContext.request.contextPath}/resources/vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
   <!-- Current Page Vendor and Views -->
   <script src="${ pageContext.request.contextPath}/resources/js/views/view.contact.js"></script>
   <!-- Demo -->
   <script src="${ pageContext.request.contextPath}/resources/js/demos/demo-shop-9.js"></script>
   <!-- Theme Custom -->
   <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/sticky-kit.min.js"></script>
   <!-- Theme Initialization Files -->
   <script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
   <!-- Examples -->
   <script src="${ pageContext.request.contextPath}/resources/js/examples/examples.portfolio.js"></script>
</body>
</html>