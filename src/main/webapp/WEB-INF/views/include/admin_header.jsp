<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link rel="stylesheet" href="/css/header.css">
<style>
	body{
		font-family: "Noto Sans KR"; 
	}
	*{
		margin: 0;
	    padding: 0;
	}
	button{
		font-family: "Noto Sans KR"; 
	}
	a {
		font-family: "Noto Sans KR"; 
	}
	
	/* 상단바 메뉴*/
	.menuname{
	font-size:35px;
	}
	.menuname2{
	font-size:35px;
	border-bottom:2px solid black;
	}
	.submenu{/* 서브메뉴 */
	 font-size:15px;
	 border-bottom:2px solid black;
	}
	.submenu_a{
	 height:30px;
	 color:#888888;
	 font-size:16px;
    border-right: 1px solid lightgrey;
	}
	.submenu_b{ /* 서브메뉴 마지막 */
	 height:30px;
	 color:#888888;
	 font-size:16px;
	}
	
	a:link { color:#888888; text-decoration: none;}
	a:visited {color: #888888; text-decoration: none;}/* 들어갔다 나오면 */
	a:hover { color: black; text-decoration: none; font-weight:bold;}
	a:active { color: black; text-decoration: none; font-weight:bold;}/* 클릭했을 때 */
/* .submenu_a>a:alink { color:red; text-decoration: none;}/*  마우스로 클릭한 하이퍼링크의 색상 */ 
/* 상단바 메뉴 끝*/
</style>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<table 	width=100% height=115px>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >관리자 페이지</td>
		<td width=13.5% ><a href="/">[일반모드]</a></td>
	</tr>
	<tr>
		<td  width=13.5% ></td>
		<td class="submenu" width=73%>
			<table border=0>
				<tr>
					<td class="submenu_a" align=left width=80px><a href="/admin/memberList">회원 관리</a></td>
					<td class="submenu_a" align=center width=120px><a href="/admin/memberList">주문 관리</a></td>
					<td class="submenu_a" align=center width=120px><a href="/admin/memberList">상품권 관리</a></td>
					<td class="submenu_b" align=center  width=120px><a href="/admin/dataList" >게시판 관리</a></td>
				</tr>
			</table>
		</td>
		<td  width=13.5% ></td>
	</tr>
</table>