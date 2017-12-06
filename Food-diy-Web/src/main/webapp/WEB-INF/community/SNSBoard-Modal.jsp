<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ajax-container">
	<div class="row">
		<div class="col-md-12">
			<div class="portfolio-title">
				<div class="row">
					<div class="portfolio-nav-all col-md-1">
						<a href="#" data-ajax-portfolio-close data-tooltip data-original-title="Close"><i class="fa fa-th"></i></a>
					</div>
					<div class="col-md-10 center">
						<h2 class="mb-none">${snsVO.title }<!--  DB 제목값 --></h2>
					</div>
					<div class="portfolio-nav col-md-1">
						<a href="#" data-ajax-portfolio-prev class="portfolio-nav-prev" data-tooltip data-original-title="Previous"><i class="fa fa-chevron-left"></i></a>
						<a href="#" data-ajax-portfolio-next class="portfolio-nav-next" data-tooltip data-original-title="Next"><i class="fa fa-chevron-right"></i></a>
					</div>
				</div>
			</div>

			<hr class="tall">
		</div>
	</div>

	<div class="row mb-xl">
		<div class="col-md-4">

			<span class="img-thumbnail">
				<img alt="" class="img-responsive" src="../upload/${ snsVO.fileName }"> <!--  DB 첨부 이미지 값 -->
			</span>
				<a href="#" class="btn btn-primary btn-icon"><i class="fa fa-external-link"></i>장바구니로!</a>
				<button type="button" class="mb-xs mt-xs mr-xs btn btn-borders btn-info"><i class="fa fa-thumbs-up"></i> </button>
		</div>

		<div class="col-md-8">

			<div class="portfolio-info">
				<div class="row">
					<div class="col-md-12 center">
						<ul>
							<li>
								<a href="#" data-tooltip data-original-title="Like"><i class="fa fa-heart"></i>${snsVO.like }</a>  <!--  좋아요 숫자  -->
							</li>
							<li>
								<i class="fa fa-calendar"></i> ${snsVO.regDate } <!--  등록일 DB값 -->
							</li>
						
						</ul>
					</div>
				</div>
			</div>
				<div class="testimonial testimonial-style-3">
							
					
						<div class="testimonial-author">
							<div class="testimonial-author-thumbnail">
								<img src="${ pageContext.request.contextPath }/resources/img/clients/client-1.png" class="img-responsive img-circle" alt="">
							</div>
								<p><strong>${loginVO.id}</strong></p>
						</div>
					</div>

						<p class="mt-xlg">${snsVO.content }<!--  DB 내용 값 --></p>
							
								<div class = "row">
									<table class="table">  <!--  DB에서 재료정보 받아오는 테이블  -->
										<thead>
											<tr>
												<th>
													메뉴 이름
												</th>
												<th>
													추가재료 
												</th>
												<th>
													소스
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													이탈리안 BMT
												</td>
												<td>
													에그마요 추가 , 더블미트 추가  할라피뇨 - 
												</td>
												<td>
													렌치, 핫칠리
												</td>
												
											</tr>
											
										</tbody>
									</table>
								
								
								</div>
							<div class="comment">
								<div class="testimonial testimonial-style-3">
									
										<div class="testimonial-author">
											<div class="testimonial-author-thumbnail">
												<img src="${ pageContext.request.contextPath}/resources/img/clients/client-10.jpg" class="img-responsive img-circle" alt="">
											</div>
												<p><strong>kkiceama</strong></p>
											<span class="pull-right">
												<span> <a href="#"><i class="fa fa-reply"></i>Update</a></span>
											</span>
												<p><strong>맛있게 잘 먹었어요~~</strong>
											<span class="date pull-right">November 12, 2017 at 1:38 pm</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
    