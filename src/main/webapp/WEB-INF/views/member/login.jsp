<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>로그인</title>

<script>
	var msg = "${msg}";
	if(msg == "find_id"){
		alert("찾으시는 아이디는 ${find_id} 입니다.");
	}else if(msg == "find_pass"){
		alert("찾으시는 비밀번호는 ${find_pass} 입니다.");
	}else if(msg == "fail"){
		alert("없는 아이디거나 잘못된 비밀번호 입니다.");
	}
</script>
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% >로그인</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" >
<table width=100% border=1>
	<tr>
		<td  width=13.5% rowspan=4></td>
		<td>아이디</td>
		<td><input name="id"></td>
		<td  width=13.5% rowspan=4></td>
	</tr>
	<tr>
		<td >비밀번호</td>
		<td><input name="pass" id="pass" type="password"></td>
	</tr>
	<tr>
		<td ></td>
		<td>
			<input type="submit" value="로그인">
			
			<input type="image" src="/image/kakao_login_medium_narrow.png" value="카카오로그인" onclick="kakaoLogin()">
			
			<!-- 팝업방식 로그인 -->
			<a id="custom-login-btn" href="javascript:loginWithKakao()">
			  <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222"/>
			</a>
			
			<button class="api-btn" onclick="kakaoLogout()">로그아웃</button>
			
			<!-- 다른 계정으로 로그인 -->
			<a id="reauthenticate-popup-btn" href="javascript:loginFormWithKakao()">
			  <img
			    src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
			    width="222"
			  />
			</a>
			<p id="reauthenticate-popup-result"></p>
		</td>
	</tr>
	<tr>
		<td><a href="/member/id_find">아이디 찾기</a></td>
		<td><a href="/member/pass_find">비밀번호 찾기</a></td>
	</tr>
</table>
</form>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

 <script>
    // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('4cb58098a4eca69d5f57797fd052554a');

    // SDK 초기화 여부를 판단합니다.
    console.log(Kakao.isInitialized());
</script>

<script type="text/javascript">
/* 팝업방식 */
  function loginWithKakao() {
    Kakao.Auth.login({
      success: function(authObj) {
        alert(JSON.stringify(authObj))
      },
      fail: function(err) {
        alert(JSON.stringify(err))
      },
    })
  }
</script>


<script type="text/javascript">
/* 다른계정으로 로그인 */
  function loginFormWithKakao() {
    Kakao.Auth.loginForm({
      success: function(authObj) {
        showResult(JSON.stringify(authObj))
      },
      fail: function(err) {
        showResult(JSON.stringify(err))
      },
    })
  }
  function showResult(result) {
    document.getElementById('reauthenticate-popup-result').innerText = result
  }
</script>

<script type="text/javascript">
/* 로그아웃 */
function kakaoLogout() {
  if (!Kakao.Auth.getAccessToken()) {
    alert('Not logged in.')
    return
  }
  Kakao.Auth.logout(function() {
    alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
  })
}
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>