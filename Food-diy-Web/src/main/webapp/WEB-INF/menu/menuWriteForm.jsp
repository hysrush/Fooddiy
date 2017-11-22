<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script>
$(document).ready(function(){
	$('.form-control').focus(function(){
		$(this).value("aaaa");
	});
});
</script>
</head>
<body>
	<div align="center">
		<h2>글등록 페이지</h2>
		<form:form commandName="menuVO" method="POST"
			enctype="multipart/form-data">
			<div style="max-width: 800px;">

				<div class="form-group" align="left">
					<label for="name">메뉴 이름</label>
					<form:input path="name" type="text" class="form-control" id="name" placeholder="이름" />
					<form:errors path="name" class="form-control"></form:errors>
				</div>

				<div class="form-group" align="left">
					<label for="mainmenu">메인 재료</label>
					<form:input path="mainmenu" type="text" class="form-control" id="mainmenu" placeholder="메인재료" />
					<form:errors path="mainmenu" class="form-control"></form:errors>
				</div>

				<div class="form-group" align="left">
					<label for="">타입</label>
					<select name="type">
						<option value="" selected>--선택--</option>
						<option value="R">추천메뉴</option>
						<option value="P">프리미엄</option>
						<option value="B">베스트</option>
						<option value="C">클래식</option>
						<option value="M">아침식사</option>
						<option value="S">샐러드</option>
						<option value="N">추가메뉴</option>
						<option value="D">음료</option>
					</select>
				</div>

				<div class="form-group" align="left">
					<label for="price">가격</label>
					<form:input path="price" type="text" class="form-control" id="price" placeholder="가격" />
					<form:errors path="price" class="form-control"></form:errors>
				</div>

				<div class="form-group" align="left">
					<label for="detail">메뉴 상세내용</label>
					<form:textarea path="detail" class="form-control" rows="5" id="detail" placeholder="내용" />
					<form:errors path="detail" class="form-control"></form:errors>
				</div>

				<div class="form-group" align="left">
					<label for="imgFileName">메뉴 이미지</label>
					<form:input path="imgFileName" type="file" class="form-control" id="imgFileName" placeholder="메뉴 이미지" />
					<form:errors path="imgFileName" class="form-control"></form:errors>
				</div>				

				<div class="form-group" align="left">
					<label for="serviceSize">서비스 사이즈</label>
					<form:input path="serviceSize" type="text" class="form-control" id="serviceSize" placeholder="서비스 사이즈" />
					<form:errors path="serviceSize" class="form-control"></form:errors>
				</div>

				<div class="form-group" align="left">
					<label for="calorie">칼로리</label>
					<form:input path="calorie" type="text" class="form-control"	id="calorie" placeholder="칼로리" />
					<form:errors path="calorie" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="protein">단백질</label>
					<form:input path="protein" type="text" class="form-control"	id="protein" placeholder="단백질" />
					<form:errors path="protein" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="natrium">나트륨</label>
					<form:input path="natrium" type="text" class="form-control"	id="natrium" placeholder="나트륨" />
					<form:errors path="natrium" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="sugar">당</label>
					<form:input path="sugar" type="text" class="form-control" id="sugar" placeholder="당" />
					<form:errors path="sugar" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="fat">지방</label>
					<form:input path="fat" type="text" class="form-control" id="fat" placeholder="지방" />
					<form:errors path="fat" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="allergy">알레르기</label>
					<form:input path="allergy" type="text" class="form-control"	id="allergy" placeholder="알레르기" />
					<form:errors path="allergy" class="form-control"></form:errors>
				</div>

			</div>
			<button type="submit" class="btn btn-default">등록</button>
		</form:form>
	</div>
</body>
</html>