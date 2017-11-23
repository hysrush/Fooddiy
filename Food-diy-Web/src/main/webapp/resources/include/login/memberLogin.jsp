<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script>
	$(document).ready(function(){
	    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
	    var userInputId = getCookie("userInputId");
	    $("input[name='id']").val(userInputId); 
	     
	    if($("input[name='id']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
	        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
	    }
	     
	    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
	            var userInputId = $("input[name='id']").val();
	            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
	        }else{ // ID 저장하기 체크 해제 시,
	            deleteCookie("userInputId");
	        }
	    });
	     
	    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
	    $("input[name='id']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
	            var userInputId = $("input[name='id']").val();
	            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
	        }
	    });
	});
	 
	function setCookie(cookieName, value, exdays){
	    var exdate = new Date();
	    exdate.setDate(exdate.getDate() + exdays);
	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	    document.cookie = cookieName + "=" + cookieValue;
	}
	 
	function deleteCookie(cookieName){
	    var expireDate = new Date();
	    expireDate.setDate(expireDate.getDate() - 1);
	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	}
	 
	function getCookie(cookieName) {
	    cookieName = cookieName + '=';
	    var cookieData = document.cookie;
	    var start = cookieData.indexOf(cookieName);
	    var cookieValue = '';
	    if(start != -1){
	        start += cookieName.length;
	        var end = cookieData.indexOf(';', start);
	        if(end == -1)end = cookieData.length;
	        cookieValue = cookieData.substring(start, end);
	    }
	    return unescape(cookieValue);
	}
</script>
<!-- 회원 로그인 -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="featured-boxes">
				<div class="row">
					<div class="col-sm-6">
						<div class="featured-box featured-box-primary align-left mt-xlg">
							<div class="box-content">
								<h4 class="heading-primary text-uppercase mb-md">회원</h4>
								<form action="${ pageContext.request.contextPath }/sign/login.do" id="frmSignIn" name="memberForm" method="post">
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-12">
												<a class="pull-right" data-toggle="modal" href="#idModal">(Lost ID?)</a>
												<label>ID</label> <input type="text" name="id" class="form-control input-lg" required="required">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-12">
												<a class="pull-right" data-toggle="modal" href="#pwModal">(Lost Password?)</a>
												<label>Password</label> <input type="password" name="pw" class="form-control input-lg" required="required">
											</div>
										</div>
									</div>
									<div class="row">
										<!-- 로그인 정보 저장 -->
										<div class="col-xs-6 col-md-3">
											<span class="remember-box checkbox">
												<label for="idSaveCheck"><input type="checkbox" id="idSaveCheck" name="rememberid"/>아이디 저장</label>
											</span>
											<!-- <span class="remember-box checkbox">
												<label for="rememberme"><input type="checkbox" id="rememberme" name="rememberme"/>자동로그인</label>
											</span> -->
										</div>
										<div class="col-xs-6 col-md-6 pull-right">
											<input type="submit" value="Login" class="btn btn-info pull-right mb-xl" data-loading-text="Loading...">
										</div>
									</div>
								</form>
								<!-- API 로그인 -->
								<div class="row" align="center">
									<div class="col-xs-12 col-md-6">
										<jsp:include page="/resources/include/login/kakaoLogin.jsp"/>
									</div>
									<%-- <div class="col-xs-12 col-md-6">
										<jsp:include page="/resources/include/login/naverLogin.jsp"/>
									</div> --%>
									<%-- <div class="col-md-4">	
										<jsp:include page="/resources/include/login/facebookLogin.jsp"/>
									</div> --%>
								</div>
								<div class="row mt-xs">
									<div class="col-md-12">
										<a href="${ pageContext.request.contextPath }/sign/signUp.do" class="btn btn-info mb-md form-control">회원가입</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ID 찾기 -->
<div class="modal fade" id="idModal">
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="featured-boxes">
					<div class="featured-box featured-box-primary align-left mt-xlg">
						<div align="center" class="box-content">
							<h4>아이디 찾기</h4>
							<div class="row mt-xlg">
								<div class="col-md-12">
									<form name="form_lost" method="post" target="main" action="${ pageContext.request.contextPath }/sign/lostId.do">
										<div class="form-group">
											<div class="col-xs-12 col-md-12">
												<label>이름 </label>
													<input type="text" name="name" placeholder="류대현" class="form-control" required/>
											</div>
										</div>
										<div class="form-group">
											<div class="col-xs-6 col-md-6">
												<label>E-mail </label> <input name="email" type="text" class="form-control" required>
											</div>
											<div class="form-group">
												<div class="col-xs-6 col-md-6">
													<label>이메일 선택</label> <select name="emailD" class="form-control" required>
														<option value="@naver.com">@ naver.com</option>
														<option value="@daum.net">@ daum.net</option>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-xs-6 col-md-6">
												<!-- <a href="javascript:fnPopup();" class="btn btn-info mb-md form-control"> 인증하기 </a> -->
												<input type="submit" id="lost" value="확인" class="btn btn-info mb-md form-control" />
											</div>
											<div class="col-xs-6 col-md-6">
												<input type="button" value="취소" data-dismiss="modal" class="btn btn-info mb-md form-control" />
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 비밀번호 찾기 -->
<div class="modal fade" id="pwModal">
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="featured-boxes">
					<div class="featured-box featured-box-primary align-left mt-xlg">
						<div align="center" class="box-content">
							<h4>비밀번호 찾기</h4>
							<div class="row mt-xlg">
								<div class="col-md-12">
									<form name="form_lost" method="post" target="main" action="${ pageContext.request.contextPath }/sign/lostPw.do">
										<div class="form-group">
											<div class="col-xs-6 col-md-6">
												<label>이름 </label> <input type="text" name="name" placeholder="류대현" class="form-control" required/>
											</div>
											<div class="form-group">
												<div class="col-xs-6 col-md-6">
													<label>ID </label> <input type="text" name="id" class="form-control" required/>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-xs-6 col-md-6">
												<label>E-mail </label> <input name="email" type="text" class="form-control" required>
											</div>
											<div class="form-group">
												<div class="col-xs-6 col-md-6">
													<label> </label> <select name="emailD" class="form-control" required>
														<option value="@naver.com">@ naver.com</option>
														<option value="@daum.net">@ daum.net</option>
													</select>
												</div>
											</div>
											<p>*&nbsp;가입 시에 입력한 이메일을 입력해 주세요.</p>
										</div>
										<div class="form-group">
											<div class="col-xs-6 col-md-6">
												<!-- <a href="javascript:fnPopup();" class="btn btn-info mb-md form-control"> 인증하기 </a> -->
												<input type="submit" id="lost" value="확인" class="btn btn-info mb-md form-control" />
											</div>
											<div class="col-xs-6 col-md-6">
												<input type="button" value="취소" data-dismiss="modal" class="btn btn-info mb-md form-control" />
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
