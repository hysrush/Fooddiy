<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="${ pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<a id="custom-login-btn" href="javascript:loginWithKakao()">
		<img src="${ pageContext.request.contextPath }/resources/img/login/kakao_login_btn_medium.png"/>
</a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('8b3eb6fd5d5edc6a771d504d0ecb4e22');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
        	// 로그인 성공시, API를 호출합니다.
	        Kakao.API.request({
			  url: '/v1/user/me',
	          success: function(res) {
					var id = res.id;
	            	$("#mkakaoid").val(id);
	            	$("#mkakaopw").val(id);
	            	$("#mkaka").click();

				},
				fail : function(error) {
					swal(JSON.stringify(error));
				}
			});
        },
        fail: function(err) {
        	swal(JSON.stringify(err));
        }
      });
    };
  //]]>
</script>
<form saction="${ pageContext.request.contextPath }/sign/kakoLogin.do" method="post" style="display: none;">
	<input type="hidden" id="mkakaoid" name="id">
	<input type="hidden" id="mkakaopw" name="pw">
	<input type="submit" id="mkaka">
</form>

