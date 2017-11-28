<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/sign/check.js"></script>
<script>
	// 함수 시작
	$(document).ready(function(){
		
		var e = document.nonCheck;
		var m = document.nonemailCheck;
		
		// 가입 버튼 비활성화
		$('#nonCheck').attr('disabled', true);
		$('#nonSign').attr('disabled', true);
		
		// 입력값 다 입력하면 가입 버튼 활성화
		$("input").change(function(){
				
				// 인증 코드 버튼 활성화
				if($("#nonCert").is(":checked") && isNull(e.name) && isNull(e.email)){
					$('#nonCheck').attr('disabled', false);
				}else{
					$('#nonCheck').attr('disabled', true);
				}
				
				// 인증 확인 버튼 활성화
				if(isNull(m.pno)){
					$('#nonSign').attr('disabled', false);
				}else{
					
					$('#nonSign').attr('disabled', true);
				}
				
		});
		
		
		$("#nonCheck").click(function(){
			$.ajax({
				type : "post",
				data : {
					"name" : e.name.value,
					"email" : e.email.value + e.emailD.value
				},
				url : "${ pageContext.request.contextPath }/sign/nonemail",
				success : function(result){
					alert("전송!");
					var data = JSON.parse(result);
			 		$("#pc").val(data[0]);
					$("#n").val(data[1].name);
					$("#e").val(data[1].email);
					
				}
			});
		});
	});
	
	function check(){
		var n = $("#pno").val();
		var k = $("#pc").val();
		
		if(n == k ){
			return true;
		}else{
			alert("인증 코드를 확인해 주세요.");
			$("#pno").focus();
			return false;
		}
	}

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
								<form action="${ pageContext.request.contextPath }/sign/nonemail" name="nonCheck" method="post" >
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
												<input type="button" value="인증코드" id="nonCheck"  class="btn btn-info pull-right form-control" data-loading-text="Loading..."/>
											</div>
										</div>
									</div>
								</form>
								<!-- 인증 번호 확인 & 비회원 가입 -->
								<form action="${ pageContext.request.contextPath }/sign/nonemailCheck" name="nonemailCheck" onsubmit="return check()">
									<input type="hidden" id="pc"/>
									<input type="hidden" id="n" name="name"/>
									<input type="hidden" id="e" name="email"/>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label>인증코드</label>&nbsp;
												<input type="text" name="pno" id="pno" class="form-control" required="required"/>
											</div><br/>
											<div class="col-md-6">
												<input type="submit" value="인증확인" id="nonSign"class="btn btn-info pull-right form-control"/>
											</div>
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