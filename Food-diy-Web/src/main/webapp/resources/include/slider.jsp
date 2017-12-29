<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div role="main" class="main"><br/>
	<div class= "container"><br/>
		<div class="row"  style="max-height: 760px;">
			<div class="col-md-3 main">
				<!-- 동영상 -->
					<div class="col-md-12 main">
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
									<table>
										<tr style="background-color: #fdcb04">
											<td style="width:100%; padding:3% 0">
												<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/subway/notice.do">
													<strong style="font-style: italic; font-size: 15px;">&nbsp;What's New</strong>
												</a>
											</td>
											<td style="padding-right: 3%">
												<span style="display: inline-table; align: right; font-size: 12px; font-weight: bolder;">
													<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/subway/notice.do"> +more</a>
												</span>
											</td>
										</tr>
										<c:forEach items="${ notice }" var="n">
										<tr style="border-bottom: 1px solid #fdcb04;">
											<td colspan="2" style="width: 292px;">
												<span style="font-size: 12px;" class="heading-primary text-uppercase mb-md">
													<a href="${ pageContext.request.contextPath }/community/subway/noticeDetail.do?no=${n.no}" title="${ n.title }">
														<c:choose >
															<c:when test="${ n.type eq 'A' }">
																<c:choose>
																	<c:when test="${fn:length(n.title) > 23}">
																		<strong>[공지사항]&nbsp;</strong><span><c:out value="${fn:substring(n.title,0,21)}"/>....</span>
																	</c:when>
																	<c:otherwise>
																		<strong>[공지사항]&nbsp;</strong><span><c:out value=" ${n.title}"/></span>
																	</c:otherwise>
																</c:choose>
															</c:when>
															<c:otherwise>
																<c:choose>
																	<c:when test="${fn:length(n.title) > 23}">
																		<strong>[보도자료]&nbsp;</strong><span><c:out value="${fn:substring(n.title,0,21)}"/>....</span>
																	</c:when>
																	<c:otherwise>
																		<strong>[보도자료]&nbsp;</strong><span><c:out value=" ${n.title}"/></span>
																	</c:otherwise>
																</c:choose>
															</c:otherwise>
														</c:choose>
													</a>
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
													<a style="text-decoration: none" href="${ pageContext.request.contextPath }/event/eventDetail.do?no=${e.no}">
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
				<div class="col-sm-6 main">
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
					<!-- SNS정보 -->
					<div class="col-sm-12 main" >
						<table style="width: 100%; table-layout:fixed">
							<tr style="background-color: #019847;">
								<td width="50%" style="padding:3% 0">
									<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/snsPage.do">
										<strong style="font-style: italic; font-size: 15px;">&nbsp;What's BEST SNS</strong>
									</a>
								</td>
								<td colspan="2" align="right" style="padding-right: 2%">
									<span style="display: inline-table; align-content : center; font-size: 12px; font-weight: bolder;">
										<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/snsPage.do">
											<span> +more </span>
										</a>
									</span>
								</td>
							</tr>
							<c:forEach items="${ sns }" var="s" end="2">
								<tr style="border-bottom: 1px solid #019847;">
									<td colspan="3" align="right" style="padding: 2% 0">
										<i class="fa fa-user"></i>&nbsp;<strong style="font-size: 12px; font-weight: bolder;">${ s.id }&nbsp;</strong>
										<strong style="font-size: 12px;">
											<%-- <img width="8%" src="${pageContext.request.contextPath }/resources/img/AA.jpg"/> --%>
											&nbsp;<i class="fa fa-thumbs-up" style="color: #f70000;"></i>&nbsp;${ s.like }
										</strong>
									</td>
								<!-- 	<td align="right">
										
									</td> -->
								</tr>
								<c:choose>
									<c:when test="${fn:length(s.title) > 20}">
										<tr>
											<td rowspan="2">
												<a href="${ pageContext.request.contextPath }/community/snsPage.do" style="text-decoration:none">
													<img style="width:100%; height: 175px;" src="../upload/SNS/${ s.fileName }" alt="Loading...">
												</a>
											</td>
											<td colspan="2" style="/* text-overflow: ellipsis; overflow: hidden; */ padding-top: 3%; padding-left: 2%" title="${ s.title }">
												<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsPage.do">
													<strong style="font-size: 13px; font-weight: bolder;">
														<c:out value="${fn:substring(s.title,0,19)}"/>....
													</strong>
												</a>
											</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr>
											<td rowspan="2">
												<a href="${ pageContext.request.contextPath }/community/snsPage.do" style="text-decoration:none">
													<img style="width:100%; height: 175px;" src="../upload/SNS/${ s.fileName }" alt="Loading...">
												</a>
											</td>
											<td colspan="2" style="/* text-overflow: ellipsis; overflow: hidden; */ padding-top: 3%; padding-left: 2%" title="${ s.title }">
												<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsPage.do">
													<strong style="font-size: 13px; font-weight: bolder;">
														<c:out value="${s.title}"/>
													</strong>
												</a>
											</td>
										</tr>
									</c:otherwise> 
								</c:choose>
								<c:choose>
									<c:when test="${fn:length(s.content) > 30}">
										<tr>
											<td colspan="2" style="padding-top: 3%; padding-left: 2%" title="${ s.content }">
												<a href="${ pageContext.request.contextPath }/community/snsPage.do" style="font-size: 11px">
													<small style="font-size: 11px; padding: 0 1%; font-weight: bold;">
														<c:out value="${fn:substring(s.content,0,27)}"/>....
													</small>
												</a>
											</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="2" style="padding-top: 3%; padding-left: 2%" title="${ s.content }">
												<a href="${ pageContext.request.contextPath }/community/snsPage.do" style="font-size: 11px">
													<small style="font-size: 11px; padding: 0 1%; font-weight: bold;">${ s.content }</small>
												</a>
											</td>
										</tr>
									</c:otherwise> 
								</c:choose>
							<%-- 	<tr  style="border-bottom: 1px solid #019847;">
									<td rowspan="2">
										<a href="${ pageContext.request.contextPath }/community/snsPage.do" style="text-decoration:none">
											<img style="width:100%; height: 175px;" src="../upload/SNS/${ s.fileName }" alt="Loading...">
										</a>
									</td>
									<td align="center" colspan="2" style="text-overflow: ellipsis; overflow: hidden;" title="${ s.title }">
										<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsPage.do">
											<nobr><strong style="font-size: 13px; font-weight: bolder;">${ s.title }</strong></nobr>
										</a>
									</td>
								</tr>
								<tr>
									<td align="center" colspan="2" style="text-overflow: ellipsis; overflow: hidden;" title="${ s.content }">
										<a href="${ pageContext.request.contextPath }/community/snsPage.do">
											<nobr><small style="font-size: 11px; padding: 0 1%; font-weight: bold;">${ s.content }</small></nobr>
										</a>
									</td>
								</tr> --%>
						</c:forEach>
						</table>
					</div>
					<!-- 매장 찾기 -->
					<div class="col-sm-12" style="margin-top: 1%"><br/>
						<a href="${ pageContext.request.contextPath }/store/findStoreU.do">
							<img width="100%" src="${ pageContext.request.contextPath }/resources/img/subway-nuevo-logo.jpg"/>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- </div> -->