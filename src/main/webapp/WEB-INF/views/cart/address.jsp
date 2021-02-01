<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Your Cart!!</title>
<style>
	.box_head{
		clear: both;
	    display: flex;
	    border-bottom: 2px solid black;
	    padding: 10px 0px;
	}
	
	.maniaUl{
	    display: block;
	    text-align: center;
	    margin: 50px 0;
    }
	.maniaUl>ul{
    
    }
	.maniaUl>ul>li{
	    display: inline-block;
	    list-style: none;
	    width: 32.3%;
	    text-align: center;
	    padding: 3px 0;
	}
	.active{
	    font-weight: bold;
	} 
	div a{
		color: black;
	}
	.goToGift{
	    background: black;
	    width: 250px;
	    display: inline-block;
	    height: 60px;
	    color: white;
	    align-items: ;
	    line-height: 60px;
	}
	
.x{

	display: inline-block;
	width: 100px;
	height: 20px;
	border: 1px solid lightgray;
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
		min-width: 80%;
	}
	.form_left2{
		padding-left : 40px; 
		align-self: center;
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
.addressBox{
	/* display: flex; */
    height: 70px;
    line-height: 70px;
    background: #f5f5f5;
}
</style>

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1 style="font-family: ">주문방법 선택</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/member/cart2">주문방법 선택</a> >
				<a href="javascript:show_layer('1');" id="tab011" style="">배달 주문</a>
				<a href="javascript:show_layer('2');" id="tab021" style="display: none;">포장 주문</a>
				
			</div>
		</div>
		<!-- <div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="javascript:show_layer('1');" id="tabA01"  class="a active">배달 주문</a></div>
			<div style="padding: 0 10px;"><a href="javascript:show_layer('2');" id="tabA02" class="a">포장 주문</a></div>
		</div> -->
		<!--  -->
		<div class="addressBox" id="tab0111" style="">
			<div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartPizza.jpg">밖에서 도미노 피자 먹고 싶을 땐?</span>
					<a href="#"><span style="float: right;color: #238ece; ">DOMINO SPOT 배달 ></span></a>
			</div>
		</div>
		<div class="addressBox" id="tab0222" style="display: none;">
			<div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartCar.jpg">도미노 드라이빙 픽업 서비스 이용</span>
					<a href="#"><span style="float: right;color: #238ece; ">이용안함 ></span></a>
			</div>
		</div>
		<!--  -->
		
		<form action="addressCang" method="post" id="addressCang">
			<div>
				<input type="hidden" name="e_coupon" value="${param.e_coupon }">
				<input type="hidden" name="user_id" value="${session_id }">
				<input readonly class="form-control input_size inblock"  type="text" id="sample6_postcode" name="zip_code" placeholder="우편번호">
				<input type="button" class="btn btn-secondary inblock" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
			</div>
			<div>
				<input readonly class="form-control" type="text" id="sample6_address"  name="zip1" placeholder="주소">
				<input readonly class="form-control" type="text" id="sample6_extraAddress" name="zip2" placeholder="참고항목">
			</div>
			<div>
				<input type="text" class="form-control" id="sample6_detailAddress" name="zip3" placeholder="상세주소">
				<input type="hidden" id="address" name="address" >
				<input type="hidden" name="category" value="delivery">
			</div>

			<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4; float: right;">
				해당 주소로 등록하시겠습니까?
				<div style="width: 15px;"> </div>
				<a href="javascript:void(0)" onclick="submitButtonClick();" class="goToGift" style="background: #ff143c; text-align: center;">등록</a>
			</div>	
		</form>
		
		<!-- 11111111//22222222222 -->
		
	</div>
	<div style ="width: 13.5%"></div>
</div>

<style>
	.addressEnroll{
		display:inline-block; 
		color: #888;
		background: #fff;
		width: 150px;
		height: 53px;
		line-height:53px;
		border: 1px solid lightgray;
		outline: 0px;
		text-align: center;
	}
</style>


<!---------------------------------------- 우편번호찾기 - 주소 ------------------------------------------>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
   function submitButtonClick(){
       // 우편번호와 주소 정보를 해당 필드에 넣는다.
       var one = document.getElementById('sample6_postcode');
       var two = document.getElementById("sample6_address");
       var three = document.getElementById("sample6_extraAddress");
       var four = document.getElementById("sample6_detailAddress");
       if(one.value== "" ||two.value== "" || four.value== "" ){
			alert('값을 입력하세요');    	   
       }else{
			address.value = one.value + two.value + three.value + four.value ; 
			addressCang.submit();
    	   
       }
   }
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>