<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div role="main" class="main">
	
	<div class= "container">
		<div class="row">
										<!-- 공지사항 -->
			<div class="col-xs-12 col-md-2" style="margin:10px 0px">
					<div style="text-align:center; padding:5px;">공지사항&nbsp;
					<a href="${ pageContext.request.contextPath }/notice/noticeList.jsp">more+</a><hr/>
						<div><a href="${ pageContext.request.contextPath }/notice/noticeDetail.">공지사항 제목</a></div>
						<div><a href="${ pageContext.request.contextPath }/notice/detail.do">공지사항 제목</a></div>
						<div><a href="${ pageContext.request.contextPath }/notice/detail.do">공지사항 제목</a></div>
						<%-- <c:forEach items="${ notice }" begin="0" end="4">
							<div>
								<a href="${ pageContext.request.contextPath }/notice/detail.do">${ notice.title }</a>
							</div>
						</c:forEach> --%>
					</div>
										<!-- 신메뉴  -->
					<div style="text-align:center; margin: 5px 0px; padding:5px;">신 메뉴 출시!<hr/>
						<div class="box-content">
							<%-- 
							<c:forEach items="${ new }">
								<a href="${ pageContext.request.contextPath }/${ new.no }"><!-- 신메뉴 사진 상세보기 -->
									<img width="50%" src="${ new.img }"/>
									<span>${ new.name }</span>
								</a>
							</c:forEach>
							 --%>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.jsp">
								<img width="50%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<span>바나나킥</span><br/>
							</a>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="50%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png" />
								<span>사또밥</span><br/>
							</a>
						</div>
					</div>
											<!-- 광고  -->
					<div class="hidden-xs" style="text-align: center; padding:5px;">광고<hr/>
						<%-- 
						<c:forEach items="${ cf }" begin="0" end="2">
							<a href="${ 광고페이지로 이동 }">
								<img width="100%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png"/>
							</a>
						</c:forEach>
						 --%>
						<div>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="100%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png"/>
							</a>
						</div>
					</div>
				</div>
			
				<br/><br/><br/>
								<!--  슬라이드 -->
					<div class ="col-xs-12 col-md-6 visible-lg">	
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="height:600px">
							  <!-- Indicators -->
							  <ol class="carousel-indicators">
							    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
							  </ol>
							
							  <!-- Wrapper for slides -->
							  <div class="carousel-inner" role="listbox">
							    <div class="item active">
							      <img src="${ pageContext.request.contextPath }/resources/img/slides/1.jpg" alt="">
							      <div class="carousel-caption">
							       
							      </div>
							    </div>
							    <div class="item">
							      <img src="${ pageContext.request.contextPath }/resources/img/slides/2.jpg" alt="">
							      <div class="carousel-caption">
							       
							      </div>
							    </div>
							    
							  </div>
							
							  <!-- Controls -->
							  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							    <span class="sr-only">Previous</span>
							  </a>
							  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							    <span class="sr-only">Next</span>
							  </a>
							</div>
						</div>
					
	
							<!-- mobile 슬라이드 --> 
						<div class ="col-xs-12 hidden-lg">	
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="height:300px">
							  <!-- Indicators -->
							  <ol class="carousel-indicators">
							    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
							  </ol>
							
							  <!-- Wrapper for slides -->
							  <div class="carousel-inner" role="listbox">
							    <div class="item active">
							      <img src="${ pageContext.request.contextPath }/resources/img/slides/xs-1.jpg" alt="">
							      <div class="carousel-caption">
							       
							      </div>
							    </div>
							    <div class="item">
							      <img src="${ pageContext.request.contextPath }/resources/img/slides/xs-2.jpg" alt="">
							      <div class="carousel-caption">
							       
							      </div>
							    </div>
							    
							  </div>
							
							  <!-- Controls -->
							  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							    <span class="sr-only">Previous</span>
							  </a>
							  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							    <span class="sr-only">Next</span>
							  </a>
							</div>
						</div>
	

				<div class="col-xs-6 col-md-3" style="margin:10px 0px">
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
					<div class="hidden-xs">
						<table>
							<tr>
								<td>홍길동</td>
								<td>추천수 2</td>
							</tr>
							<tr>
								<td colspan="2"><hr/>
									<a href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
										<img width="100%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png"/>
									</a>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									스테이크 치즈 ~~이렇게 먹으면 맛있어요
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- </div> -->