<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="portfolio-list sort-destination" data-sort-id="portfolio">
	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal"
			data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten"> <span
				class="thumb-info-wrapper"> <img
					src="${ pageContext.request.contextPath }/resources/img/sauce/sauce_balsamic.jpg"
					class="img-responsive" alt=""
					style="margin-top: 50px; margin-bottom: 50px"> <span
					class="thumb-info-title"> <span class="thumb-info-inner">미트볼</span>
						<span class="thumb-info-type">4,900</span>
				</span> <span class="thumb-info-action"> <a
						href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
							<span class="thumb-info-action-icon"> <i
								class="fa fa-plus"></i>
						</span>
					</a>
				</span>
			</span>
			</span>
		</div>
	</li>
	<li class="col-md-4 col-sm-6 col-xs-6 isotope-item recommend">
		<div class="portfolio-item" data-toggle="modal"
			data-target="#largeModal">
			<span class="thumb-info thumb-info-lighten"> <span
				class="thumb-info-wrapper"> <img
					src="${ pageContext.request.contextPath }/resources/img/sauce/sauce_basil.jpg"
					class="img-responsive" alt=""
					style="margin-top: 50px; margin-bottom: 50px"> <span
					class="thumb-info-title"> <span class="thumb-info-inner">미트볼</span>
						<span class="thumb-info-type">4,900</span>
				</span> <span class="thumb-info-action"> <a
						href="${ pageContext.request.contextPath }/notice/SNSBoard.jsp">
							<span class="thumb-info-action-icon"> <i
								class="fa fa-plus"></i>
						</span>
					</a>
				</span>
			</span>
			</span>
		</div>
	</li>
</ul>