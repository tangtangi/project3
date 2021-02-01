<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300;500&family=Noto+Sans+KR&display=swap');
	.view_footer{
		background-color:#f5f5f5;
		height:140px;
		
	}
	.order{
		background-color:#ff143c;
		text-align:center;
		height:48px;
		border:1px solid #ff143c;
		color:white;
		font-size:18px;
		width:160px;
	}
	.order>a{color:white;text-decoration: none;}
	.price1{/* 총 금액 */
		font-size:17px;
	}
	.price2{
		font-size:24px;
		font-weight:bold;
	}
	.ftName1{/* 피자, 사이드, 음료이름 */
		font-size:18px;
		font-weight:bold;
		height:50px;
	}
	.ftName2{/* 메뉴이름 */
		font-size:15px;
		height:30px;
		
	}
	.ftName3{/* 피자옵션 */
		font-size:14px;
		color:#888896;
	}
	.alignTop{
	    vertical-align: top;
	}
</style>
<table width=100% class="view_footer" border=0>
	<tr>
		<td  width=13.5% rowspan=2 ></td>
		<td  class="ftName1">피자</td>
		<td  class="ftName1">사이드디시</td>
		<td  class="ftName1">음료 & 기타</td>
		<td  align=center rowspan=2 border=1>
			<table border=0>
				<tr>
					<td class="price1" height=45px>총 금액 <span class="price2"> 38,900원</span></td>
				</tr>
				<tr>
					<td class="order"><a href="#">주문하기</a></td>
				</tr>
			</table>
		</td>
		<td  width=13.5% rowspan=2></td>
	</tr>
	<tr>
		<td width=18% class="alignTop">
			<table border=0 width=100% >
				<tr>
					<td  class="ftName2">세배 피자(34,900원)x1</td>
				</tr>
				<tr>
					<td  class="ftName3">- 도우/사이즈 : 트리플 크러스트 도우/L</td>
				</tr>
			</table>
		</td>
		<td width=18% class="alignTop">
			<table border=0 width=100%>
				<tr>
					<td  class="ftName2">- [반값]셰프’s 토마토 파스타(+4,900원)x1</td>
				</tr>
			</table>
		</td>
		<td width=18% class="alignTop">
			<table border=0 width=100%>
				<tr>
					<td  class="ftName2">- 코카콜라 1.25L(+2,000원)x1</td>
				</tr>
			</table>
		</td>
	</tr>
</table>