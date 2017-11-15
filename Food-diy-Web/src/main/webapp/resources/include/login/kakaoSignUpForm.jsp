<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script>
	$(document).ready(function(){
		// 가입 버튼 비활성화
		$('#signUp').attr('disabled', true);
		
		// 입력값 다 입력하면 가입 버튼 활성화
		$("input").change(function(){
				
				var s = document.signForm;
				
				if(isNull(s.name) && isNull(s.phone1) && isNull(s.phone2) && isNull(s.phone3) && isNull(s.email) && $(s.sex).is(":checked") && $("#member").is(":checked")){
					
					$('#signUp').attr('disabled', false);

				}else{
					
					$('#signUp').attr('disabled', true);
				}
		});
		
		// 취소 버튼
		$("#reset").click(function(){
			
			if(confirm("취소할 거예요?")){
				location.href="${ pageContext.request.contextPath }/index2.jsp";
			}else{
				
			}
		});
	});
	
</script>
<!-- 회원 가입 -->
<div class="featured-box featured-box-primary align-left mt-xlg">
	<div class="box-content">
		<div id="collapseOne" class="accordion-body collapse in">
			<div class="panel-body">
				<!-- id="frmBillingAddress" -->
				<form name="signForm" action="${ pageContext.request.contextPath }/sign/kakaoSignUp.do" method="post">
					<input type="hidden" name="id" value="${ kakaoVO.id }"/>
					<input type="hidden" name="pw" value="${ kakaoVO.pw }"/>
					<div class="row">
						<div class="form-group">
							<div class="col-md-6">
								<label>이름*</label> <input type="text" name="name" class="form-control" placeholder="류대현" required="required" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-4">
								<label>전화번호 </label> <input name="phone1" type="tel" class="form-control" placeholder="010" required="required" maxlength="3">
							</div>
							<br />
							<div class="col-md-4">
								<input type="tel" name="phone2" class="form-control" placeholder="1234" required="required" maxlength="4">
							</div>
							<div class="col-md-4">
								<input type="tel" name="phone3" class="form-control" placeholder="5678" required="required" maxlength="4">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-6">
								<label>E-mail </label> <input name="email" type="text" class="form-control" required>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-md-6">
										<label>이메일 선택</label> <select name="emailD" class="form-control" required>
											<option value="@naver.com">@ naver.com</option>
											<option value="@daum.net">@ daum.net</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-3">
								<label>생년월일</label> 
								<select class="form-control" name="birthYear">
									<c:forEach begin="1980" end="2017" var="i" >
									<option value="${ i }">
										${ i }
									</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-3">
								<label> </label>
								<select class="form-control" name="birthMonth">
									<c:forEach begin="01" end="12" var="i" >
									<option value="${ i }">
										${ i }
									</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-3">
								<label> </label>
								<select class="form-control" name="birthDay">
									<c:forEach begin="01" end="31" var="i" >
									<option value="${ i }">
										${ i }
									</option>
									</c:forEach>
								</select>
							</div>
							<br />
							<div class="col-md-3">
								<label> 성별 </label> 남 <input id="man" name="sex" type="radio" value="남자" required="required"/>
								 여 <input id="woman" name="sex" type="radio" value="여자" required="required"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<span class="member-box checkbox"> <label for="member">
									<h5>
										<input name="check" type="checkbox" id="member" value="확인" />
										<strong>이용약관 및 개인정보수집 및 이용에 모두 동의합니다.</strong>
									</h5>
							</label>
							</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<!-- btn btn-info mb-md -->
							<input type="submit" id="signUp"
								class="btn btn-info mb-md form-control" value="가입">
						</div>
						<div class="col-md-6">
							<input type="button" id="reset"
								class="btn btn-info mb-md form-control" value="취소">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>