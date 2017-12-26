<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div role="main" class="main"><br/>
	<div class= "container"><br/>
		<div class="row"  style="max-height: 760px;">
			<div class="col-sm-3 main">
				<!-- 동영상 -->
					<div class="col-sm-12 main">
						<table>
							<tr>
								<td>
									<video style="width: 100%; height: 40%;" controls autoplay>
										<source src="${pageContext.request.contextPath }/resources/video/subway.mp4" type="video/mp4">
									</video>
								</td>
							</tr>
							<tr>
								<td>
									<!-- 공지사항 -->
									<table style="margin-top: 5%">
										<tr style="border-bottom: 1px solid olive;">
											<td style="width:100%">
												<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/notice.do">
													<strong style="font-style: italic; font-size: 15px;">&nbsp;What's New</strong>
												</a>
											</td>
											<td>
												<span style="display: inline-table; align: right; font-size: 11px;">
													<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/notice.do"> +more</a>
												</span>
											</td>
										</tr>
										<c:forEach items="${ notice }" var="n">
										<tr style="border-bottom: 1px solid olive;">
											<td colspan="2" style="width: 292px;">
												<span style="font-size: 12px; text-overflow:ellipsis; overflow:hidden" class="heading-primary text-uppercase mb-md">
													<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/noticeDetail.do?no=${n.no}">&nbsp;${ n.title }</a>
												</span>
											</td>
										</tr>
										</c:forEach>
									</table>
								</td>
							</tr>
							<tr>
								<td><br/>
									<table>
										<c:forEach items="${ event }" var="e">
											<tr>
												<td colspan="2">
													<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/snsDetail.do?no=${e.no}">
														<img width="100%" src="${ pageContext.request.contextPath }/upload/${e.imgFileName}" />
													</a>
												</td>
											</tr>
										</c:forEach>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<img width="100%" src="${ pageContext.request.contextPath }/resources/img/Left_bn_20130903.jpg"/>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!--  슬라이드 -->
				<div class="col-sm-6 main" st>
					<table>
						<tr>
							<td>
								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
		
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img style="width:100%"
										src="${ pageContext.request.contextPath }/resources/img/main/morning_img.jpg"
										alt="">
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img style="width:100%"
										src="${ pageContext.request.contextPath }/resources/img/main/new_product_20171110 (1).jpg"
										alt="">
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img style="width:100%"
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
				<div class="col-sm-3 main">
					<!-- 신메뉴  -->
					<div class="col-sm-12 main">
						<a style="text-decoration: none" href="${ pageContext.request.contextPath }/menu/menuAll.do#recommend">
							<img width="100%" src="${ pageContext.request.contextPath }/resources/img/main/main_celeb.jpg" />
						</a>
					</div>
					<!-- SNS정보 -->
					<div class="col-sm-12 main" >
						<table style="width: 100%; margin-top: 2%">
							<tr style="border-bottom: 1px solid olive;">
								<td width="50%">
									<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/snsPage.do">
										<strong style="font-style: italic; font-size: 15px;">&nbsp;What's BEST SNS</strong>
									</a>
								</td>
								<td colspan="2" align="right">
									<span style="display: inline-table; align-content : center; font-size: 11px;">
										<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/snsPage.do"> +more</a>
									</span>
								</td>
							</tr>
							<c:forEach items="${ sns }" var="s" end="1">
								<tr style="border-bottom: 1px solid olive;">
									<td></td>
									<td align="left"><strong style="font-size: 12px; margin-left: 5%">${ s.id }</strong></td>
									<td align="right"><strong style="font-size: 12px; padding-top: 3%; padding-bottom: 3%">추천수 ${ s.like }</strong></td>
								</tr>
								<tr style="border-bottom: 1px solid olive;">
									<td>
										<a href="${ pageContext.request.contextPath }/community/snsPage.do">
											<img style="width:100%; height: 175px;" src="../upload/${ s.fileName }" alt="Loading...">
										</a>
									</td>
									<td align="center" colspan="2">
										<a href="${ pageContext.request.contextPath }/community/snsPage.do">
											<strong> ${ s.title }</strong><br/>
											<small>${ s.content }</small>
										</a>
									</td>
								</tr>
						</c:forEach>
						</table>
					</div>
					<!-- 매장 찾기 -->
					<div class="col-sm-12" style="margin-top: 2%">
						<a href="${ pageContext.request.contextPath }/store/findStoreU.do">
							<img width="100%" src="${ pageContext.request.contextPath }/resources/img/subway-nuevo-logo.jpg"/>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- </div> -->