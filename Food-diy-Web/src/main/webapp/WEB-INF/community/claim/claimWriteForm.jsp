<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>

		<title> | 1:1 문의 | </title>	
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	


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
		
		<!-- 데이트피커 css -->
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/vendor/bootstrap-datepicker/bootstrap-datepicker3.css">

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
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom2.css">

		<!-- Latest compiled and minified CSS -->
		
		<!-- Optional theme -->

		<!-- sweetalert js & css -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script> 
		<link rel="stylesheet" href="https://wfolly.firebaseapp.com/node_modules/sweetalert/dist/sweetalert.css">
		
		<!-- js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>

<style type="text/css">
	.mail_input, .mail_sel, .phone_input, .phone_sel {
		width: 30%;
		float: left;
	}
	#noticeForm > tbody > tr > td:FIRST-CHILD {
		width: 15%;
		text-align: center;
		font-weight: bold;
		color: black;
	}
	#noticeForm th {
		background-color: #7aa93c;
		color: white;
		font-weight: bold;
	}
	#storeName {
		background-color: white;
	}
	.errorMsg {
		font-size: 6px;
		color: red;
	}
	@media ( max-width : 560px) {
		.phone_sel, .phone_input, .mail_input, .mail_sel  {
			width: 100%;
		}
	}
