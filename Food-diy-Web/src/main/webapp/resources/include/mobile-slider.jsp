<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br/>
<div role="main" class="main">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<table>
					<tr>
						<td>
							<video width="100%" height="150px" loop="loop" controls autoplay>
								<source src="${pageContext.request.contextPath }/resources/video/subway.mp4" type="video/mp4">
							</video>
						</td>
					</tr>
				</table>
			</div>
		</div><br/>
			<div class="row">
			<!-- 이벤트  -->
			<div class="col-xs-6" style="text-align: center;">
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
							<strong style="text-align:center; font-style: italic; font-size: 15px;" class="heading-primary text-uppercase mb-md">EVENT</strong>
						</td>
					</tr>
					<tr>
						<td>
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<br/>
							</a>
						</td>
					</tr>
					<tr>
						<td>
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<span> 사또밥</span>
							</a>
						</td>
					</tr>
				</table>
			</div>
			<!-- SNS정보 -->
			<div class="col-xs-6" style="text-align: center;">
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
						<td>글쓴이</td>
						<td>추천수 2</td>
					</tr>
					<tr>
						<td colspan="2">
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
								<img width="50%" style="padding:5px;" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
							</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						내용 내용 내용<br/>
						내용 내용 내용<br/>
						내용 내용 내용<br/>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>