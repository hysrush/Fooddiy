<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script>
	// 유효성 검사
	function isNull(obj){
		if(obj.value == ""){
			obj.focus();
			return false;
		}
		return true;
	}
	
	//아이디 체크하여 중복확인.
	 function checkId() {
	 	var inputed = $('#id').val();
	 	var original = /^[A-za-z]{2,16}/g;
	 	if(original.test(inputed)){
	 	$.ajax({
	     	data : {
	        id : inputed
	        },
	        url : "${ pageContext.request.contextPath }/sign/checkId.do",
	        success : function(data) {
	        	if(inputed=="" && data=='0') {
	                    $("#id").css("background-color", "#FFCECE");
	        		} else if (data == '0') {
	                    $("#id").css("background-color", "#B0F6AC");
	                } else if (data == '1') {
	                	$("#id").css("background-color", "#FFCECE");
	                	$("#id").focus();
	                } 
	            }
	        });
		}else{
			
			$("#id").css("background-color", "#FFCECE");
		}
	}
	
	//재입력 비밀번호 체크하여 맞지 않음을 알림.
	    function checkPw() {
	        var inputed = $('#pw').val();
	        var original = /^[a-zA-Z0-9]{6,15}$/;
	        var reinputed = $('#pwCheck').val();
	        
	       if(original.test(inputed)){
	        	
	        	$("#pw").css("background-color", "#B0F6AC");
	        	
		        if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
			            $("#pwCheck").css("background-color", "#FFCECE");
			        }
			        else if (inputed == reinputed) {
			            $("#pwCheck").css("background-color", "#B0F6AC");
			            
			        } else if (inputed != reinputed) {
			            $("#pwCheck").css("background-color", "#FFCECE");
			            
			        }
				}else{
	        	$("#pw").css("background-color", "#FFCECE");
	        }
	    }

	// 함수 시작
	$(document).ready(function(){
		
		// 성별
		var sex = "${ phoneCert.sex }";
		
		if( sex === '남자' ){
			$("#man").prop('checked', true);
		}else{
			$("#woman").prop('checked', true);
		}
		
		// 가입 버튼 비활성화
		$('#signUp').attr('disabled', true);
		
		// 입력값 다 입력하면 가입 버튼 활성화
		$("input").change(function(){
				
				var s = document.signForm;
				
				if(isNull(s.id) && isNull(s.pw) && isNull(s.pwCheck) && isNull(s.email) && $("#member").is(":checked")){
					
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
				window.location.reload();
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
				<form name="signForm" action="${ pageContext.request.contextPath }/sign/signUp.do" method="post">
					<input type="hidden" name="root" value="${ phoneCert.root }"/>
					<div class="row">
						<div class="form-group">
							<div class="col-md-6">
								<label>ID*</label> <input name="id" id="id" type="text"
									class="form-control" maxlength="16" oninput="checkId()"
									placeholder="영소문자/숫자, 6~16자" required />
							</div>
							<div class="col-md-6">
								<label>이름*</label> <input type="text" name="name"
									value="${ phoneCert.name }" class="form-control"
									placeholder="영소문자/숫자, 6~16자" readonly />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-6">
								<label>비밀번호*</label> <input name="pw" id="pw" type="password"
									class="form-control" maxlength="16" required
									oninput="checkPw()" placeholder="영소문자/숫자, 6~16자" required>
							</div>
							<div class="col-md-6">
								<label>비밀번호 확인*</label> <input name="pwCheck" id="pwCheck"
									type="password" class="form-control" maxlength="16" required
									oninput="checkPw()" required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-xs-4 col-md-4">
								<label>전화번호 </label> <input name="phone1" type="tel" value="${ phoneCert.phone1 }" class="form-control" readonly>
							</div>
							<br />
							<div class="col-xs-4 col-md-4">
								<input type="tel" name="phone2" value="${ phoneCert.phone2 }"
									class="form-control" readonly>
							</div>
							<div class="col-xs-4 col-md-4">
								<input type="tel" name="phone3" value="${ phoneCert.phone3 }"
									class="form-control" readonly>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-xs-6 col-md-6">
								<label>E-mail </label> <input name="email" type="text" class="form-control" required>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-xs-6 col-md-5">
										<label>도메인</label>
										<select name="emailD" class="form-control" required>
											<option value="@naver.com">@ naver.com</option>
											<option value="@hanmail.net">@ daum.net</option>
											<option value="@gmail.com">@ gmail.com</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-3">
								<label>생년월일</label> <input type="text" name="birthYear"
									value="${ phoneCert.birthYear }년" class="form-control" readonly>
							</div>
							<div class="col-md-3">
								<label> </label> <input name="birthMonth" type="text"
									value="${ phoneCert.birthMonth }월" class="form-control"
									readonly>
							</div>
							<div class="col-md-3">
								<label> </label> <input name="birthDay" type="text"
									value="${ phoneCert.birthDay }일" class="form-control" readonly>
							</div>
							<br />
							<div class="col-md-3">
								<label> 성별 </label> 남 <input id="man" name="sex" type="radio"
									value="남자" disabled="disabled" /> 여 <input id="woman"
									name="sex" type="radio" value="여자" disabled="disabled" />
								<c:choose>
									<c:when test="${ phoneCert.sex eq '남자'}">
										<input id="man" name="sex" type="hidden" value="남자" />
									</c:when>
									<c:otherwise>
										<input id="woman" name="sex" type="hidden" value="여자" />
									</c:otherwise>
								</c:choose>
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
							<input type="submit" id="signUp" class="btn btn-info mb-md form-control" value="가입">
						</div>
						<div class="col-md-6">
							<input type="button" id="reset" class="btn btn-info mb-md form-control" value="취소">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>