<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								<div class="row">
									<div class="col-md-12">
										<label>이용약관 및 개인정보수집 및이용에 모두 동의합니다. <input type="checkbox" id=""/><br/><br/></label>
									</div>
								</div>
								<form action="주문내역 조회에 저장"id="phnumber" method="post">
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>이름</label> <input type="text" id="name" value="" class="form-control"/>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-3">
												<label>전화 번호</label>&nbsp;
												<select class="form-control">
													<option>010</option>
													<option>011</option>
													<option>019</option>
												</select>
											</div><br/>
											<div class="col-md-3">
												 <input type="text" value="" class="form-control">
											</div>
											<div class="col-md-3">
												<input type="text" value="" class="form-control">
											</div>
											<div class="col-md-3">
												<input type="submit" value="인증번호" id="pno" 
												class="btn btn-info pull-right form-control" data-loading-text="Loading..."/>
											</div>
										</div>
									</div>
								</form>
								<form action="발송한 인증번호와 맞는지 확인" id="phno" method="post">
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label>인증번호</label>&nbsp;
												<input type="text" name="Pno" class="form-control"/>
											</div><br/>
											<div class="col-md-6">
												<input type="submit" value="인증확인" id="pnum"
												class="btn btn-info pull-right form-control" data-loading-text="Loading..."/>
											</div>
										</div>
									</div>
								</form>
								<div class="row mt-xlg">
									<div class="col-md-12">
										<input type="button" id="check" value="확인"
										 class="btn btn-info mb-md form-control"/>
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