<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	if("${msg}"){
		alert("${msg}");
	}
	
	location.href="${pageContext.request.contextPath}/index2.jsp";
</script>