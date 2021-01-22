<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Online Sinmungo!!</title>
<style>
	.box_head{
		clear: both;
	    display: flex;
	    border-bottom: 2px solid black;
	    padding: 10px 0px;
	}
	div a{
		color: black;
	}
	.agree_wrap{
	background: #f5f5f5;
    padding: 30px;
    max-height: 180px;
    overflow-y: scroll;
    font-size: 13px;
    font-weight: 400;
    color: #888888;
    }
   	.goToGift{
	    background: black;
	    width: 250px;
	    display: inline-block;
	    height: 60px;
	    color: white;
	    text-align:center;
	    line-height: 60px;
	}
</style>

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1>고객센터</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/bbs/faqList">고객센터</a> > 
				<a href="/moreList/bbs/qnaForm">온라인 신문고</a>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="/moreList/bbs/faqList">자주하는 질문</a></div>
			<div style="padding: 0 10px;"><a href="/moreList/bbs/qnaForm"><b>온라인 신문고</b></a></div>
		</div>
		<div class="" style="padding: 50px 0 30px; border-bottom: 1px solid lightgray;">
			<p>도미노피자를 이용하시면서 느꼈던 불편한 점이나 건의사항, 제품에 대한 의견을 남겨주시면 성심껏 답변해드리겠습니다.
				<br>※주문 취소/변경과 같은 긴급한 요청은 매장으로 연락 부탁드립니다.</p>
			<span style="font-size: 14px; color: red; margin: 20px 0 0;display: inline-block;">도미노피자 고객만족센터</span>
			<a href="tel:080-860-3082" style="font-size: 14px; color: red;">080-860-3082</a>
		</div>
		
		<article>
			<p>개인정보 수집 및 이용동의</p>
			<div class="agree_wrap">개인정보보호정책은 청오디피케이㈜에서 운영하는 도미노피자 홈페이지 서비스(이하 도미노)를 이용하는 고객님의 개인정보 보호를 위하여, 개인정보 수집의 목적과 그 정보의 정책적 ,시스템적 보안에 관한 규정입니다.
						<br><br>* 개인정보의 수집 및 이용목적
						<br>1. 도미노는 고객님께서 신문고 서비스를 이용하는데 있어, 원활하게 문의사항의 접수 및 답변이 이루어질 수 있도록 하기 위한 최소한의 정보를 수집합니다.
						<br>2. 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지 않습니다.
						<br><br>* 수집하는 개인정보의 항목
						<br>이름, 휴대전화, 이메일 : 고지의 전달 또는 원활한 의사소통 경로의 확보.
						<br><br>* 보유기간 및 이용기간
						<br>귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
						<br><br>- 소비자의 불만 또는 분쟁처리에 관한 기록
						<br>보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률
						<br>보존 기간 : 3년
						<br><br>* 온라인 신문고 서비스 이용에 필요한 최소한의 개인정보 수집·이용에 동의하지 않을 권리가 있으며, 동의 거부 시 거부한 내용에 대해 서비스가 제한될 수 있습니다.
			</div>
		</article>
		
		<form method="post">
			<div style="float: right;padding: 15px 0;">
				<label><input type="radio" name ="agree">동의함</label>
				<label><input type="radio" name ="agree" checked>동의하지 않음</label>
			</div>
			
			<div class="form_box" style="clear: both;">
				<div class="form_mini_box">
					<div class="form_left">이름<span style="color: red;">*</span></div>
					<div class="form_right"><input class="form_input"></div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">휴대전화<span style="color: red;">*</span></div>
					<div class="form_right">
						<select class="form_input">
							<option selected>010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
						<input class="form_input"> <input class="form_input"></div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">이메일<span style="color: red;">*</span></div>
					<div class="form_right"><input class="form_input"> @ <input class="form_input">
						<select class="form_input">
							<option>네이버</option>
							<option>한메일</option>
							<option>지메일</option>
							<option>핫메일</option>
							<option>네이트</option>
							<option selected>직접입력</option>
						</select>
					</div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">유형분류<span style="color: red;">*</span></div>
					<div class="form_right">
						<select class="form_input">
							<option>선택</option>
							<option>본인이 주문한 경우</option>
							<option>본인이 주문하지 않은 경우</option>
						</select>
						<select class="form_input">
							<option>제품관련</option>
							<option>배달서비스 관련</option>
							<option>직원서비스 관련</option>
							<option>콜센터 관련</option>
							<option>칭찬</option>
							<option>제안</option>
							<option>단순문의</option>
							<option>기타</option>
						</select>
					</div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">매장선택<span style="color: red;">*</span></div>
					<div class="form_right"><input class="form_input"></div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">주문번호</div>
					<div class="form_right"><input class="form_input"></div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">제목<span style="color: red;">*</span></div>
					<div class="form_right"><input class="form_input"></div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">글작성<span style="color: red;">*</span></div>
					<div class="form_right"><textarea class="form_input" style="margin-top: 5px;transition: all 2s;width: 650px;height: 300px;max-height: 301px;max-width: 1200px;"></textarea></div>
				</div>
				<div class="form_mini_box">
					<div class="form_left">첨부파일</div>
					<div style="align-self: center;">
						<div class="form_right">
							<div class="filebox">
								<input readonly id="file_route" class="file_route_style">
								<input type="file" id="ex_file1" onchange="javascript:document.getElementById('file_route').value=this.value">
								<label for="ex_file1">파일선택</label>
							</div>
							<div class="filebox">
								<input readonly id="file_route" class="file_route_style">
								<input type="file" id="ex_file2" onchange="javascript:document.getElementById('file_route').value=this.value">
								<label for="ex_file2">파일선택</label>
							</div>
							<div class="filebox">
								<input readonly id="file_route" class="file_route_style">
								<input type="file" id="ex_file3" onchange="javascript:document.getElementById('file_route').value=this.value">
								<label for="ex_file3">파일선택</label>
							</div>
						</div>
						<div style="color: #888; font-size: 14px;padding: 10px 0;">※파일 총 용량이 10MB 미만인 경우만 등록 가능합니다(등록가능파일: jpg, gif, bmp)</div>
					</div>
				</div>
			
			</div>
			<div style="display: flex;justify-content: center; padding: 40px 0;">
				<a href="/moreList/bbs/qnaForm" class="goToGift">다시입력</a>	
				<div style="width: 15px;"> </div>
				<a href="/mypage/myCoupon" class="goToGift" style="background: #ff143c;">보내기</a>
			</div>	
		</form>
	</div>
	<div style ="width: 13.5%"></div>
