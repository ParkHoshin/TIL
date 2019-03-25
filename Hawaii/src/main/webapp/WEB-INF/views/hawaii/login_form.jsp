<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login Demo</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
</head>
<body>

<!-- 네이버아이디로로그인 버튼 노출 영역 -->
<div id="naverIdLogin"></div>
<!-- //네이버아이디로로그인 버튼 노출 영역 -->

<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "AgJkF9vaVx6x0gZuNCWT",
			callbackUrl: "http://localhost:9090/ha/hawaii/callback.do",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 48} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail();
			var name = naverLogin.user.getNickName();
			var profileImage = naverLogin.user.getProfileImage();
			var birthday = naverLogin.user.getBirthday();			var uniqId = naverLogin.user.getId();
			var age = naverLogin.user.getAge();
			
			/* location.href = "callback.do?name=" + encodeURIComponent(name); */
		} else {
			console.log("AccessToken이 올바르지 않습니다.");
		}
	});
	
</script>
<!-- // 네이버아이디로로그인 초기화 Script -->

<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('6cf9a9028c559843486ab1cf22f48800');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        //alert(JSON.stringify(authObj));
        Kakao.API.request({
        	 
            url: '/v1/user/me',
            success: function(res) {
      
                   
                  //alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
                  //alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
      
                  //console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
                  //console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 
                  //console.log(res.profile_image);
                  //console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
                  // res.properties.nickname으로도 접근 가능 )
                  //console.log(res.created);
                  //console.log(res.status);
                  //console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
      
                // $('#kakao_id').val(res.properties.id);
                 //$('#kakao_nickname').val(res.properties.nickname);  
      
                 
                 var d = new Date();
                 
                 /* 닉네임을 얻어온다 */
                 var name = res.properties.nickname;
                 
                 /* 아이디를 얻어오는 방법 */
                 var id = res.id;
                 
				 location.href = "list.do?name=" + encodeURIComponent(name) + "&id=" + id;
      
                 //document.write(res.properties.nickname+"님 환영합니다.");
                 //document.write('접속시간 : '+ d.getFullYear()+'/'+d.getMonth()+'/'+d.getDate()+'/'+d.getHours()+':'+d.getMinutes()+':'+d.getSeconds());
                 
                 //document.write('');
                 //document.write(res.id);
                  
      
               
      
                }
      
              })
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
   
  //]]>
</script>


</body>
</html>