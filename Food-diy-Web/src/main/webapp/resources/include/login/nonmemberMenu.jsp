<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 비회원 주문조회 -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="featured-boxes">
				<div class="row">
					<div class="col-sm-6">
						<div class="featured-box featured-box-primary align-left mt-xlg">
							<div class="box-content">
								<h4 class="heading-primary text-uppercase mb-md">주문조회</h4>
								<form action="${ pageContext.request.contextPath }/" id="frmSignIn" method="post">
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<input type="text" class="form-control" value="주문 번호를 입력하세요" size="60px">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-4">
												<label>전화번호</label>
												<select class="form-control">
													<option>010</option>
													<option>011</option>
													<option>019</option>
												</select>
											</div><br/>
											<div class="col-md-4">
												<input type="text" value="" class="form-control">
											</div>
											<div class="col-md-4">
												<input type="text" value="" class="form-control">
											</div>
										</div>
									</div>
									<div class="row mt-xlg">
										<div class="col-md-12">
											<input type="submit" value=" 조회하기 " id="pno" 
												class="btn btn-info mb-md form-control" data-loading-text="Loading..."/>
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