<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
											<div class="col-md-12">
												<a class="pull-right" href="${ pageContext.request.contextPath }/">(Lost ID?)</a>
												<label>ID</label> <input type="text" value="" class="form-control input-lg">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<a class="pull-right" href="${ pageContext.request.contextPath }/">(Lost Password?)</a>
												<label>Password</label> <input type="text" value="" class="form-control input-lg">
											</div>
										</div>
									</div>
							
									<div class="row">
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
								<div class="row mt-xlg">
									<div class="col-md-6">	
										<jsp:include page="/resources/include/login/kakaoLogin.jsp"/>
									</div>
									<%-- <div class="col-md-4">	
										<jsp:include page="/resources/include/login/facebookLogin.jsp"/>
									</div> --%>
									<div class="col-md-6">	
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


						