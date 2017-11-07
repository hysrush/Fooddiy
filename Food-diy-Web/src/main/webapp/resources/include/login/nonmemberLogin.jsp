<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 비회원 로그인 -->
<div class="container">
	<div class="col-md-9">
		<div class="row">
			<div class="col-md-12">
				<div class="tabs tabs-bottom tabs-center tabs-simple">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#nonmemberLoginDetail" data-toggle="tab"
							aria-expanded="true"> 비회원 로그인</a></li>
						<li class=""><a href="#nonmemberMenu"
							data-toggle="tab" aria-expanded="false"> 주문조회</a></li>
					</ul>
					<div class="tab-content">
						<!--  비회원 로그인    -->
						<div class="tab-pane active" id="nonmemberLoginDetail">
							<jsp:include page="/resources/include/login/nonmemberLoginDetail.jsp" />
						</div>
						<!-- 주문조회 -->
						<div class="tab-pane" id="nonmemberMenu">
							<jsp:include
								page="/resources/include/login/nonmemberMenu.jsp" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>