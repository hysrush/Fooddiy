<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								<form action="${ pageContext.request.contextPath }/sign/login.do" id="frmSignIn" method="post">
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-12">
												<a class="pull-right" data-toggle="modal" href="#idModal">(Lost ID?)</a>
												<label>ID</label> <input type="text" name="id" class="form-control input-lg">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-xs-12 col-md-12">
												<a class="pull-right" data-toggle="modal" href="#pwModal">(Lost Password?)</a>
												<label>Password</label> <input type="text" name="pw" class="form-control input-lg">
											</div>
										</div>
									</div>
									<div class="row" align="center">
										<!-- 자동 로그인 -->
										<div class="col-md-6">
											<span class="remember-box checkbox">
												<label for="rememberid"><input type="checkbox" id="rememberid" name="rememberid"/>아이디 저장</label>
											&nbsp;&nbsp;<label for="rememberme"><input type="checkbox" id="rememberme" name="rememberme"/>자동로그인</label>
											</span>
										</div>
										<div class="col-md-6 pull-right">
											<input type="submit" value="Login" class="btn btn-info pull-right mb-xl" data-loading-text="Loading...">
										</div>
									</div>
								</form>
								<!-- API 로그인 -->
								<div class="row">
									<div class="col-md-6 align-left mt-xlg">
										<jsp:include page="/resources/include/login/kakaoLogin.jsp"/>
									</div>
									<%-- <div class="col-md-4">	
										<jsp:include page="/resources/include/login/facebookLogin.jsp"/>
									</div> --%>
									<div class="col-md-6 align-left mt-xlg">	
										<jsp:include page="/resources/include/login/naverLogin.jsp"/>
									</div>
								</div>
								<div class="row mt-xlg">
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
											<p>가입 시에 입력한 이메일로 전송됩니다.</p>
										</div>
										<div class="form-group">
											<div class="col-xs-12 col-md-12">
												<!-- <a href="javascript:fnPopup();" class="btn btn-info mb-md form-control"> 인증하기 </a> -->
												<input type="submit" id="lost" value="확인" class="btn btn-info mb-md form-control" />
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
													<label>이메일 선택</label> <select name="emailD" class="form-control" required>
														<option value="@naver.com">@ naver.com</option>
														<option value="@daum.net">@ daum.net</option>
													</select>
												</div>
											</div>
											<p>가입 시에 입력한 이메일로 전송됩니다.</p>
										</div>
										<div class="form-group">
											<div class="col-xs-12 col-md-12">
												<!-- <a href="javascript:fnPopup();" class="btn btn-info mb-md form-control"> 인증하기 </a> -->
												<input type="submit" id="lost" value="확인" class="btn btn-info mb-md form-control" />
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
