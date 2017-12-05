<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div role="main" class="main">
	<div class="container">
		<div class="row">
			<!-- 신메뉴  -->
			<div class="col-xs-6" style="text-align: center; padding: 5px;">
				<table border="1">
					<tr>
						<td>
							<span style="font-style: italic; font-weight: bold; font-size: 15px;">NEW Menu</span>
						</td>
					</tr>
					<!-- <div class="box-content"> -->
					<%-- 
							<c:forEach items="${ new }">
								<a href="${ pageContext.request.contextPath }/${ new.no }"><!-- 신메뉴 사진 상세보기 -->
									<img width="50%" src="${ new.img }"/>
									<span>${ new.name }</span>
								</a>
							</c:forEach>
							 --%>
					<tr>
						<td>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.jsp">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<span> 바나나</span>
							</a>
						</td>
					</tr>
					<tr>
						<td>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<span> 사또밥</span>
							</a>
						</td>
					</tr>
				</table>
				<!-- </div> -->
			</div>
			<!-- 공지사항 -->
			<div class="col-xs-6" style="text-align: center; padding: 5px;">
				<table border="1">
					<tr>
						<td>
						<span style="font-style: italic; font-weight: bold; font-size: 17px;">Notice</span>&nbsp;&nbsp;
							<a href="${ pageContext.request.contextPath }/community/noticeList.do">
								<span style="font-style: italic; font-weight: bold; font-size: 12px;">+more</span>
							</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<a href="${ pageContext.request.contextPath }/community/noticeDetail.do?no=${notice.no}">공지사항 제목</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<a href="${ pageContext.request.contextPath }/community/noticeDetail.do?no=${notice.no}">공지사항 제목</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<a href="${ pageContext.request.contextPath }/community/noticeDetail.do?no=${notice.no}">공지사항 제목</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<span> 사또밥</span>
							</a>
						</td>
					</tr>
					<!-- <div class="box-content"> -->
					<%-- 
							<c:forEach items="${ new }">
								<a href="${ pageContext.request.contextPath }/${ new.no }"><!-- 신메뉴 사진 상세보기 -->
									<img width="50%" src="${ new.img }"/>
									<span>${ new.name }</span>
								</a>
							</c:forEach>
							 --%>
				</table>
				<%-- <c:forEach items="${ notice }" begin="0" end="4">
							<div>
								<a href="${ pageContext.request.contextPath }/community/noticeDetail.do?no=${notice.no}">${ notice.title }</a>
							</div>
						</c:forEach> --%>
			</div>
			</div>
			<div class="row">
			<!-- 이벤트  -->
			<div class="col-xs-6" style="text-align: center; padding: 5px;">
				<%-- 
						<c:forEach items="${ cf }" begin="0" end="2">
							<a href="${ 광고페이지로 이동 }">
								<img width="100%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png"/>
							</a>
						</c:forEach>
						 --%>
				<table border="1">
					<tr>
						<td>
							<span style="font-style: italic; font-weight: bold; font-size: 15px;">EVENT</span>
						</td>
					</tr>
					<!-- <div class="box-content"> -->
					<%-- 
							<c:forEach items="${ new }">
								<a href="${ pageContext.request.contextPath }/${ new.no }"><!-- 신메뉴 사진 상세보기 -->
									<img width="50%" src="${ new.img }"/>
									<span>${ new.name }</span>
								</a>
							</c:forEach>
							 --%>
					<tr>
						<td>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
							</a>
						</td>
					</tr>
					<tr>
						<td>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<span> 사또밥</span>
							</a>
						</td>
					</tr>
				</table>
			<%-- <div class="col-xs-6 hidden-xs">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel" style="height: 600px">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img
								src="${ pageContext.request.contextPath }/resources/img/slides/1.jpg"
								alt="">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img
								src="${ pageContext.request.contextPath }/resources/img/slides/4.jpg"
								alt="">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img
								src="${ pageContext.request.contextPath }/resources/img/slides/3.jpg"
								alt="">
							<div class="carousel-caption"></div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div> --%>
			</div>
			<!-- SNS정보 -->
			<div class="col-xs-6" style="text-align: center; padding: 5px;">
				<%-- <div>
							<c:forEach items="${ sns }" begin="0" end="2">
								<table style="margin:5px 0px;">
									<tr>
										<td rowspan="2">${ sns.id }</td>
										<td>${ sns.reco }</td>
									</tr>
									<tr>
										<td colspan="2">
											<a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
												<img width="100%" src="${ sns.poto }"/>
											</a>
										</td>
									</tr>
									<tr>
										<td colspan="2"><hr/>${ sns.content }</td>
									</tr>
								</table>
							</c:forEach>
						</div> --%>
				<table border="1">
					<tr>
						<th colspan="2" style="text-align: center; padding: 5px;">
							<span style="font-style: italic; font-weight: bold; font-size: 15px;">
								SNS
							</span>
						</th>
					</tr>
					<tr>
						<td>글쓴이</td>
						<td>추천수 2</td>
					</tr>
					<tr>
						<td colspan="2">
							<a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
							</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						내용 내용 내용<br/>
						내용 내용 내용
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>