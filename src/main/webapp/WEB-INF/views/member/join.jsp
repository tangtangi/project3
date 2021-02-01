<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>회원가입</title>
<style>
	.inputCang {
		border:1px solid #c1c1c1;
		width:90%;
		height:80%;
	}
	.info{
		border:0px;
		
	}
	
	.tdtd tr td{
		height: 60px;
		text-align: center;
	}
	.buttonCang{
	    background: #ff143c;
	    width: 250px;
	    display: inline-block;
	    height: 60px;
	    color: white;
	    text-align:center;
	    line-height: 60px;
	    border:0px;
	  	font-size:17px;
        font-weight: bold;
	}
	
</style>
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% style="text-align: left;">회원가입</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" id="joinCheckForm">
<input type="hidden"> 
<table width=100% border=0 align=center style=" margin-top: 50px;" class="tdtd">
	<tr>
		<td  width=30% rowspan=10></td>
		<td><label for="id" >아이디</label></td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="id" maxlength="20" id="id" placeholder="" onkeyup="joinInfo_id()"></td>
					<td width=40%><input class="info" id="id_info"  readonly="readonly" tabindex="-1"></td>
				</tr>
			</table>
		</td>
		<td  width=30% rowspan=10></td>
	</tr>
	<tr>
		<td >비밀번호</td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="pass" id="pass" type="password" ></td>
					<td width=40%></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >비밀번호 확인</td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="pass2" id="pass2" type="password" onkeyup="passcheck()"></td>
					<td width=40%><input class="info" id="pass2_info" readonly="readonly" tabindex="-1"></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >이름</td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="name" id="name1" onkeyup="joinInfo_name()"></td>
					<td width=40%><input class="info" id="name_info"  readonly="readonly" tabindex="-1"></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >연락처</td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="phone" id="phone" onkeyup="joinInfo_phone()" placeholder="숫자만 입력해주세요." maxlength="13"></td>
					<td width=40%><input class="info" id="phone_info"  readonly="readonly" tabindex="-1"></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >주소</td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="address" id="address" onkeyup="joinInfo_address()" placeholder="상세주소를 전부 입력해주세요."></td>
					<td width=40%><input class="info" id="address_info"  readonly="readonly" tabindex="-1"></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >이메일</td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="email" type="email" id="email" onkeyup="joinInfo_email()" placeholder="이메일의 형식으로 입력해주세요."></td>
					<td width=40%><input class="info" id="email_info"  readonly="readonly" tabindex="-1"></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >성별</td>
        <td>
			<table width=100%>
				<tr>
					<td width=60%><label>
						<input type="radio" checked name="gender" value="M" style="margin: 0 5px;">남자</label>
						<label><input type="radio" name="gender" value="F" style="margin: 0 5px;">여자</label>
					</td>
					<td width=40%></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >생일</td>
		<td>
			<table width=100%>
				<tr>
					<td width=60%><input class="inputCang" name="birth" placeholder="숫자 6자리로 입력해주세요."  maxlength="6"></td>
					<td width=40%><input type="hidden" id="joinCheck" value="false" ></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td Style="height:100px;"></td>
		<td >
			<table width=100%>
				<tr>
					<td width=60%><input class="buttonCang" type="submit" value="회원가입" onclick="joinCheck()"></td>
					<td width=40%></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>

<script>
	var id = document.getElementById("id");
	var pass = document.getElementById("pass");
	var pass2 = document.getElementById("pass2");
	var name1 = document.getElementById("name1");
	var phone = document.getElementById("phone");
	var address = document.getElementById("address");
	var email = document.getElementById("email");
	
	function joinInfo_id(){
		if(id.value == ""){
			$("#id_info").val("아이디를 입력해주세요.");
			$("#id_info").css("color","red");
		console.log('b');
		}else{
			$.ajax ({ 
				url:"/member/idCheck",
				data:{join_id:id.value},
				type:"post",
				success: function(idCheck){
					if(idCheck == 1){
						$("#id_info").val("사용 할 수 없는 아이디입니다.");
						$("#id_info").css("color","red");
					}else{
						$("#id_info").val("사용 가능한 아이디입니다.");
						$("#id_info").css("color","green");
					}
				}
			});
		}
	}
	function joinInfo_name(){	
		if (name1.value ==""){
			$("#name_info").val("이름을 입력해주세요.");
			$("#name_info").css("color","red");
		}else{
			$("#name_info").val("확인되었습니다.");
			$("#name_info").css("color","green");
		}
	}
	
	function joinInfo_phone(){
		if (phone.value ==""){
			$("#phone_info").val("연락처를 입력해주세요.");
			$("#phone_info").css("color","red");
			
		}else{
			$("#phone_info").val("사용 가능한 연락처입니다.");
			$("#phone_info").css("color","green");
		}
	}
	function joinInfo_address(){
		if (address.value ==""){
			$("#address_info").val("주소를 입력해주세요.");
			$("#address_info").css("color","red");
		}else{
			$("#address_info").val("확인되었습니다.");
			$("#address_info").css("color","green");
		}
		
	}
	function joinInfo_email(){
		if (address.value ==""){
			$("#email_info").val("이메일 주소를 입력해주세요.");
			$("#email_info").css("color","red");
		}else{
			$("#email_info").val("확인되었습니다.");
			$("#email_info").css("color","green");
		}
		
	}
	
	
	function passcheck(){ //비밀번호 체크
		if(pass.value != pass2.value){
			$("#pass2_info").val("비밀번호가 일치하지 않습니다.");
			$("#pass2_info").css("color","red");
		}else{
			$("#pass2_info").val("비밀번호가 일치합니다.");
			$("#pass2_info").css("color","green");
		}
	}

	
	
</script>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>