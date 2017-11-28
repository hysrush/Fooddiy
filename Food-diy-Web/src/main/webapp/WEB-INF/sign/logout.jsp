<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	
	/* 로그인VO session에서 삭제 */
	if("${msg}"){
		successBox("${msg}");
	}
	location.href="${ pageContext.request.contextPath }/index2.jsp";
});
</script>