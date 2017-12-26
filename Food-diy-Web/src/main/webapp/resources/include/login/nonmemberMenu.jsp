<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 비회원 주문조회 -->
<div class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="featured-boxes">
				<div class="row">
					<div class="col-sm-6">
						<div class="featured-box featured-box-primary align-left mt-xlg">
							<div class="box-content">
								<h4 class="heading-primary text-uppercase mb-md">주문조회</h4>
								<form>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<input type="text" id="orderNum" class="form-control" placeholder="주문 번호를 입력하세요" size="60px" required="required">
											</div>
										</div>
									</div>
							<!-- 		<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>이메일</label>&nbsp;
												<input name="email" type="text" class="form-control" required>
											</div><br/>
										</div>
									</div> -->
									<div class="row mt-xlg">
										<div class="col-md-12s">
											<input type="submit" value=" 조회하기 " id="menuCheck" 
												class="btn btn-info mb-md form-control btn-primary btn-icon" data-loading-text="Loading..."/>
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