<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title> | 내 정보 | </title>	

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
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/demos/demo-shop-9.css">

		<!-- Head Libs -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/modernizr/modernizr.min.js"></script>


		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#delete").click(function(){
			
			location.href="${pageContext.request.contextPath}/member/memberDel.do"; 
		});
		
		
	       if("${msg}"){
	             swal("${msg}");
	        }
	       
	       
	       $("#stamp").click(function(){
	    	   	$('div.stamp').modal().removeData();
				var url = '${ pageContext.request.contextPath}/member/myStamp.do?id=${loginVO.id}';
	   	    	$('div.stamp').modal({ remote : url });
	       });
	       
	       
		
	});

</script>
<style type="text/css">
#div01 {
	width: 70px;
	text-align: center;
	border-width: 2px;
	border-style: solid;
}
</style>
</head>
<body>
	<div class="body">
		<header id="header"
				data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
				<jsp:include page="/resources/include/top-new.jsp"/>
		</header>
		<!-- Mobile menu 부분 -->
			<jsp:include page="/resources/include/mobile-menu.jsp"/>
		<!-- ---------------------------------------------------------------------------------------------- -->
				<section class="page-header">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="${ pageContext.request.contextPath}/member/memberDetail.jsp">My Page</a></li>
									<li class="active">내 정보</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>내 정보</h1>
							</div>
						</div>
					</div>
				</section>
				
				<div class="container">
				

					<div class="row">
					<div style="width: 550px">
						<div style="margin-top: 2%" class="col-md-3 hidden-xs">
							<aside  class="sidebar">

								<h3 class="heading-primary">Categories</h3>
								<ul class="nav nav-list mb-xlg">
									<li class="active"><a href="#">내 정보</a></li>
									<li> <a href="${ pageContext.request.contextPath}/member/Latest-Order.do">최근 주문 내역</a></li>
									<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?">나만의 메뉴</a></li>
									<li><a href="${ pageContext.request.contextPath}/community/claim/claimList.do?id=${loginVO.id}">나의 문의사항</a></li>
								</ul>
								</aside>
								</div>
							</div>
		
		
		<div class=" container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
       <br>
      </div>
                
		<div class="col-md-3 col-lg-3 " align="center">
			<img src="../upload/${ loginVO.file }" class="img-responsive" alt="" style="float:left; margin-left: 10%; padding-right:10%; margin-top: 8%; height:300px; width: 90%;">
		</div>
		
        <div  style="margin-top: 2%" class="col-xs-12 col-sm-12 col-md-6 col-lg-6  toppad" >
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">${loginVO.id}님의 프로필 정보</h3>
            </div>
            <div class="panel-body">
              <div class="row">
 
                <div class=" col-md-12 col-lg-12 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                       <td><strong>  ID :</strong></td>
                        <td>${loginVO.id}</td>
                      </tr>                 
                      <tr>
                      <td><strong> 이 름:</strong></td>
                        <td>${loginVO.name}</td>
                      </tr>
                   
                         <tr>
                             <tr>
                      </tr>
                        <tr>
                       	<td><strong>생 일:</strong></td>
                        <td>${loginVO.birth}</td>
                      </tr>
                      <tr>
                        <td><strong>전화번호:</strong></td>
                        <td>${loginVO.phone}</td>
                           
                      </tr>
                      <tr>
                        <td><strong>E-mail :</strong></td>
                        <td><a href="mailto:${loginVO.email}">${loginVO.email}</a></td>
                      </tr>
                       <tr>
                        <td><strong>등 급 : </strong></td>
                        <td>${loginVO.grade}</td>
                           
                      </tr>
                     <%--   <tr>
                        <td><strong>포인트 : </strong></td>
                        <td>${userVO.point}</td>
                           
                      </tr>    --%>
                      <!-- <select id="point" parameterClass="map" resultClass="hashmap" remapResults="true">
									SELECT 마일리지 FROM 회원TB WHERE 회원아이디 = '~'
						System.out.print(map.get("마일리지"))
					</select> -->

                     
                    </tbody>
                  </table>
                  
                 <!--   <a href="#" class="btn btn-primary">My Sales Performance</a>
                  <a href="#" class="btn btn-primary">Team Sales Performance</a>-->
                  
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>

							<div style="margin-top: 1%;">
							<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-3"></div>
							<div class="col-md-12 hidden-xs" style="margin-left:9%; padding-left: 53%">
									<button class="btn btn-primary btn-icon" id="stamp">쿠폰북</button>
									<button class="btn btn-primary btn-icon" data-toggle="modal" data-target="#formModal">회원정보 수정</button>
									<button class="btn btn-primary btn-icon" data-toggle="modal" data-target="#frmSignIn">회원탈퇴</button>
									<!-- <button id="delete" type="button" class="btn  btn-info">회원탈퇴</button> -->
							</div>
							<div class="col-xs-12 visible-xs" style="padding-left: 15%">
									<button class="btn btn-primary btn-icon" id="stamp">쿠폰북</button>
									<button class="btn btn-primary btn-icon" data-toggle="modal" data-target="#formModal">회원정보 수정</button>
									<button class="btn btn-primary btn-icon" data-toggle="modal" data-target="#frmSignIn">회원탈퇴</button>
									<!-- <button id="delete" type="button" class="btn  btn-info">회원탈퇴</button> -->
							</div>
							</div>
									<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<h3 class="modal-title" id="formModalLabel"><strong>회원정보 수정</strong></h3>
												</div>
												<div class="modal-body">
												<h4>비밀번호를 입력하세요.</h4>
													<form action="${ pageContext.request.contextPath}/member/pwcheck.do" id="demo-form" method="post" class="form-horizontal mb-lg" novalidate="novalidate">
														<input type="hidden" name="id" value="${loginVO.id }">
														<div class="form-group mt-lg">
															<div class="col-sm-9">
																<input type="password" name="pw" class="form-control" placeholder="password" required/>
															</div>
														</div>
												<div class="modal-footer">
														<input type="submit" class="btn btn-primary" value="확인">
														<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
											</div>
													</form>
												</div>
												</div>
										</div>
									</div>
									
									
									<div class="modal fade" id="frmSignIn" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<h3 class="modal-title" id="formModalLabel"><strong>회원탈퇴</strong></h3>
												</div>
												<div class="modal-body">
												<h4>안전한 회원탈퇴를 위해 비밀번호를 입력하세요.</h4>
													<form action="${ pageContext.request.contextPath}/member/delCheck.do" id="frmSignIn" method="post" class="form-horizontal mb-lg" novalidate="novalidate">
														<input type="hidden" name="id" value="${loginVO.id }">
														<div class="form-group mt-lg">
															<div class="col-sm-9">
																<input type="password" name="pw" class="form-control" placeholder="password" required/>
															</div>
														</div>
													<div class="modal-footer">
														<input type="submit" class="btn btn-primary" value="확인">
														<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
											    	</div>
													</form>
												</div>
												</div>
										</div>
									</div>
									
										<!--쿠폰북 디테일  -->					
										<div class="modal fade stamp" id="InfoModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header modal-footer">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<h3 class="modal-title" id="formModalLabel"><strong>쿠폰북</strong></h3>
												</div>
												<div class="modal-body ">
												<table class="table table-bordered">
													<tr>
														<td>
														<img style="width: 100%" src="${ pageContext.request.contextPath }/resources/img/coupon4.jpg">
														</td>													
													</tr>
												</table>
												</div>
												<div class="modal-footer">
														<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
												</div>
											</div>
										</div>
									</div> 
							
						</div>
					</div>
				</div>
			</div>
		<!-- ---------------------------------------------------------------------------------------------- -->
	<div class="container">
		<footer class="light visible-lg" id="footer">
			<jsp:include page="/resources/include/bottom.jsp" />
		</footer>
		<footer class="light hidden-lg" id="footer">
			<jsp:include page="/resources/include/mobile-bottom.jsp" />
		</footer>
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
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

</body>




<!-- Vendor -->
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.appear/jquery.appear.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery-cookie/jquery-cookie.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/common/common.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.validation/jquery.validation.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/isotope/jquery.isotope.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/vendor/vide/vide.min.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="${ pageContext.request.contextPath }/resources/js/theme.js"></script>

<!-- Theme Custom -->
<script
	src="${ pageContext.request.contextPath }/resources/js/custom.js"></script>

<!-- Theme Initialization Files -->
<script
	src="${ pageContext.request.contextPath }/resources/js/theme.init.js"></script>

<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->

</body>
</html>