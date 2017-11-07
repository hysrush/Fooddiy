<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Facebook 로그인</title>
<meta charset="UTF-8">
</head>
<script>
$(document).ready(function(){
	
/* 유저 데이터 받아올 때  */
function getUserData() {
    /* FB.api('/me', function(response) {
        document.getElementById('response').innerHTML = 'Hello ' + response.name;
        console.log(response);
    }); */
    FB.api('/me', {fields: 'name,email,gender,birthday'}, function(response) {
        console.log(JSON.stringify(response));
        $("#name").text("이름 : "+response.name);
        $("#email").text("이메일 : "+response.email);
        $("#gender").text("성별 : "+response.gender);
        $("#birthday").text("생년월일 : "+response.birthday);
        $("#id").text("아이디 : "+response.id);
    });
}
  
window.fbAsyncInit = function() {
    //SDK loaded, initialize it
    FB.init({
        appId      : '1490368817722995',
        cookie     : true,  // enable cookies to allow the server to access
                // the session
        xfbml      : true,  // parse social plugins on this page
        version    : 'v2.8' // use graph api version 2.8
    });
  
    //check user session and refresh it
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            //user is authorized
            //document.getElementById('loginBtn').style.display = 'none';
            location.href="${ pageContext.request.contextPath }/sign/signUp.jsp";
            getUserData();
        } else {
            //user is not authorized
        }
    });
};
  
//load the JavaScript SDK
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.com/ko_KR/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  
//add event listener to login button
document.getElementById('loginBtn').addEventListener('click', function() {
	
	location.href="${ pageContext.request.contextPath }/sign/signUp.jsp";
	
    //do the login
    FB.login(function(response) {
    	
    	alert('로그인 성공');
		
        if (response.authResponse) {
            access_token = response.authResponse.accessToken; //get access token
            user_id = response.authResponse.userID; //get FB UID
            console.log('access_token = '+access_token);
            console.log('user_id = '+user_id);
            $("#access_token").text("접근 토큰 : "+access_token);
            $("#user_id").text("FB UID : "+user_id);
            //user just authorized your app
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
           
        }
    }, {scope: 'email,public_profile,user_birthday',
        return_scopes: true});
}, false);
});
</script>
<body>
<!-- 	<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="true" data-use-continue-as="false"></div> -->
	<div class="fb-login-button" id="loginBtn" data-width="200" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>


</body>
</html>

