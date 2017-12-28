<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="mobile-nav">
	<div class="mobile-nav-wrapper">
		<ul class="mobile-side-menu">
			<li><a href="${ pageContext.request.contextPath}/main/Start">Home</a></li>
			<li><span class="mmenu-toggle"></span> <a href="${ pageContext.request.contextPath}/menu/menuAll.do">Menu</a>
				<ul>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do">전체메뉴 ALL MENU</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#recommend">추천메뉴 FAVORITES</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#premium">프리미엄 PREMIUM</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#best">베스트 SIGNATURE</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#classic">클래식 CLASSICS</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#breakfast">아침식사 Breakfast</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#salad">찹샐러드 Chopped Salads</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#addition">추가메뉴 Extras</a></li>
					<li><a href="${ pageContext.request.contextPath}/menu/menuAll.do#beverage">음료 Drink</a></li>
				</ul>
			</li>
			<li><span class="mmenu-toggle"></span> <a href="#">EVENT
					<span class="tip tip-new">New</span></a>
				<ul>
					<li><a href="${ pageContext.request.contextPath}/event/eventPage.do">브랜드 EVENT</a></li>
					<li><a href="${ pageContext.request.contextPath}/event/storeEventPage.do">매장별 EVENT</a></li>
				</ul>
			</li>
			<li><span class="mmenu-toggle"></span> <a href="#">Store
					</a>
				<ul>
					<li><a href="${ pageContext.request.contextPath }/store/findStoreU.do">매장찾기</a></li>
					
				</ul>
			</li>
			<li><span class="mmenu-toggle"></span> <a href="${ pageContext.request.contextPath }/community/qna/qna.do">Community
					<span class="tip tip-hot">Hot!</span></a>
				<ul>
					<li><a href="${ pageContext.request.contextPath }/community/qna/qna.do">자주묻는 질문</a></li>
					<li><a href="${ pageContext.request.contextPath }/community/subway/notice.do">Subway소식</a></li>
					<li><a href="${ pageContext.request.contextPath }/community/claimWrite.do">1:1 문의</a></li>
					<li><a href="${ pageContext.request.contextPath }/community/snsPage.do"
						data-thumb-preview="${ pageContext.request.contextPath }/resources/img/previews/images(2).jpg">SNS 게시판</a></li>
				</ul>
			</li>
			<!-- 비회원 로그인하면 주문내역 조회 -->
			<c:if test="${ (empty loginVO) or (loginVO.type != 'U') }">
				<li><a href="${ pageContext.request.contextPath }/sign/orderCheck">주문내역조회</a></li>
			</c:if>
			<c:choose>
				<c:when test="${ empty loginVO and empty nonMember }">
					<li><a href="${ pageContext.request.contextPath }/sign/login.do">
						<i class="fa fa-user"></i> 로그인</a>
					</li>
					<li><a href="${ pageContext.request.contextPath }/sign/signUp.do">
						<i class="fa fa-user"></i> 회원가입</a>
					</li>
				</c:when>
				<c:when test="${ not empty loginVO }">
					<!-- 회원 로그인하면 My page -->
					<li><span class="mmenu-toggle"></span> <a href="#">My Page</a>
						<ul>
							<li><a href="${ pageContext.request.contextPath}/member/memberDetail.do">회원 정보</a></li>
							<li><a href="${ pageContext.request.contextPath}/member/Latest-Order.do?id=${loginVO.id}">최근 주문 내역</a></li>
							<li><a href="${ pageContext.request.contextPath}/member/myMenu.do?id=${loginVO.id}">나만의 메뉴</a></li>
							<li><a href="${ pageContext.request.contextPath}/member/myQnA.do?id=${loginVO.id}">나의 문의사항</a></li>
						</ul>
					</li>
					<li class="dropdown dropdown-mega dropdown-mega-signin signin" id="headerAccount">
						<a href="${ pageContext.request.contextPath }/sign/logout"> <i class="fa fa-user"></i> ${ loginVO.id } 님 &nbsp;&nbsp;logout</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="dropdown dropdown-mega dropdown-mega-signin signin"
						id="headerAccount"><a
						href="${ pageContext.request.contextPath }/sign/nonlogout?id=${nonMember.id}"><i
							class="fa fa-user"></i> ${ nonMember.name }</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</div>

<div id="mobile-menu-overlay"></div>