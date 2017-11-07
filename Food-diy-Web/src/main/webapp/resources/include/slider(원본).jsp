<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div role="main" class="main">
	<!-- <div class="container"> -->
		<div class="row">
			<div class="col-xs-6 col-md-3 hidden-xs" style="margin:10px 0px">
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
					<div style="text-align: center; padding:5px;">광고<hr/>
						<%-- 
						<c:forEach items="${ cf }" begin="0" end="2">
							<a href="${ 광고페이지로 이동 }">
								<img width="100%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png"/>
							</a>
						</c:forEach>
						 --%>
						<div>
							<a href="${ pageContext.request.contextPath }/notice/noticeDetail.">
								<img width="100%" src="${ pageContext.request.contextPath }/resources/img/admin-banner.png"/></a>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-6">
				<br/><br/><br/>
				<!-- 슬라이드 시작 -->	 
					<div id="carousel-example-generic" class="carousel slide " data-ride="carousel" style="align:center; width:700px; position:inherit;">
					               <ol class="carousel-indicators">
					                     <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					                     <li data-target="#carousel-example-generic" data-slide-to="1"></li>
					                     <li data-target="#carousel-example-generic" data-slide-to="2"></li>
					                     <li data-target="#carousel-example-generic" data-slide-to="3"></li>
					                     <li data-target="#carousel-example-generic" data-slide-to="4"></li>
							     <li data-target="#carousel-example-generic" data-slide-to="5"></li>
							     <li data-target="#carousel-example-generic" data-slide-to="6"></li>
							     <li data-target="#carousel-example-generic" data-slide-to="7"></li>
					                </ol>
					                <div class="carousel-inner">
							    <div class="item active">                  
					<div class="videos">
					    <a href="https://www.youtube.com/watch?v=Dic27EnDDls" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/Dic27EnDDls/maxresdefault.jpg" class="img-responsive">
					    </a>
					</div>
							    </div>	 
							    
							    <div class="item">	
					 <div class="videos">
					    <a href="https://www.youtube.com/watch?v=2t-fMNu-C_Y" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/2t-fMNu-C_Y/maxresdefault.jpg" class="img-responsive">
					    </a>
					</div>
							  </div>	
					                  
							  <div class="item">
					<div class="videos">
					    <a href="https://www.youtube.com/watch?v=jqZ2Ie4pd30" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/jqZ2Ie4pd30/maxresdefault.jpg" class="img-responsive">
					    </a>
					 </div>											
					                   </div>
					   
							  <div class="item">
					<div class="videos">
					    <a href="https://www.youtube.com/watch?v=7_mNEE3Y96A" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/7_mNEE3Y96A/maxresdefault.jpg" class="img-responsive">
					    </a>
					</div>
							   </div>
							
							   <div class="item">
					<div class="videos">
					    <a href="https://www.youtube.com/watch?v=iyE_BcxBq88" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/iyE_BcxBq88/maxresdefault.jpg" class="img-responsive">
					    </a>
					</div>
							  </div><!-- item close -->
							
							  <div class="item">
					<div class="videos">
					    <a href="https://www.youtube.com/watch?v=c-WBmg7RG4s" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/c-WBmg7RG4s/maxresdefault.jpg" class="img-responsive">
					    </a>
					</div>
							 </div><!-- item close -->
							
							 <div class="item">
					<div class="videos">
					    <a href="https://www.youtube.com/watch?v=VOAoF09QG6k" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/VOAoF09QG6k/maxresdefault.jpg" class="img-responsive">
					    </a>
					</div>
							</div><!-- item close -->
							
							<div class="item">
					<div class="videos">
					    <a href="https://www.youtube.com/watch?v=p5yK-IH28jw" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
					        <span></span>
					        <img src="http://img.youtube.com/vi/p5yK-IH28jw/maxresdefault.jpg" class="img-responsive">
					    </a>
					</div>
							</div><!-- item close -->									
					
					        </div><!-- carousel-inner close -->
					               
						  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
					                    <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control" href="#carousel-example-generic" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
					                      </span>
					         </a>
					</div><!-- 슬라이드 마침 -->
					<hr/>
					<!-- 2번째 슬라이드 시작 -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="position:inherit; width:700px;">
						<ol class="carousel-indicators">
					    	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							<li data-target="#carousel-example-generic" data-slide-to="4"></li>
							<li data-target="#carousel-example-generic" data-slide-to="5"></li>
							<li data-target="#carousel-example-generic" data-slide-to="6"></li>
							<li data-target="#carousel-example-generic" data-slide-to="7"></li>
						</ol>
					    <div class="carousel-inner">
							<div class="item active">                  
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=Dic27EnDDls" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/Dic27EnDDls/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>
							</div>	 
							    
							<div class="item">	
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=2t-fMNu-C_Y" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/2t-fMNu-C_Y/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>
							</div>	
					                  
							<div class="item">
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=jqZ2Ie4pd30" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/jqZ2Ie4pd30/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>											
							</div>
							<div class="item">
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=7_mNEE3Y96A" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/7_mNEE3Y96A/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>
							</div>
							<div class="item">
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=iyE_BcxBq88" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/iyE_BcxBq88/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>
							</div><!-- item close -->
							
							<div class="item">
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=c-WBmg7RG4s" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/c-WBmg7RG4s/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>
							</div><!-- item close -->
							
							<div class="item">
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=VOAoF09QG6k" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/VOAoF09QG6k/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>
							</div><!-- item close -->
							
							<div class="item">
								<div class="videos">
									<a href="https://www.youtube.com/watch?v=p5yK-IH28jw" data-toggle="lightbox" data-gallery="youtubevideos" class="video">
										<img src="http://img.youtube.com/vi/p5yK-IH28jw/maxresdefault.jpg" class="img-responsive">
									</a>
								</div>
							</div><!-- item close -->									
						</div><!-- carousel-inner close -->
					</div><!-- 슬라이드 마침 -->
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
<!-- </div> -->