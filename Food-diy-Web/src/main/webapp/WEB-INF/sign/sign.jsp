<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<script>

	if("${msg}"){
		location.href="${pageContext.request.contextPath}/index2.jsp";
	}

</script>