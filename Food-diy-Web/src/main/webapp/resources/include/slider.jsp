<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div role="main" class="main">
	<div class= "container">
		<div class="row">
			<div class="col-sm-3 main">
				<div class="col-sm-12 main">
					<table>
						<tr>
							<td>
								<video style="width: 100%; height: 50%;" loop="loop" controls autoplay>
									<source src="${pageContext.request.contextPath }/resources/video/subway.mp4" type="video/mp4">
								</video>
							</td>
						</tr>
					</table>
				</div>
				
				<!-- 신메뉴  -->
				<div class="col-sm-12 main">
					<a style="text-decoration: none" href="${ pageContext.request.contextPath }/notice/noticeDetail.jsp">
						<img width="100%" src="${ pageContext.request.contextPath }/resources/img/main/main_celeb.jpg" />
					</a>
					<%-- <table border="1">
						<!-- <tr>
							<td>
								<span style="font-style: italic; font-weight:bold; font-size: 15px;">NEW Menu</span>
								<strong style="text-align:center; font-style: italic; font-size: 15px;" class="heading-primary text-uppercase mb-md">NEW Menu</strong>
							</td>
						</tr> -->
						<tr>
							<td>
								<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/noticeDetail.jsp">
								<img width="100%" src="${ pageContext.request.contextPath }/resources/img/main/main_celeb.jpg"/>
								</a>
							</td>
						</tr>
					</table> --%>
				</div>
				<!-- 이벤트  -->
				<div class="col-sm-12 main" style="text-align: center;">
					<table border="1">
						<c:forEach items="${ event }" var="e">
							<tr>
								<td colspan="2"><a style="text-decoration: none"
									href="${ pageContext.request.contextPath }/community/snsDetail.do?no=${e.no}">
										<img width="100%" src="${ pageContext.request.contextPath }/upload/${e.imgFileName}" />
								</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<br />
			<!--  슬라이드 -->
			<div class="col-sm-6 main">
			<table border="1">
				<tr>
					<td>
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
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
							<img style="height: 720px"
								src="${ pageContext.request.contextPath }/resources/img/main/써브웨이_진행중인_이벤트-블록행사-포스터.jpg"
								alt="">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img style="height: 720px"
								src="${ pageContext.request.contextPath }/resources/img/main/써브웨이_진행중인_이벤트-블록행사-포스터.jpg"
								alt="">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img style="height: 720px"
								src="${ pageContext.request.contextPath }/resources/img/main/써브웨이_진행중인_이벤트-블록행사-포스터.jpg"
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
					</td>
				</tr>
			</table>
			</div>
			
			<!-- SNS정보 -->
				<div class="col-sm-3 main" style="text-align: center;">
					<!-- 공지사항 -->
					<div class="col-sm-12 main" style="text-align: center;">
						<table border="1">
							<tr>
								<td>
									<strong style="text-align: center; font-style: italic; font-size: 15px;" class="heading-primary text-uppercase mb-md">Notice</strong>
									<span style="display: inline-table; align: right; font-size: 11px;">
										<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/noticeList.do"> +more</a>
									</span>
								</td>
							</tr>
							<c:forEach items="${ notice }" var="n">
								<tr>
									<td colspan="2" style="width: 290px;">
										<span style="font-size: 12px;" class="heading-primary text-uppercase mb-md">
											<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/noticeDetail.do?no=${n.no}">${ n.title }</a>
										</span>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="col-sm-12 main">
						<table border="1">
							<c:forEach items="${ sns }" var="s">
								<tr>
									<td>${ s.id }</td>
									<td>추천수 ${ s.like }</td>
								</tr>
								<tr>
									<td style="width: 120px;">
										<a href="${ pageContext.request.contextPath }/community//snsDetail.do?no=${s.no}">
											<img style="width:100%" src="../upload/${ s.fileName }"/>
										</a>
									</td>
									<td style="width: 170px;">
									<strong> ${ s.title }</strong><br/>
									<small>${ s.content }</small>
									</td>
								</tr>
						</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- </div> -->