<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <!-- //네이버아이디로로그인 버튼 노출 영역 -->
	<div id="naver_id_login">&nbsp;&nbsp;</div>

<script type="text/javascript">
 
  	var naver_id_login = new naver_id_login("6Wq9FPgGRvxBLz1Lt4cC", "http://localhost:8000/Fooddiy-Web/resources/include/login/naverCallback.jsp");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("green", 3,48);
  	naver_id_login.setDomain("http://localhost:8000/Fooddiy-Web");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
	
</script>