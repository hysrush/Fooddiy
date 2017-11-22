<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<style>
	.modal-header {
		background-color: #7aa93c;
		height: 70px;
	}
	
	#formModalLabel {
		color: white;
	}
	
	.close {
		color: white;
	}
	
	.modalSection {
		padding: 10px !important;
		margin-top: 25px;
	}

</style>
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="formModalLabel">매장 찾기</h4>
			</div>
			
			<div class="modal-body">
				<!-- 탭 시작 -->
				<div class="tabs">
					<ul class="nav nav-tabs nav-justified">
						<li class="active">
							<a href="#AddressSearch" data-toggle="tab" class="text-center" aria-expanded="true"><i class="fa fa-map"></i>&nbsp;&nbsp;주소로 찾기</a>
						</li>
						<li class="">
							<a href="#StoreSearch" data-toggle="tab" class="text-center" aria-expanded="false"><i class="fa fa-home"></i>&nbsp;&nbsp;매장명으로 찾기</a>
						</li>
					</ul>
					<div class="tab-content">
						<!-- 주소로 찾기 -->
						<div id="AddressSearch" class="form-group tab-pane active">
							<form id="demo-form" class="form-horizontal mb-md" novalidate="novalidate">
								<section class="modalSection section section-default">
									<div class="form-group mt-md">
										<label for="selectAddress1" class="col-sm-3 control-label">시/도</label>
										<div class="col-sm-9">
											<select class="form-control" id="selectAddress1">
												<option value="">시/도</option>
												<option value="01">강원도</option>
												<option value="02">경기도</option>
												<option value="03">경상남도</option>
												<option value="04">경상북도</option>
												<option value="05">광주광역시</option>
												<option value="06">대구광역시</option>
												<option value="07">대전광역시</option>
												<option value="08">부산광역시</option>
												<option value="09">서울특별시</option>
												<option value="10">세종특별자치시</option>
												<option value="11">울산광역시</option>
												<option value="12">인천광역시</option>
												<option value="13">전라남도</option>
												<option value="14">전라북도</option>
												<option value="15">제주특별자치도</option>
												<option value="16">충청남도</option>
												<option value="17">충청북도</option>
											</select>
										</div>
									</div>
									<div class="form-group mt-md">
										<label for="selectAddress2" class="col-sm-3 control-label">시/도</label>
										<div class="col-sm-9">
											<select class="form-control" id="selectAddress2">
												<option value="">시/군/구</option>
											</select>
										</div>
									</div>
								</section>
								<br>
								<div class="form-group">
									<label class="col-sm-3 control-label">Comment</label>
									<div class="col-sm-9">
										<form:input path="visitStore" type="text" class="form-control" id="visitStore" name="visitStore" placeholder="방문매장"/>
									</div>
								</div>
							</form>
						</div>
						<!-- 매장명으로 찾기 -->
						<div id="StoreSearch" class="tab-pane">
							<form id="demo-form" class="form-horizontal mb-md" novalidate="novalidate">
								<section class="modalSection section section-default">
									<div class="form-group mt-md">
										<label for="selectAddress1" class="col-sm-3 control-label">매장명</label>
										<div class="col-sm-9">
												<div class="input-group input-group-md">
													<input class="form-control" type="text" name="visitStore" id="visitStore" placeholder="Search..."> 
													<span class="input-group-btn">
														<button type="submit" class="btn btn-success btn-md">
															<i class="fa fa-search"></i>
														</button>
													</span>
												</div>
										</div>
									</div>
								</section>
								<br>
								<div class="form-group">
									<label class="col-sm-3 control-label">Comment</label>
									<div class="col-sm-9">
										<form:input path="visitStore" type="text" class="form-control" id="visitStore" name="visitStore" placeholder="방문매장"/>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal-footer center">
				<!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
				<button type="button" class="btn btn-success">Save Changes</button>
			</div>
		</div>
	</div>
</div>