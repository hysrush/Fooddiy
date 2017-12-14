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
				<table border="1">
					<tr>
						<td>
							<strong style="text-align:center; font-style: italic; font-size: 15px;" class="heading-primary text-uppercase mb-md">EVENT</strong>
						</td>
					</tr>
					<c:forEach items="${ event }" var="e">
					<tr>
						<td>
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/noticeDetail.do?no=${e.no}">
								<img width="50%" style="padding:5px;" src="../upload/${ e.imgFileName }" />
								<br/>
							</a>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<!-- SNS정보 -->
			<div class="col-xs-6" style="text-align: center;">
				<table style="margin: 5px 0px;" border="1">
				<c:forEach items="${ sns }" var="s">
						<tr>
						<td>${ s.id }</td>
						<td>추천수 2</td>
					</tr>
					<tr>
						<td colspan="2">
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsDetail.do?no=${s.no}">
								<img width="50%" style="padding:5px;" src="../upload/${ s.fileName }" />
							</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							${ s.content }
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>