<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br/>
<div role="main" class="main">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 main">
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
			<div class="col-xs-6 main" style="text-align: center;">
				<table>
					<!-- <tr>
						<td>
							<strong style="text-align:center; font-style: italic; font-size: 15px;" class="heading-primary text-uppercase mb-md">EVENT</strong>
						</td>
					</tr> -->
					<c:forEach items="${ event }" var="e">
					<tr>
						<td>
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/notice/noticeDetail.do?no=${e.no}">
								<img style="width: 100%; margin-left:5%;" src="../upload/${ e.imgFileName }" />
								<br/>
							</a>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<!-- SNS정보 -->
			<div class="col-xs-6 main" style="text-align: center !important;">
				<table  style="width: 160px;">
				<c:forEach items="${ sns }" var="s" begin="0" end="0">
						<tr>
						<td>추천수 ${ s.like }</td>
						<td>${ s.id }</td>
					</tr>
					<tr>
						<td colspan="2">
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsDetail.do?no=${s.no}">
								<img style="width: 100%; margin-left:5%;" src="../upload/${ s.fileName }"/><br/>
							</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsDetail.do?no=${s.no}">
								<strong>${ s.title }</strong>
							</a>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsDetail.do?no=${s.no}">
								<small>${ s.content }</small>
							</a>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>