</style>
</head>
<body>
	<div class="body" style="min-width: 360px;">
		<header id="header"
				data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 53, 'stickySetTop': '-53px', 'stickyChangeLogo': false}">
				<jsp:include page="/resources/include/top-new.jsp"/>
		</header>
		
		<!-- Mobile menu 부분 -->
			<jsp:include page="/resources/include/mobile-menu.jsp"/>
			
		<div role="main" class="main">
			<section class="page-header">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ul class="breadcrumb">
								<li><a href="#">커뮤니티</a></li>
								<li class="active">1:1 문의</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h1> 1:1 문의 </h1>
						</div>
					</div>
				</div>
			</section>
		
			<div class="container">
				<div class="row">
					<!-- 스티키 사이드바 -->
					<div class="col-md-2 hidden-xs hidden-sm">
						<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">
							<h4 class="heading-primary"><strong>커뮤니티 </strong></h4>

							<ul class="nav nav-list mb-xlg sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
									<li><a href="${ pageContext.request.contextPath }/community/qna/qna.do">자주묻는 질문</a></li>
									<li><a href="${ pageContext.request.contextPath }/community/subway/notice.do">Subway 소식</a>
										<ul>
											<li><a href="${ pageContext.request.contextPath }/community/subway/notice.do">공지사항</a></li>
											<li><a href="${ pageContext.request.contextPath }/community/subway/news.do">보도자료</a></li>
										</ul>
									</li>
									<li class="active"><a href="#">1:1 문의</a></li>
									<li><a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">SNS게시판</a></li>
							</ul>
						</aside>
					</div>
					<!-- START! -->
					<div class="col-md-10">
						<section class="section section-default">
							<div class="container">
								<div class="row">
									<div class="col-md-10">
										<h4 class="mb-none">귀한 말씀 들려 주십시오. 작은 소리도 듣겠습니다.</h4><br>
										<p class="mb-none">
											Subway에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>
											만족스러운 서비스였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다. 보다 나은 서비스로 보답하겠습니다.<br>
											[ 1:1 문의 운영시간 ] 월~금 09:00~17:00 (토/일요일, 공휴일 휴무) / 접수하신 글은 3개월만 보관됩니다.
										</p>
									</div>
								</div>
							</div>
						</section>
						<div class="tabs tabs-bottom tabs-center tabs-simple">
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#tabsNavigationSimple1" data-toggle="tab">1:1 문의하기</a>
								</li>
								<li>
									<a href="${ pageContext.request.contextPath}/community/claim/claimList.do?id=${ loginVO.id }">나의 문의내역</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tabsNavigationSimple1">
									<div class="center">
										<br>
										<div class="form-group" align="left">
											<!-- 1:1문의 작성폼 시작  -->
											<form:form commandName="claimVO" method="POST" name="noticeForm" id="noticeForm" enctype="multipart/form-data" >
												<table class="table table-bordered">
													<tr>
														<th>
															<form:label for="type" path="type" cssErrorClass="error">분야*</form:label>
														</th>
														<td>
															 <form:select path="type" class="form-control" id="type" name="type">
															 	<option value="" >문의유형</option>
															 	<form:options items="${typeCode}"/>
															 </form:select>
														</td>
													</tr>
													<tr>
														<th>
															<label for="email">답변 메일*</label>
														</th>
														<td>
															<form:input path="emailID" type="text" class="mail_input form-control" 
																	id="emailID" name="emailID" value="${ emailId }"/>
															<span style="float: left;">&nbsp;&nbsp;<i class="fa fa-at"></i>&nbsp;&nbsp;</span>
															<input type="text" class="mail_input form-control" 
																	id="inputDomain" name="inputDomain" value="${ emailDomain }" readonly="readonly"/>
															<span style="float: left;">&nbsp;&nbsp;</span>
															<form:select path="emailDomain" class="mail_sel form-control" id="emailDomain" name="emailDomain">
																<option value="${ emailDomain }">선택하세요</option>
																<form:options items="${domainCode}"/>
																<option value="">직접입력</option>
															</form:select>
														</td>
													</tr>
													<tr>
														<th>
															<label for="phone">연락처</label>
														</th>
														<td>
															<form:select path="phone1" class="phone_sel form-control" id="phone1" name="phone1">
																<form:option value="010">010</form:option>
																<form:option value="011">011</form:option>
																<form:option value="016">016</form:option>
																<form:option value="017">017</form:option>
																<form:option value="018">018</form:option>
																<form:option value="019">019</form:option>
															</form:select>
															<span style="float: left;">&nbsp;&nbsp;-&nbsp;&nbsp;</span>
															<!-- placeholder="중간번호" -->
															<form:input path="phone2" type="text" class="phone_input form-control" value="${ middleNum }"
																		id="phone2" name="phone2" maxlength="4" ref="num"/>
															<span style="float: left;">&nbsp;&nbsp;-&nbsp;&nbsp;</span>
															<form:input path="phone3" type="text" class="phone_input form-control" value="${ lastNum }"
																		id="phone3" name="phone3" maxlength="4" ref="num"/>
														</td>
													</tr>
													<tr>
														<th>
															<label>장소*</label>
														</th>
														<td>
															<div style="float: left;">
																<input type="radio" name="radioVisit" class="radioVisit" value="Y" checked="checked" id="visit">매장 방문
																<input type="radio" name="radioVisit" class="radioVisit" value="N" >매장 방문 외
															</div>
															<br><br>
															<div class="col-md-12" style="float: left;">
																<div class="visit col-md-6" style="float: left;">
																	<label for="visitStore" >방문매장&nbsp;&nbsp;</label>
																	<div class="input-group date col-md-12" data-toggle="modal" data-target="#formModal">
																		<input type="text" class="form-control" readonly="readonly" placeholder="방문매장" name="storeName" id="storeName"/>
																		<span class="input-group-addon"><i class="fa fa-home"></i></span>
																	</div>
																	<!-- 매장찾기 모달창 -->
																	<jsp:include page="/resources/include/claim/visitStore-Modal.jsp"></jsp:include>
																</div>
																<div class="visit col-md-6" style="float: left;">
																	<label for="visitDate" >방문일&nbsp;&nbsp;</label>
																	<div class="input-group date col-md-12" >
																		<form:input path="visitDate" type="text" class="form-control" readonly="readonly" placeholder="방문일" name="visitDate" id="visitDate"/>
																		<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
																	</div>
																</div>
															</div>
       													</td>
													</tr>
													<tr>
														<th>
															<label for="title">제목*</label>
														</th>
														<td>
															<form:input path="title" type="text" class="form-control" id="title" name="title" placeholder="제목"/>
															<form:errors path="title" class="form-control" id="title" cssClass="errorMsg"></form:errors>
														</td>
													</tr>
													<tr>
														<th>
															<label for="content">내용*</label>
														</th>
														<td>
															<form:textarea path="content" class="form-control" rows="5" id="content" name="content" placeholder="내용"/>
															<form:errors path="content" class="form-control"></form:errors>
														</td>
													</tr>
													<tr>
														<th>
															<label for="claimFile">파일첨부</label>
														</th>
														<td>
															<div class="file_BasicSection">
																<div class="fileDiv col-md-12" id="fileDiv1" >
																	<form:input path="claimFile" type="file" id="claimFile" name="claimFile1" placeholder="파일첨부" 
																				class="file_input form-control" style="float: left; width: 70%;" />&nbsp;&nbsp;															
																	<button type="button" class="btn btn-success mr-xs mb-sm" id="btnAddFile" ><i class="fa fa-plus"></i></button>
																</div>
															</div>
															<div id="file_AddSection"></div>
															<p class="mb-none" style="padding: 10px;">
																파일첨부는 아래의 파일만 등록이 가능하며 <strong>최대 5개</strong>(1개당 최대2MB), 총 10MB까지 등록이 가능합니다.<br>
																(등록 가능 확장자 : jpg, jpeg, png, gif, zip, doc, docx, ppt, pptx, xls, xlsx, hwp)
															</p>
														</td>
													</tr>
												</table>
												<form:hidden path="writer" value="${ loginVO.id }"/>
												<!-- 정보활용 동의 -->
												<section class="agree section section-default" style="height: 100px; padding-top: 20px;">
													<div class="row ">
														<div class="col-md-12">
															<p class="mb-none" style="padding: 10px;">
																고객이 동의한 개인정보취급방침에 따라 홈페이지 가입 시에 등록한 전화번호 또는 
																고객의 소리 본문에 고객이 직접 불만처리를 위해 기재한 개인정보를 활용하여 처리할 수 있습니다.
															</p>
														</div>
													</div>
												</section>
												<div class="agree col-md-12">
													<div style="float: right;">
														<input type="radio" name="radioAgree" id="agree" value="Y" >
														<label for="agree">동의&nbsp;&nbsp;</label>
														<input type="radio" name="radioAgree" id="disagree" value="N"  checked="checked">
														<label for="disagree">동의안함&nbsp;&nbsp;</label>
													</div>
												</div>
												<div class="center">
													<button type="button" class="btn btn-default mr-xs mb-sm" id="eraser">지우기</button>
													<button type="submit" class="btn btn-success mr-xs mb-sm" id="claimSubmit">등록</button>
												</div>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<footer class="light visible-lg" id="footer">
			<jsp:include page="/resources/include/bottom.jsp"/>
		</footer>
		
		<footer class="light hidden-lg" id="footer">
			<jsp:include page="/resources/include/mobile-bottom.jsp"/>
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
		
		<!-- 데이트피커 js -->
		<script src="${ pageContext.request.contextPath}/resources/vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		
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
		<!-- 호텔데모 js -->
		<script src="${ pageContext.request.contextPath}/resources/js/demos/demo-hotel.js"></script>
		 <!-- Jquery Validate -->
    <script src="${ pageContext.request.contextPath }/resources/js/validate/jquery.validate.min.js"></script>
		
		<!-- Theme Custom -->
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>

