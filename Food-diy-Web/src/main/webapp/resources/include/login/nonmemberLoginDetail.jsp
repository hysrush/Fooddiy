<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/sign/check.js"></script>
<script>
	// 함수 시작
	$(document).ready(function(){
		// 가입 버튼 비활성화
		$('#nonCheck').attr('disabled', true);
		$('#nonemailCheck').attr('disabled', true);
		$('#nonSign').attr('disabled', true);
		
		// 입력값 다 입력하면 가입 버튼 활성화
		$("input").change(function(){
				
				// 인증 코드 버튼 활성화
				var e = document.nonCheck;
				
				if($("#nonCert").is(":checked") && isNull(e.name) && isNull(e.email)){
					
					$('#nonCheck').attr('disabled', false);
					
				}else{
					
					$('#nonCheck').attr('disabled', true);
				}
				
				// 인증 확인 버튼 활성화
				var m = document.nonemailCheck;
				
				if(isNull(m.Pno)){
					
					$('#nonemailCheck').attr('disabled', false);
					
				}else{
					
					$('#nonemailCheck').attr('disabled', false);
					
				}
				
				var s = document.
		});

	});
	
</script>
<!-- 비회원 로그인/주문조회 코드 -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="featured-boxes">
				<div class="row">
					<div class="col-sm-6">
						<div class="featured-box featured-box-primary align-left mt-xlg">
							<div class="box-content">
								<h4 class="heading-primary text-uppercase mb-md">비회원</h4>
								<!-- 해당하는 이메일로 인증번호 전송 -->
								<form action="${ pageContext.request.contextPath }/sign/nonemail" name="nonCheck" method="post">
									<div class="row">
										<div class="col-md-12">
											<label>이용약관 및 개인정보수집 및이용에 모두 동의합니다. <input id="nonCert" type="checkbox"/><br/><br/></label>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>이름</label> <input type="text" name="name" placeholder="토르" class="form-control"/>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-4">
												<label>이메일</label>&nbsp;
												<c:choose>
													<c:if test="${ not empty non }">
													
													</c:if>
													<
												</c:choose>
												<input name="email" type="text" class="form-control" required>
											</div><br/>
											<div class="col-md-4">
												<select name="emailD" class="form-control" required>
													<option>도메인 선택</option>
													<option value="@naver.com">@ naver.com</option>
													<option value="@daum.net">@ daum.net</option>
											</select>
											</div>
											<div class="col-md-4">
												<input type="submit" value="인증코드" id="nonCheck"  class="btn btn-info pull-right form-control" data-loading-text="Loading..."/>
											</div>
										</div>
									</div>
								</form>
								<!-- 인증 번호 확인 -->
								<form action="${ pageContext.request.contextPath }/sign/nonemailCheck.do" name="nonemailCheck" method="post">
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label>인증코드</label>&nbsp;
												<input type="text" name="Pno" class="form-control"/>
											</div><br/>
											<div class="col-md-6">
												<input type="submit" value="인증확인" id="nonemailCheck" class="btn btn-info pull-right form-control" data-loading-text="Loading..."/>
											</div>
										</div>
									</div>
								</form>
								<!-- 비회원 등록 -->
								<form action="${ pageContext.request.contextPath }/비회원 등록(이름+이메일)" name="nonSign" method="post">
									<input type="hidden" name="name" value=""/>
									<input type="hidden" name="email" value=""/>
									<div class="row mt-xlg">
										<div class="col-md-12">
											<input type="submit" id="nonSign" value="확인" class="btn btn-info mb-md form-control"/>
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