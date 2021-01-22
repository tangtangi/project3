<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %> 
<style>
	.line{
		border-bottom:1px solid #dddddd;
		border-left:1px solid #dddddd;
		border-right:1px solid #dddddd;
	}
	.line2{border-bottom:1px solid #dddddd;}
	.tab{
		vertical-align: middle;
    	display: inline-block;
    	width: 100%;
    	height: 100%;
    	line-height: 3;
    	color:#888892;
    	font-weight:bold;
	}	
	.tabstyle{
		border-bottom:1px solid #dddddd;
		background-color:#f5f5f5;
		font-weight:blod;
		color:#888892; 
		font-size:17px;
		font-weight:bold;
		text-align:center;
		height:55px;
	}
	.active{
		border-top:1px solid #dddddd; 
		background-color:white;
		font-weight:bold;
		color:black;
		font-size:17px;
		font-weight:blod;
		text-align:center;
		width:100%;
		height:100%;
	} 
	.box{
		width:400px;
		height:50px;
		border:1px solid #dddddd; 
	}
	.box2{
		width:400px;
		height:50px;
		border:1px solid #dddddd; 
	}
	.box2::placeholder{
		color:#bbbbbb;
        font-size:15px;
		font-weight:bold;
	}
	/* input[name="box2"]::placeholder {
      	color:#bbbbbb;
        font-size:15px;
		font-weight:bold;
      } */
	.box2 input:focus {outline:none;}
	.store1{
		font-size:17px;
		height:30px;
	}
	.store2{
		font-size:15px;
		height:50px;
	}
</style>
<script>
	$(function(){
		var storetab = $('.tab'),//상단 부분 클래스 tab를 변수에 담음
			tabPanel = $('.tab_panel')//하단 부분 클래스 tab_panel를 변수에 담음
		
			//링크를 클릭하면 할 일
			storetab.click(function(e){ //e는 본체
			e.preventDefault(); //링크가 먹지 않게끔 처리
			
			storetab.removeClass('active');//클래스를 빼고
			$(this).addClass('active');//그 요소만 추가
			
			tabPanel.hide();//tabPanel 숨기기 == display:none;
			
			var $target = $(this).attr('href');
			$($target).show(); // 변수 $target 보여주기
			
		});
	});
</script>
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% >매장검색</td>
		<td width=13.5% ></td>
	</tr>
</table>
<table width=100% border=0 height=300px >
	<tr><td height=80></td></tr>
	<tr>
		<td  width=13.5% ></td>
		<td  width=28% >
			<table width=100%  >
				<tr>
					<td width=50% valign=middle class="tabstyle "><a href="#area" class="tab active" >지역검색</a></td>
					<td width=50% align=center  class="tabstyle" ><a href="#store" class="tab">매장명</a></td>
				</tr>
			</table>
			<table width=100% align=center >
				<tr>
					<td class="tab_panel line2" id="area" align=center height=100>
						<table align=center width=100%>
							<tr><td height=30></td></tr>
							<tr>
								<td  width=85% align=right>
									<select class="box">
										<option>시/도</option>
										<option>서울</option>
										<option>경기</option>
										<option>인천</option>
										<option>부산</option>
										<option>울산</option>
										<option>대구</option>
										<option>대전</option>
										<option>강원</option>
										<option>충북</option>
										<option>충남</option>
										<option>경남</option>
										<option>경북</option>
										<option>전남</option>
										<option>전북</option>
										<option>광주</option>
										<option>제주</option>
										<option>세종</option>
									</select>
								</td>
								<td align=left width=15%><input type="image" src="/image/search2.PNG" width=45 height=49 align=center></td>
							</tr>
							<tr><td height=30></td></tr>
						</table>
					</td>
					<td class="tab_panel line2" id="store" style="display: none;" height=100 align=center>
						<table align=center width=100% >
							<tr><td height=30></td></tr>
							<tr>
								<td width=85% align=right ><input name="box2" placeholder="매장명을 검색하세요." class="box2"></td>
								<td align=left width=15%><input type="image" src="/image/search2.PNG" width=45 height=49 align=center></td>
							</tr>
							<tr><td height=30></td></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align=center class="line2" height=130>
						<table align=center >
							<tr><td class="store1" colspan=2>명동점02-2264-3081</td></tr>
							<tr>
								<td class="store2">서울특별시 중구 마른내로 47 (초동)</td>
								<td width=150 align=center><a href="#"><img src="/image/store2.PNG" ></a></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
		<td  width=45% >지도</td>
		<td  width=13.5% ></td>
	</tr>
</table>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>