</div>

<style>
/* 첨부파일 스타일 시작 */
	.file_route_style{
	    height: 40px;
	    padding: 2px 0 0 0;
	    margin: 6px 0px 5px 0px;
	    min-width: 200px;
	    border: 1px solid lightgray;
	}
	.file_route_style:hover{
	    border: 1px solid black;
    	transition: all 0.3s;
	}
	input[id*=ex_file] + label{
		text-align: center;
	    width: 120px;
	    height: 42px;
	    line-height: 42px;
	    font-size: 16px;
	    font-weight: 400;
	    color: #ddd;
	    background: #222;
	    border-color: #222;
	    display: inline-block;
	    margin-left: 5px;
	    cursor: pointer;
	}
	.filebox input[type="file"] {
		position: absolute;
		width: 1px;
		height: 1px;
		padding: 0;
		margin: -1px;
		overflow: hidden;
		clip: rect(0, 0, 0, 0);
		border: 0;
	}
/* 첨부파일 스타일 끝*/

	textarea:hover{
	    border: 1px solid black;
    	transition: all 0.3s;
	}
	
	.form_box{
		border-top: 1px solid black;
	}
	.form_mini_box{
		border-bottom: 1px solid lightgray;
		display: flex;
		min-height: 100px;
	}
	.form_left{
		padding : 0 40px; 
		align-self: center;
		min-width: 80px;
	}
	.form_right{
/* 		padding : 30px 0; */
   	 align-self: center;
	}
	.form_input{
	    border: 1px solid lightgray;
	    height: 30px;
	    padding: 0 10px;
	}
	.form_input:hover{
	    border: 1px solid black;
    	transition: all 0.3s;
	}
</style>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>