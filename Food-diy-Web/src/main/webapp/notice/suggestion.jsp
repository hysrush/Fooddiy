<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		<link rel="stylesheet" href="${ pageContext.request.contextPath}/resources/css/custom.css">
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous"> 

		<!-- js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

<script type="text/javascript">
	function doAction(type) {
		switch (type) {
		case 'L':
			location.href = "<%= request.getContextPath() %>/notice/list.do";
			break;
		default:		
			break;
		}
	}
	
	function submit() {
		document.getElementById("dForm").submit();
	}
</script>
<style type="text/css">
	.mail_input, .mail_sel, .phone_input, .phone_sel {
		width: 30%;
		float: left;
	}
</style>
<script type="text/javascript">

	var cnt = 0;
	
	$(document).ready(function(){
		
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
		
		// 라디오 버튼 변경시 이벤트
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
        	
        	cnt ++;
        	//alert(cnt);
        	
        	// fileDiv1에 있는 내용을 복사 후 생성
	        var div = document.createElement('div');
	        div.innerHTML = document.getElementById('fileDiv1').innerHTML;
	
			if(cnt >= 5){
			    // 그리고 해당 첨부파일은 5개 이상 생성할수 없도록 제한
			        alert("ERROR : 첨부파일을 5개 이상 추가 하실 수 없습니다!");
			        cnt = 4;
		    } else {
		    	// 첨부파일 div 추가
				document.getElementById('file_AddSection').appendChild(div);
		       	// class 요소 변경
				$("#file_AddSection > div").attr("class", "fileDiv col-md-12");
				// id 요소 변경
		       	$("#file_AddSection > div:last").attr("id", "fileDiv" + parseInt(cnt + 1));
				// 버튼 요소 변경
		    	$("#file_AddSection div > button:last").attr("name", "btnMinusFile");
		    	$("#file_AddSection div > button:last").attr("onclick", "removeFile(this)");
				// 아이콘 요소 변경
		    	$("#file_AddSection div > button > i:last").attr("class", "fa fa-minus");
		    }
      	});
     	
	});
	
	function removeFile(obj){
		
		cnt --;
		//alert(cnt);
		
        var index = $("#file_AddSection div > button[name='btnMinusFile']").index(obj);
        $("#file_AddSection div").eq(index).remove();
        
    }
	
