<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	 <div align="center" >
		<h2>글등록 페이지</h2>
		<form:form commandName="snsVO" method="POST" enctype="multipart/form-data">
			<div style="max-width: 800px;">
			
				<div class="form-group" align="left">
					<label for="title">제목</label>
					<form:input path="title" type="text" class="form-control" id="title" placeholder="제목"/>
					<form:errors path="title" class="form-control"></form:errors>
				</div>
								
				
				<div class="form-group" align="left">
					<label for="id">글쓴이 : </label>
					<form:input path="id" type="text" class="form-control" id="id" value ="${loginVO.id }" readonly="true"/>
					<form:errors path="id" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="pic"></label>
					<form:input path="pic" type="hidden" class="form-control" id="pic" value = "${loginVO.file }"/>
					<form:errors path="pic" class="form-control"></form:errors>
				</div> 
				 <div class="form-group" align="left">
					<label for="fileName">이벤트 첨부 파일</label>
					<form:input path="fileName" type="file" class="form-control" id="fileName" placeholder="첨부파일"/>
					<form:errors path="fileName" class="form-control"></form:errors>
				</div>
				  
				
				<div class="form-group" align="left">
					<label for="content">이벤트 내용</label>
					<form:textarea path="content" class="form-control" rows="5" id="content" placeholder="내용"/>
					<form:errors path="content" class="form-control"></form:errors>
				</div>
				
				<button type="submit" class="btn btn-default">등록</button>
			</div>
		</form:form>
	</div>








</body>
</html>