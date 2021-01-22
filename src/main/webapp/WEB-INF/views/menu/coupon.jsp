<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>  
<style>
	.line{border-bottom:1px solid #dddddd;}
	.coupon{
		font-size:40px;
		font-weight:bold;
		text-align:center;
	}
	.couponcang{
		width:700px;
		/* height:60px; */
		border:1px solid #dddddd;
	}
	.couponcang input::placeholder {
      	color:#bbbbbb;
        font-size:15px;
		font-weight:bold;
      }
    .couponcang input:focus {outline:none;}
	.couponcang_text{
		border:0px;
		font-size:17px;
		width:100%;
		height:100%;
	}
</style> 
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% >e-쿠폰</td>
		<td width=13.5% ></td>
	</tr>
</table>
<table 	width=100% border=0 align=center>
	<tr>
		<td  width=13.5% rowspan=3></td>
		<td width=73% align=center class="line" height=320>
			<table>
				<tr>
					<td class="coupon" height=100px>쿠폰번호를 입력하세요.</td>
				</tr>
				<tr>
					<td class="couponcang">
						<table width=100%>
							<tr>
								<td width=3%></td>
								<td width=90%><input name="couponcang" placeholder="쿠폰번호를 입력하세요." class="couponcang_text"></td>
								<td ><input type="image" src="/image/search.PNG" style="margin-top:10px;width:45px;height:45px;"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
		<td  width=13.5% rowspan=3></td>
	</tr>
	<tr>
		<td width=73% align=center class="line"><img src="/image/coupon1.PNG"></td>
	</tr>
	<tr>
		<td width=73% align=center><img src="/image/coupon2.PNG"></td>
	</tr>
</table>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>