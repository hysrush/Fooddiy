<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br/>
<div role="main" class="main">
	<div class="container">
		<div class="row"><br/>
			<div class="col-xs-12 main">
				<table style="text-align: center; width: 100%">
					<tr>
						<td colspan="2" align="center">
							<video width="100%" controls autoplay>
								<source src="${pageContext.request.contextPath }/resources/video/subway.mp4" type="video/mp4">
							</video><br/><br/>
						</td>
					</tr>
					<tr style="background-color: #fdcb04">
						<td align="center" colspan="2" style="padding: 2% ;">
							<!-- <strong style="font-size: 20px; font-style: italic; color:#feca07;"> BEST </strong> -->
							<a href="${ pageContext.request.contextPath }/community/snsPage.do">
								<strong style="font-style: italic; font-size: 15px;">&nbsp;What's BEST SNS</strong>
							</a>
							<strong style="font-size: 12px; text-align: right">
								
							</strong>
						</td>
					</tr>
					<tr>
						<c:forEach items="${ sns }" var="s" begin="0" end="1">
						<td>
							<table style="width: 100%; table-layout:fixed">
								<tr>
									<td align="left" width="30%" style="padding:2% 0">
										<%-- <img width="30%" src="${pageContext.request.contextPath }/resources/img/AA.jpg"/> --%>
										&nbsp;<i class="fa fa-thumbs-up" style="color: #f70000"></i>
										<strong style="font-weight: bolder; color:#333;">${ s.like }</strong>
									</td>
									<td align="right"><i class="fa fa-user">
										</i>&nbsp;<small style="font-weight: bolder; color:#333; font-size: 11px;">${ s.id }&nbsp;</small>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsPage.do">
											<img style="width: 200px; height: 170px;" src="../upload/${ s.fileName }"/><br/>
										</a>
									</td>
								</tr>
								<tr>
									<td colspan="2" style="text-overflow: ellipsis; overflow: hidden; padding-top: 3%" title="${ s.title }">
										<a style="text-decoration:none" href="${ pageContext.request.contextPath }/community/snsPage.do">
											<strong>${ s.title }</strong>
										</a>
									</td>
								</tr>
								<tr>
									<td colspan="2" style="text-overflow: ellipsis; overflow: hidden; padding-top: 3%" title="${ s.content }">
										<a style="href="${ pageContext.request.contextPath }/community/snsPage.do">
											<nobr>${ s.content }</nobr>
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
							<a href="${ pageContext.request.contextPath }/store/findStoreU.do">
								<img width="70%" src="${ pageContext.request.contextPath }/resources/img/subway-nuevo-logo.jpg"/>
							</a>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>