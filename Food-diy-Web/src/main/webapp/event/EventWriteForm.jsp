<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<div align="center" >
		<h2>�۵�� ������</h2>
		<form:form commandName="eventVO" method="POST" enctype="multipart/form-data">
			<div style="max-width: 800px;">
				<%-- <div class="form-group" align="left">
				  ������� db���� �ҷ��ͼ� ������ �� �ֵ���  
				 	<label for="type">�����</label>
					<form:select path="type" class="form-control" id="type">
						<form:option value="F">Ǫ�����</form:option>
						<form:option value="P">����Ʈ</form:option>
						<form:option value="O">��ü�ֹ�</form:option>
						<form:option value="M">ȸ������</form:option>
						<form:option value="X">��Ÿ</form:option>
					</form:select> 
			
					
					<form:errors path="type" class="form-control"></form:errors>
				</div> --%>
				<div class="form-group" align="left">
					<label for="question">�̺�Ʈ ����</label>
					<form:input path="title" type="text" class="form-control" id="title" placeholder="����"/>
					<form:errors path="title" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="imgFile">�̺�Ʈ ÷�� ����</label>
					<form:input path="imgFile" type="file" class="form-control" id="imgFile" placeholder="÷������"/>
					<form:errors path="imgFile" class="form-control"></form:errors>
				</div>
				
				
				<div class="form-group" align="left">
					<label for="content">�̺�Ʈ ����</label>
					<form:textarea path="content" class="form-control" rows="5" id="content" placeholder="����"/>
					<form:errors path="content" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="startDate">�̺�Ʈ ������</label>
					<form:input path="startDate" type="date" class="form-control" id="startDate" placeholder="������"/>
					<form:errors path="startDate" class="form-control"></form:errors>
				</div>
				<div class="form-group" align="left">
					<label for="endDate">�̺�Ʈ ������</label>
					<form:input path="endDate" type="date" class="form-control" id="endDate" placeholder="������"/>
					<form:errors path="endDate" class="form-control"></form:errors>
				</div>
				
				<button type="submit" class="btn btn-default">���</button>
			</div>
		</form:form>
	</div>








</body>
</html>