<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> | 1:1 문의 등록 | </title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous"> 

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
	<div align="center" >
		<h2>글등록 페이지</h2>
		<form:form commandName="boardVO" method="POST" >
			<div style="max-width: 800px;">
				<div class="form-group" align="left">
					<label for="exampleInputEmail1">제목</label>
					<form:input path="title" type="text" class="form-control" id="exampleInputEmail1" placeholder="title"/>
					<form:errors path="title" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="exampleInputPassword1">내용</label>
					<form:textarea path="content" class="form-control" rows="5" id="comment" placeholder="contents"/>
					<form:errors path="content" class="form-control"></form:errors>
				</div>
				<form:hidden path="writer" value="admin"/>
				<!-- <input type="hidden" id="writer" value="admin"> -->
				<button type="submit" class="btn btn-default">등록</button>
			</div>
		</form:form>
	</div>
</body>
</html>
