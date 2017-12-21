<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br/>
<div role="main" class="main">
	<div class="container">
		<div class="row"><br/>
			<div class="col-xs-12 main">
				<table style="text-align: center;">
					<tr>
						<td colspan="2" align="center">
							<video width="100%" controls autoplay>
								<source src="${pageContext.request.contextPath }/resources/video/subway.mp4" type="video/mp4">
							</video><br/><br/>
						</td>
					</tr>
					<tr>
						<td style="width: 160px;">
							<!-- <strong style="font-size: 20px; font-style: italic; color:#feca07;"> BEST </strong> -->
							<strong style="font-weight: bold; font-size: 20px"> SNS </strong>
							<img width="15%" src="${ pageContext.request.contextPath }/resources/img/다운로드.jpg"/> 
							
						</td>
						<td>
							<span style="display: inline-table; align: right; font-size: 11px;">
								<a style="text-decoration: none" href="${ pageContext.request.contextPath }/community/snsPage.do"> more+</a>
							</span>
						</td>
					</tr>
					<tr>
						<c:forEach items="${ sns }" var="s" begin="0" end="1">
						<td><br/>
							<table>
								<tr>
									<td><strong style="margin-left: 5%; font-weight: bold; color:aqua;">&nbsp;&nbsp;추천수 ${ s.like }</strong></td>
									<td><strong style="font-weight: bold; color:aqua; margin-left: 8%">&nbsp;&nbsp;${ s.id }</strong></td>
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
							</table>
						</td>
						</c:forEach>
					</tr>
				</table>
			</div>
		</div><br/>
			<div class="row">
			<!-- 매장 찾기 -->
			<div class="col-xs-12 main" style="text-align: center;">
				<table>
					<tr>
						<td>
							<a href="${ pageContext.request.contextPath }/store/findStore">
								<img width="100%" src="${ pageContext.request.contextPath }/resources/img/subway-nuevo-logo.jpg"/>
							</a>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>