<script type="text/javascript">
	
	// 카운트 초기화
	var cnt = 0;
	
	$(document).ready(function(){
		
		$('.direct-order-button').removeClass('btn-primary');
		$('.go-cart-button').removeClass('btn-primary');
		
		$('.direct-order-button').css('color','white');
		$('.go-cart-button').css('color','white');
		
		// DatePicker
		$('#visitDate').datepicker({
			format : 'yyyy-mm-dd',	// 날짜 포맷
			defaultDate: '+0d',
			endDate: '+0d',			// 오늘 이후 날짜 선택 불가
        	todayBtn: 'linked',		// 오늘날짜 바로 선택 버튼
			autoclose: true,		// 선택시, 자동 닫힘
			todayHighlight: true,	// 오늘날짜 하이라이트
			orientation: (($('html[dir="rtl"]').get(0)) ? 'bottom right' : 'bottom'),
			container: '#header',
			rtl: (($('html[dir="rtl"]').get(0)) ? true : false)
		});
		
		// 방문 - 라디오 버튼 변경시 이벤트
        $("input[name='radioVisit']:radio").change(function() {
	        // 라디오 버튼 값을 가져온다.
	        var visit = this.value;
	                          
			if(visit == "Y"){							// '매장방문'일 경우,
			    // 매장선택 & 방문일 활성화
			    $(".visit").css("display","block");
			} else if (visit == "N") {					// '매장방문 외'일 경우,
				// 매장선택 & 방문일 비활성화
				$(".visit").css("display","none");
			}
         });
		
     	// 첨부파일 +(추가) 버튼 클릭시 이벤트
        $('#btnAddFile').click (function () {
        	// 카운트 증가
        	cnt ++;
        	//alert(cnt);
        	
        	// fileDiv1에 있는 내용을 복사 후 생성
	        var div = document.createElement('div');
	        div.innerHTML = document.getElementById('fileDiv1').innerHTML;
	
			if(cnt >= 5){
			    // 그리고 해당 첨부파일은 5개 이상 생성할수 없도록 제한
		        alert("ERROR : 첨부파일을 5개 이상 추가 하실 수 없습니다!");
			    
			    // 카운트 초기화
		        cnt = 4;
		    } else {
		    	// 첨부파일 div 추가
				document.getElementById('file_AddSection').appendChild(div);
		       	// class 요소 변경
				$("#file_AddSection > div").attr("class", "fileDiv col-md-12");
				// id 요소 변경
		       	$("#file_AddSection > div:last").attr("id", "fileDiv" + parseInt(cnt + 1));
				// input 요소 변경
		    	$("#file_AddSection div > input:last").attr("name", "claimFile" + parseInt(cnt + 1));
				// 버튼 요소 변경
		    	$("#file_AddSection div > button:last").attr("name", "btnMinusFile");
		    	$("#file_AddSection div > button:last").attr("onclick", "removeFile(this)");
		    	$("#file_AddSection div > button:last").css("background","gray");
		    	$("#file_AddSection div > button:last").css("border-color","gray");
				// 아이콘 요소 변경
		    	$("#file_AddSection div > button > i:last").attr("class", "fa fa-minus");
		    }
      	});
     	
     	// 이메일 이벤트
     	$("#emailDomain").change(function() {
			
			var emailDomain = this.value;
			var inputDomain;
			
			// 직접입력 선택 시,
			if (emailDomain == "") {
				$("#inputDomain").attr("readonly", false);	// 해제
				$("#inputDomain").val("");
				$("#inputDomain").focus();
				
				// 직접입력 입력 시,
				$("#inputDomain").change(function() {
					inputDomain = this.value;
					if (inputDomain !== "") {
						$("#emailDomain option:selected").val(inputDomain);
						//alert(inputDomain);
						
						// 맘바뀌어서 다시 다른 도메인 선택 시,
						$("#emailDomain").change(function() {
							//alert(inputDomain);
							var replay = $(this).find('option:selected').val();
							
							if (replay == inputDomain){
								$(this).find('option:selected').val("");	
								$("#inputDomain").attr("readonly", false);	// 해제
								$("#inputDomain").val("");
								$("#inputDomain").focus();
							}
						});
					}
				});
			} else {
				$("#inputDomain").attr("readonly", true);	// 설정
				$("#inputDomain").val(emailDomain);
			}
		});
     	
     	// 서밋버튼 이벤트
     	$("#claimSubmit").click(function() {
     		// 동의 - 라디오 버튼 변경시 이벤트
     		var agree = $(':radio[name="radioAgree"]:checked').val();
  			// 방문 - 라디오 버튼 변경시 이벤트
			var  visit = $("input:radio[name='radioVisit']:checked").val();
  			
  	        if(agree == "Y"){							// '동의함'일 경우,
  	        	if(visit == "Y"){							// '매장방문'일 경우,
  				    // 매장선택 & 방문일 활성화
  					var store = $("#storeName").val();
  					var date = $("#visitDate").val();
  					
  					if (store == "") {
  						swal({
  			   				title: "Error!",
  			   				text: "방문하신 매장을 선택해주세요!",
  			                type: "error"
  			       	 	});
  						return false;
  					}
  					if (date == "") {
  						swal({
  			   				title: "Error!",
  			   				text: "방문하신 날짜를 선택해주세요!",
  			                type: "error"
  			       	 	});
  						return false;
  					}
  				}
  	  	        if (visit == "N") {					// '매장방문 외'일 경우,
  					return true;
  				}
  	        	return true;
  			}
  	        if (agree == "N") {					// '동의 안함'일 경우,
  				swal({
	   				title: "Error!",
	   				text: "개인정보 이용 동의 하셔야 신청 가능합니다.",
	                type: "error"
	       	 	});
  				return false;
  			}
  	        
		});
     	
     // Form 유효성 검사 작업
		$("#noticeForm").validate({
			// 규칙
			rules: {
                type: "required", 
				title: {
                    required: true,
                    maxlength: 90
                },
                content: {
                    required: true,
                    maxlength: 2000
                },
                emailDomain: "required"
            },
          	//규칙체크 실패 시, 출력될 메시지
            messages : {
            	type: {
                    required : "문의 유형을 선택해주세요!",
                },
            	title: {
                    required : "제목을 입력해주세요!",
                    maxlength : "{0}글자 이하로 작성하세요!",
                },
                content: {
                	 required : "내용을 입력해주세요!",
                     maxlength : "{0}글자 이하로 작성하세요!",
                },
                emailDomain: {
                    required : "이메일 도메인을 입력해주세요!",
                },
            },
			//규칙체크 실패 시, 실행될 이벤트
            invalidHandler: function (form, validator) {
                var errors = validator.numberOfInvalids();
                if (errors) {
                	validator.errorList[0].element.focus();
                	swal({
    	   				title: "Error!",
    	   				text: validator.errorList[0].message,
    	                type: "error"
    	       	 	});
                }
            },
			//규칙체크 성공 시, 실행될 이벤트
            submitHandler: function(form) {
            	swal({
	   				title: "등록 완료!",
	                type: "success"
	       	 	}, function () {
			        // OK 누르면 Submit 실행
			        form.submit();
			        //$('#noticeForm').submit();
			    });
            }
        });
     
		// 폼 초기화
		$('#eraser').click(function () {
			$('#noticeForm input[type="text"], textarea').val(""); 
		});
     	
	});
	
	// 첨부파일 -(제거) 버튼 클릭시 이벤트
	function removeFile(obj){
		// 카운트 감소
		cnt --;
		//alert(cnt);
		
        var index = $("#file_AddSection div > button[name='btnMinusFile']").index(obj);
        $("#file_AddSection div").eq(index).remove();
    }
	
</script>		
</body>
</html>