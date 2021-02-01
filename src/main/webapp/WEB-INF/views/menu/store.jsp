<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>매장검색</title>
<!-- css파일 불러오기 -->
<link rel="stylesheet" href="/css/map.css"> 

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
					<td width=50% valign=middle class="tabstyle "><a href="#area" class="tab active" id="location">지역검색</a></td>
					<td width=50% align=center  class="tabstyle" ><a href="#store" class="tab" id="storeName">매장명</a></td>
				</tr>
			</table>
			<table width=100% align=center >
				<tr>
					<td class="tab_panel line2" id="area" align=center height=100>
						<table align=center width=100%>
							<tr><td height=30></td></tr>
							<tr>
								<form onsubmit="searchPlacesLo(); return false;" id="mapForm">
									<td  width=85% align=right>
										<select class="box" onchange="selChange()" form="mapForm" id="keywordLo">
											<option value="서울 도미노피자">서울</option>
											<option value="경기 도미노피자">경기</option>
											<option value="인천 도미노피자">인천</option>
											<option value="부산 도미노피자">부산</option>
											<option value="울산 도미노피자">울산</option>
											<option value="대구 도미노피자">대구</option>
											<option value="대전 도미노피자">대전</option>
											<option value="강원 도미노피자">강원</option>
											<option value="충북 도미노피자">충북</option>
											<option value="충남 도미노피자">충남</option>
											<option value="경남 도미노피자">경남</option>
											<option value="경북 도미노피자">경북</option>
											<option value="전남 도미노피자">전남</option>
											<option value="전북 도미노피자">전북</option>
											<option value="광주 도미노피자">광주</option>
											<option value="제주 도미노피자">제주</option>
											<option value="세종 도미노피자">세종</option>
										</select>
									</td>
									<td align=left width=15%><input  type="image" src="/image/search2.PNG" width=45 height=49 align=center></td>
				                </form>
							</tr>
							<tr><td height=30></td></tr>
						</table>
					</td>
					<td class="tab_panel line2" id="store" style="display: none;" height=100 align=center>
						<table align=center width=100% >
							<tr><td height=30></td></tr>
							<tr>
								<!-- <td width=85% align=right ><input name="box2" placeholder="매장명을 검색하세요." value="서울 중구 도미노피자" id="keyword2"  class="box2"></td>
								<td align=left width=15%><input onclick="formSubmit();" type="image" src="/image/search2.PNG" width=45 height=49 align=center></td>
								 -->
								<form onsubmit="searchPlaces(); return false;" >
					                    <td style="text-align: right;"><input type="text"  name="box2" placeholder="매장명을 검색하세요." class="box2" size="15" id="keyword" value="온산점" ></td> 
					                    <td><input type="image" src="/image/search2.PNG" width=45 height=49 align=center></td> 
				                </form>
							</tr>
							<tr><td height=30></td></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align=center class="line2" height=130>
						 <div id="menu_wrap" class="bg_white">
					        <div class="option">
					            <div>
					               <!--  <form id="mapForm" onsubmit="searchPlaces(); return false;" style="">
					                    <input type="text"  size="15" id="keyword" value="서울 중구 도미노피자" > 
					                    <button type="submit">검색하기</button> 
					                </form> -->
					            </div>
					        </div>
					        <ul id="placesList"></ul>
					        <div id="pagination"></div>
					    </div>
					</td>
				</tr>
			</table>
		</td>
		<td  width=45% ><!-- 지도 -->
			<div class="map_wrap">
			    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
			</div>
		</td>
		<td  width=13.5% ></td>
	</tr>
</table>


<!-- 다음 지도 api -->
<!-- <div id = "map" style="width: 500px;height: 400px;"> -->
<!-- 다음지도 라이브러리 추가 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4cb58098a4eca69d5f57797fd052554a&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="/js/map.js"></script>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>