</script>
</head>
<body>
	<div class="body">
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
					<div class="col-md-2 hidden-xs hidden-sm">
						<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">
							<h4 class="heading-primary"><strong>커뮤니티 </strong></h4>

							<ul class="nav nav-list mb-xlg sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
								<li><a href="${ pageContext.request.contextPath }/community/qna.do">자주묻는 질문</a></li>
								<li><a href="${ pageContext.request.contextPath }/community/notice.do">Subway 소식</a></li>
								<li class="active"><a href="${ pageContext.request.contextPath }/notice/suggestion.jsp">1:1 문의</a></li>
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
									<a href="#tabsNavigationSimple2" data-toggle="tab">나의 문의내역</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tabsNavigationSimple1">
									<div class="center">
										<h4>1:1 문의하기</h4>
										<div class="form-group" align="left">
											<form method="POST">
												<table class="table table-bordered" width="80%">
													<tr>
														<td>
															<label for="kind">분야</label>
														</td>
														<td>
															<select class="form-control" id="kind" name="kind">
																<option value="" selected="selected">문의유형</option>
																<option value="I">문의</option>
																<option value="P">칭찬</option>
																<option value="C">불만</option>
																<option value="S">제안</option>
																<option value="X">기타</option>
															</select>
														</td>
													</tr>
													<tr>
														<td>
															<label for="email">답변 메일</label>
														</td>
														<td>
															<input type="text" class="mail_input form-control" id="emailID" placeholder="로그인회원emailID" value=""/>
															<span style="float: left;">&nbsp;&nbsp;<i class="fa fa-at"></i>&nbsp;&nbsp;</span>
															<input type="text" class="mail_input form-control" id="emailAdd" placeholder="로그인회원emailAdd" value=""/>
															<span style="float: left;">&nbsp;&nbsp;</span>
															<select class="mail_sel form-control" >
																<option value="">직접입력</option>
																<option value="">gmail.com</option>
																<option value="">hanmail.net</option>
																<option value="">hotmail.com</option>
																<option value="">nate.com</option>
																<option value="">naver.com</option>
																<option value="">yahoo.co.kr</option>
															</select>
														</td>
													</tr>
													<tr>
														<td>
															<label for="phone">연락처</label>
														</td>
														<td>
															<select class="phone_sel form-control" id="phone1">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="016">016</option>
																<option value="017">017</option>
																<option value="018">018</option>
																<option value="019">019</option>
															</select>
															<span style="float: left;">&nbsp;&nbsp;-&nbsp;&nbsp;</span>
															<input type="text" class="phone_input form-control" id="phone2" name="phone2" placeholder="중간번호" maxlength="4" ref="num"/>
															<span style="float: left;">&nbsp;&nbsp;-&nbsp;&nbsp;</span>
															<input type="text" class="phone_input form-control" id="phone3" name="phone3" placeholder="마지막번호" maxlength="4" ref="num"/>
														</td>
													</tr>
													<tr>
														<td>
															<label for="email">장소</label>
														</td>
														<td>
															<div style="float: left;">
																<input type="radio" name="radioVisit" class="radioVisit" value="Y" checked="checked">매장 방문
																<input type="radio" name="radioVisit" class="radioVisit" value="N" >매장 방문 외
															</div>
															<br>
															<div class="visit col-md-12" style="float: left;">
																<label for="email" >방문매장&nbsp;&nbsp;</label>
																<button type="button" class="btn btn-success mr-xs mb-sm">매장찾기</button>
															</div>
															<div class="visit col-md-12" style="float: left;">
																<label for="email" >방문일&nbsp;&nbsp;</label>
																<div class="input-group date col-md-4" >
																	<input type="text" class="form-control" data-msg-required="This field is required." readonly="readonly"
																			placeholder="방문일" name="visitDate" id="visitDate" required>
																	<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
																</div>
															</div>
       													</td>
													</tr>
													<tr>
														<td>
															<label for="title">제목</label>
														</td>
														<td>
															<input path="title" type="text" class="title_input form-control" id="title" name="title" placeholder="제목"/>
															<%-- <form:errors path="title" class="form-control"></form:errors> --%>
														</td>
													</tr>
													<tr>
														<td>
															<label for="content">내용</label>
														</td>
														<td>
															<textarea path="content" class="form-control" rows="5" id="content" name="content" placeholder="내용"></textarea>
															<%-- <form type="textarea" path="content" class="form-control" rows="5" id="comment" placeholder="contents"/> --%>
															<%-- <form:errors path="content" class="form-control"></form:errors> --%>
														</td>
													</tr>
													<tr>
														<td>
															<label for="content">파일첨부</label>
														</td>
														<td>
															<div class="file_BasicSection">
																<div class="fileDiv col-md-12" id="fileDiv1" >
																	<input path="#" type="file" class="file_input form-control" id="fileName1" placeholder="파일첨부" style="float: left; width: 70%;"/>
																	&nbsp;&nbsp;<button type="button" class="btn btn-success mr-xs mb-sm" id="btnAddFile" ><i class="fa fa-plus"></i></button>
																</div>
															</div>
															<div id="file_AddSection"></div>
															<p class="mb-none" style="padding: 10px;">
																파일첨부는 아래의 파일만 등록이 가능하며 최대 5개(1개당 최대2MB), 총 10MB까지 등록이 가능합니다.<br>
																(등록 가능 확장자 : jpg, jpeg, png, gif, zip, doc, docx, ppt, pptx, xls, xlsx, hwp)
															</p>
														</td>
													</tr>
												</table>
											</form>
										</div>
									</div>
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
										<button type="submit" class="btn btn-default">등록</button>
									</div>
								</div>
								<div class="tab-pane" id="tabsNavigationSimple2">
									<div class="center">
										<h4>나의 문의내역</h4>
										<table class="table table-hover" width="80%">
											<thead>
												<tr>
												<th>번호</th>
												<th>제목</th>
												<th>작성일</th>
												<th>조회수</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
										</table>
										<div class="center">
											<div class="col-md-12">
												<ul class="pagination pull-center">
													<li>
														<a href="#"><i class="fa fa-chevron-left"></i></a>
													</li>
													<li class="active">
														<a href="#">1</a>
													</li>
													<li>
														<a href="#">2</a>
													</li>
													<li>
														<a href="#">3</a>
													</li>
													<li>
														<a href="#"><i class="fa fa-chevron-right"></i></a>
													</li>
												</ul>
											</div>
											<button type="button" class="btn btn-primary" onclick="doAction('W')">글쓰기</button>
										</div>
										<div class="center">
											<button type="button" class="btn btn-primary" onclick="doAction('L')">목록</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<footer id="footer">
			<jsp:include page="/resources/include/bottom.jsp"/>
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
		
		<!-- Theme Custom -->
		<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${ pageContext.request.contextPath}/resources/js/theme.init.js"></script>
</body>
</html>