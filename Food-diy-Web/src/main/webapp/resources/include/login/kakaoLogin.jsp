<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('8b3eb6fd5d5edc6a771d504d0ecb4e22');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
          alert(JSON.stringify(authObj));
          location.href="${ pageContext.request.contextPath }/sign/signUp.jsp";
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };

/* 
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('8b3eb6fd5d5edc6a771d504d0ecb4e22');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
       // alert(JSON.stringify(authObj));
        location.href="${ pageContext.request.contextPath }/sign/signUp.jsp";
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
  //]]> */
</script>
<!-- <a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a> -->
<a id="custom-login-btn" href="javascript:loginWithKakao()">
	<img src="${ pageContext.request.contextPath }/resources/img/login/kakao_account_login_btn_medium_narrow.png"/>
</a>

