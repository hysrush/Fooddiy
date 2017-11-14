<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<div class="ajax-container">
	<div class="row">
		<div class="col-md-12">
			<form action="storeEventPage.do" method ="post">
				<table class="table table-hover" width="80%">
					<thead>
						<tr>
							<th>매장명</th>
							<th>매장 번호</th>
							<th>매장 주소 </th>
							<th> 선택 </th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ storeList }" var="store">
							<tr>
							<c:if test="">
								<td>${ store.storeName  }</td>
								<td>${ store.storePhone }</td>
								<td>${ store.storeAddr  }</td>
								<td><input type="submit" value="선택" class="btn btn-default pull-right mb-xl"></td>
							</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>