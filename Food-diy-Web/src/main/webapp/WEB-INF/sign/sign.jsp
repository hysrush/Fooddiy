<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<script>
	$(document).ready(function(){
		if("${msg}"){
			swal("${msg}").then(call);
			
		}
	});
	
	function call(){
		location.href="${pageContext.request.contextPath}/index2.jsp";
	}
</script>