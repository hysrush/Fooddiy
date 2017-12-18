
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> | SNS 수정폼 | </title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous"> 

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
	<div align="center" >
		<h2>SNS 수정폼</h2>
		<form:form commandName="snsVO" method="POST" enctype="multipart/form-data">
			<div style="max-width: 800px;">
			
				<div class="form-group" align="left">
					<label for="title">제목</label>
					<form:input path="title" type="text" class="form-control" id="title" placeholder="제목" value = "${snsVO.title }"/>
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
					<label for="fileName">SNS 첨부 파일</label>
					<form:input path="fileName" type="file" class="form-control" id="fileName" placeholder="첨부파일"
					value = "${snsVO.fileName }"/>
					<form:errors path="fileName" class="form-control"></form:errors>
				</div>
				  
				
				<div class="form-group" align="left">
					<label for="content">SNS 내용</label>
					<form:textarea path="content" class="form-control" rows="5" id="content" placeholder="내용" value = "${snsVO.content }"/>
					<form:errors path="content" class="form-control"></form:errors>
				</div>
				
				<button type="submit" class="btn btn-default">등록</button>
			</div>
		</form:form>
	</div>
</body>
</html>
