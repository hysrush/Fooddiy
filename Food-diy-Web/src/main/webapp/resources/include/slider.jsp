<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div role="main" class="main">
	<div class= "container">
		<div class="row">
			<div class="col-xs-12 col-md-3"><br/>
				<div class="col-xs-12 col-md-12" style="text-align: center; padding: 5px;">
					 <table>
						<tr>
							<td>
								<video width="266px" height="150px" loop="loop" controls autoplay>
								  <source src="${pageContext.request.contextPath }/resources/video/subway.mp4" type="video/mp4">
								</video>
							</td>
						</tr>
					</table>
				</div>
				<!-- 신메뉴  -->
				<div class="col-xs-12 col-md-12" style="text-align: center; padding: 5px;">
					<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/noticeDetail.jsp">
						<img width="100%" src="${ pageContext.request.contextPath }/resources/img/main/main_celeb.jpg"/>
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
				
				<!-- 공지사항 -->
				<div class="col-xs-12 col-md-12" style="text-align: center;">
					<table border="1">
						<tr>
							<td>
								<strong style="text-align: center; font-style: italic; font-size: 15px;" class="heading-primary text-uppercase mb-md">Notice</strong>
								<span style="display: inline-table; align: right; font-size: 11px;">
									<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/noticeList.do"> +more</a>
								</span>
							</td>
							
						
						</tr>
						<c:forEach items="${ notice }" var="n">
						<tr>
							<td colspan="2">
								<span style="text-align: center; font-size: 12px;" class="heading-primary text-uppercase mb-md">
									<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/noticeDetail.do?no=${n.no}">${ n.title }</a>
								</span>
							</td>
						</tr>
						</c:forEach>
					</table>
				</div>
				
				<!-- 이벤트  -->
					<div class="col-xs-12 col-md-12" style="text-align: center; padding:5px;">
						 <table border="1">
							<tr>
								<td colspan="2">
									<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/noticeDetail.">
										<img width="100%" src="${ pageContext.request.contextPath }/resources/img/main/team1.jpg"/>
									</a>
								</td>
							</tr>
						</table>
					</div>
				</div><br/>
				
			<!--  슬라이드 -->
			<div class="col-md-6">
			<table border="1" style="height: 720px">
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
				<div class="col-xs-12 col-md-3" style="text-align: center; padding:5px;">
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
								<td><strong style="text-align: center; font-size: 11px;" class="heading-primary text-uppercase mb-md">홍길동</strong></td>
								<td><strong style="text-align: center; font-size: 11px;" class="heading-primary text-uppercase mb-md">추천수 2</strong></td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
										<img width="50%" align="left" src="${ pageContext.request.contextPath }/resources/img/menu/mn-brkfst-baceggchs.jpg"/>
									</a>
									<span style="text-align: center; font-size: 12px;" class="heading-primary">
										내용 내용 내용 
										내용 내용 내용 
									</span>
								</td>
							</tr>
						</table>
					</div>
			</div>
		</div>
	</div>

<!-- </div> -->