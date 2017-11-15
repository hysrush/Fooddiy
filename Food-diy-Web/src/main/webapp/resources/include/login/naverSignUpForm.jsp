<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script>
	
</script>
<script>
	// 함수 시작
	$(document).ready(function(){
		
		// 가입 버튼 비활성화
		$('#signUp').attr('disabled', true);
		
		// 입력값 다 입력하면 가입 버튼 활성화
		$("input").change(function(){
				
				var s = document.signForm;
				
				if($("#member").is(":checked")){
					
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
<div class="featured-box featured-box-primary align-left mt-xlg">
	<div class="box-content">
		<div id="collapseOne" class="accordion-body collapse in">
			<div class="panel-body">
				<!-- id="frmBillingAddress" -->
				<form name="signForm" action="${ pageContext.request.contextPath }/sign/signUp.do" method="post">
					<div class="row">
						<div class="form-group">
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