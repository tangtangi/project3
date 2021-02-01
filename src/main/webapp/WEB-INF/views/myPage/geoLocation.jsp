<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>나의 위치</title>
<style>
div a{
	color: black;
}
.addressBox{
	font-size:18px;
    height: 70px;
    line-height: 70px;
    background: #f5f5f5;
    border-top: 2px solid black;
}
.box_head{
	clear: both;
    display: flex;
    border-bottom: 2px solid black;
    padding: 10px 0px;
}
.box_head2{
/* 	padding: 0 10px; 
 	border-right: 1px solid lightgray;    
	padding-right: 10px; */
}
.box_head2:after{
	content:"";
    width: 1px;
    height: 16px;
    background: #ddd;
    display: inline-block;
    margin: 2px 20px;
    vertical-align: middle;
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
	.enrollForm:after {
	clear: both;
}
</style>



<div style="display: flex;margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;padding-bottom: 20px;">
			<div  style="float:left">
				<h1 style="font-family: ">나의 위치</h1>
			</div>
		</div>
		<div class="box_head" >
			<div class="box_head2"><a href="geoLocation">내 위치 : 
			<input type="" id="locate2" value="변환" readonly style="outline: 0; border: 0;"></a></div>
		</div>
		
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;float: left;"><span>현 위치로 배달 주소 등록 </span></div>
			<form class="enrollForm" action="/cart/cart2" method="post" id="form" style="float:right;">
				<div>
					<input type="" id="locate3" style="width: 240px;" name="" value="현재위치를 변환하려면 클릭하세요" readonly onclick="location22()">
					<input type="" id="locate4" name="" value=""  placeholder="나머지 주소를 입력해주세요">
					<input type="hidden" id="locate5" name="address" value="" readonly >
					<a href="javascript:void(0)" onclick="submitButtonClick();" class="goToGift" style="background: #ff143c; style:right;text-align: center;">등록</a>
					<input type="hidden" name="category" value="배달" readonly >
				</div>
			</form>
		</div>
		
		
			<ul style="display: none;">
			    <li>위도:<input id="latitude" value="" ></li>
			    <li>경도:<input id="longitude" value="" ></li>
			</ul>
	<table><tr>		
		<td  width=45% ><!-- 지도 -->
			<div class="map_wrap">
			    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
			</div>
		</td>
		<td  width=13.5% ></td>
	</tr></table>
			
	</div><!-- 중간폭 73% -->
	<div style ="width: 13.5%"></div>
</div>

<!-- 다음 지도 api -->
<!-- <div id = "map" style="width: 500px;height: 400px;"> -->
<!-- 다음지도 라이브러리 추가 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4cb58098a4eca69d5f57797fd052554a&libraries=services,clusterer,drawing"></script>
<script>
    $(function() { 
   		var locate ="";
    	// Geolocation API에 액세스할 수 있는지를 확인
        if (navigator.geolocation) {
            //위치 정보를 얻기
            navigator.geolocation.getCurrentPosition (function(pos) {//좌표 추출
            	var geocoder = new kakao.maps.services.Geocoder();
            	var callback = function(result, status){
            		if(status === kakao.maps.services.Status.OK){
            			locate = result[0].address_name;//좌표를 지역 이름으로 변경
		                var split = locate.split(" ");
		                locate2.value = split[3];
		                locate3.value = locate;
            		}
            	}
            	geocoder.coord2RegionCode(pos.coords.longitude, pos.coords.latitude, callback);//현재위치 좌표 가져오기
                $('#latitude').val(pos.coords.latitude);     // 위도
                $('#longitude').val(pos.coords.longitude); // 경도
            });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
    });

    function submitButtonClick(){
        // 우편번호와 주소 정보를 해당 필드에 넣는다.
        if(${session_id eq null}){
        	alert('로그인 먼저 하세요.');
        }else if(locate4.value==""){
			alert('나머지 주소를 입력해주세요');
        }else{
        	locate5.value= locate3.value +" "+ locate4.value;
 			form.submit();
        }
    }
    
    function location22(){
    	var locate ="";
    	// Geolocation API에 액세스할 수 있는지를 확인
        if (navigator.geolocation) {
            //위치 정보를 얻기
            navigator.geolocation.getCurrentPosition (function(pos) {//좌표 추출
            	var geocoder = new kakao.maps.services.Geocoder();
            	var callback = function(result, status){
            		if(status === kakao.maps.services.Status.OK){
            			locate = result[0].address_name;//좌표를 지역 이름으로 변경
		                var split = locate.split(" ");
		                locate2.value = split[3];
		                locate3.value = locate;
            		}
            	}
            	geocoder.coord2RegionCode(pos.coords.longitude, pos.coords.latitude, callback);//현재위치 좌표 가져오기
                $('#latitude').val(pos.coords.latitude);     // 위도
                $('#longitude').val(pos.coords.longitude); // 경도
            });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
    }
</script>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>