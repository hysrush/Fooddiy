<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/sign/check.js"></script>
	<script>
		$(document).ready(function() {
			
			var cellPhone = document.getElementById('cellPhone');
			var birthNumber = document.getElementById('birthNumber');
			
			$('#check').attr('disabled', true);
			
			// 인증 버튼 활성화
			$("input").change(function(){
				
				var p = document.form_chk;
				
				if(isNull(p.name) && isNull(p.birth) && isNull(p.phone)){
					$('#check').attr('disabled', false);
				}else{
					$('#check').attr('disabled', true);
				}
			
			});
			
			// 하이픈 추가
			cellPhone.onkeyup = function(event){
				event = event || window.event;
				var _val = this.value.trim();
				this.value = autoHypenPhone(_val) ;
				
			}
			
			// 슬래쉬 추가 
			birthNumber.onkeyup = function(event){
				
				event = event || window.event;
				var num = this.value.trim();
				this.value = autoSlashPhone(num);
			}
			
			
			$("#check").click(function(){
				window.opener.name = "main"; // 부모창의 이름 설정
		    	document.form_chk.target = opener.window.name; // 타켓을 부모창으로 설정
		    	document.form_chk.method="post";
		    	document.form_chk.action = "${ pageContext.request.contextPath }/sign/phoneCertForm.do";
		   		document.form_chk.submit();
		    /* self.close(); */
			});
		});	
	</script>
	<div class="ajax-container">
			<div class="row">
				<div class="col-md-4"></div>
			</div>
			<div class="row">
			<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="featured-boxes">
						<div class="featured-box featured-box-primary align-left mt-xlg">
							<div align="center" class="box-content">
								<h4>휴대전화 인증</h4><br/>
								<p>본인 인증 서비스</p>
								<div class="row mt-xlg">
									<div class="col-md-12">
										<form name="form_chk" method="post" target="main">
											<div class="form-group">
												<div class="col-xs-6 col-md-6">
												<label>이름 </label> <input type="text" name="name" placeholder="류대현"class="form-control"/>
												</div>
												<div class="col-xs-6 col-md-6">
													<label>주민번호 </label> <input type="text" name="birth" id="birthNumber" placeholder="(ex 19970901)" maxlength="10" class="form-control" required/>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-6 col-md-6">
													<label>전화번호 </label> <input type="tel"  name="phone" id="cellPhone" placeholder="(- 빼고 입력)" maxlength="13" class="form-control" required />
												</div><br/>
												<div class="col-xs-6 col-md-6">	
													남 <input type="radio" class="btn btn-info" name="sex" value="남자" class="form-control" />&nbsp;
													여 <input type="radio" class="btn btn-info" name="sex" value="여자" class="form-control"/>
												</div>
											</div>
											<div class="form-group">
												<div class="col-xs-12 col-md-12">
													<!-- <a href="javascript:fnPopup();" class="btn btn-info mb-md form-control"> 인증하기 </a> -->
													<input type="submit" id="check" value="인증하기" class="btn btn-info mb-md form-control"/>
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
