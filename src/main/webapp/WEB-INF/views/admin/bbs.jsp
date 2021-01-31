<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>


<title>Domino's Menu!!</title>    

<!-- css 불러오기 -->
<link rel="stylesheet" href="/css/news.css">

<style>
</style>
<!-- --------------------------------------------------------------------------------------------------------- -->
<div style="text-align: center;">
	<div class="headDiv">
		<a href="bbs?category=n" style="color: black;"><b>뉴스 리스트 페이지</b></a>&nbsp;&nbsp;
		<a href="bbsInsert">인서트페이지로 이동</a>&nbsp;&nbsp;
		<a></a>
	</div>
</div>

	<!-- ////////////////////////////// bbs /////////////////////////////// -->
<%-- 
<table style="width: 100%;text-align: center;">
	<tr>
		<td style="width: 100%;" align=center>
			<label><input type="radio" name="bbs" value="bbs" >전체보기</label>
			<label><input type="radio" name="bbs" value="n" checked>뉴스</label>
			<label><input type="radio" name="bbs" value="p">보도</label>
	<!-- ////////////////////////////// bbs /////////////////////////////// -->
			<table style="width: 75%;display:none;"  >
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>등록일</td>
					<td>조회</td>
				</tr>
				<c:forEach var="list" items="${bbs }" varStatus="status">
					<tr>
						<td>${status.begin }</td>
						<td>${list.title }</td>
						<td>${list.signdate }</td>
						<td>${list.views }</td>
					</tr>
				</c:forEach>
			</table>
	<!-- ////////////////////////////// news /////////////////////////////// -->
			<table style="width: 75%;" >
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>등록일</td>
					<td>조회</td>
				</tr>
				<c:forEach var="list" items="${news }" varStatus="status">
					<tr>
						<td>${status.begin }</td>
						<td>${list.title }</td>
						<td>${list.signdate }</td>
						<td>${list.views }</td>
					</tr>
				</c:forEach>
			</table>
	<!-- ////////////////////////////// press /////////////////////////////// -->
			<table style="width: 75%;display:none;" >
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>등록일</td>
					<td>조회</td>
				</tr>
				<c:forEach var="list" items="${press }" varStatus="status">
					<tr>
						<td>${status.begin }</td>
						<td>${list.title }</td>
						<td>${list.signdate }</td>
						<td>${list.views }</td>
					</tr>
				</c:forEach>
			</table>
			<a href="bbsInsert">[글쓰기]</a> 
			<a href="bbs">[새로고침]</a>
		</td>
	</tr>
</table> --%>


<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1>공지사항</h1>
			</div>
			<div style="float:rigth">
				<a href="bbs?category=n">공지사항</a> > 
				<c:if test="${category == 'n' }"><a href="bbs?category=n">도미노 뉴스</a></c:if>
				<c:if test="${category == 'p' }"><a href="bbs?category=p">보도자료</a></c:if>
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<c:if test="${category == 'n' }"><a href="bbs?category=n"><b>도미노 뉴스</b></a></c:if>
				<c:if test="${category == 'p' }"><a href="bbs?category=n">도미노 뉴스</a></c:if>
			</div>
			<div style="padding: 0 10px;">
				<c:if test="${category == 'n' }"><a href="bbs?category=p">보도자료</a></c:if>
				<c:if test="${category == 'p' }"><a href="bbs?category=p"><b>보도자료</b></a></c:if>
			</div>
		</div>
		<!-- ////////////////////////////////////////////////////////////////////// -->
		
		<div style="display: flex;justify-content: center;padding: 30px 0 0 0 ;" >
			<form method="get" id="form">
				<select style="border: 1px solid lightgrey;">
					<option>제목</option>
					<option>내용</option>
					<option>제목+내용</option>
				</select>
				<input class="form_input" style="margin: 0 10px;">
				<input type="hidden" name='category' value='${category }'>
	<!-- 			<button class="btn" onclick="location.href='/'"><img style="width: 30px; cursor: pointer;" alt="a" src='/image/Magnifier.png'></button> -->
				<input type="image" src="/image/Magnifier.png" style="width: 30px; cursor: pointer; outline: 0;" alt="a" >
			</form>
		</div>
		<div class="box_head" style="display: flex;justify-content: flex-end;" >
			<div style= "float: right; font-size: 15px; color: #888;"> 총 ${paging.totalCount }건 </div>
		</div>
	<!-- ////////////////////////////// bbs /////////////////////////////// -->
		<div style="display: none;"id="all">
			<div class="listHeaderContainer" >
				<div class="listHeader" style="width: 10%;">번호</div>
				<div class="listHeader"  style="width: 65%;">제목</div>
				<div class="listHeader"  style="width: 15%;">등록일</div>
				<div class="listHeader"  style="width: 10%;">조회</div>
			</div>
			<c:set var="number" value="${paging.totalCount - (paging.page - 1) * paging.perPageNum }" /> 
			<c:forEach var="list" items="${list }" varStatus="status">
				<div class="listHeaderContainer" >
					<div class="listHeader" style="width: 10%;">${number }</div>
					<div class="listHeader"  style="width: 65%;"><a href="bbsView?uid=${list.uid }">${list.title }</a></div>
					<div class="listHeader"  style="width: 15%;">${list.signdate }</div>
					<div class="listHeader"  style="width: 10%;">${list.views }</div>
				</div>
			<c:set var="number" value="${number - 1 }"/>
			</c:forEach>
		</div>
	<!-- ////////////////////////////// news /////////////////////////////// -->
		<div style=""id="n">
			<div class="listHeaderContainer" >
				<div class="listHeader" style="width: 10%;">번호</div>
				<div class="listHeader"  style="width: 65%;">제목</div>
				<div class="listHeader"  style="width: 15%;">등록일</div>
				<div class="listHeader"  style="width: 10%;">조회</div>
			</div>
			<c:set var="number" value="${paging.totalCount - (paging.page - 1) * paging.perPageNum }" /> 
			<c:forEach var="list" items="${list }" varStatus="status">
				<div class="listHeaderContainer" >
					<div class="listHeader" style="width: 10%;">${number }</div>
					<div class="listHeader"  style="width: 65%;"><a href="bbsView?uid=${list.uid }">${list.title }</a></div>
					<div class="listHeader"  style="width: 15%;">${list.signdate }</div>
					<div class="listHeader"  style="width: 10%;">${list.views }</div>
				</div>
			<c:set var="number" value="${number - 1 }"/>
			</c:forEach>
		</div>
	<!-- ////////////////////////////// press /////////////////////////////// -->
		<div style="display: none;"id="p">
			<div class="listHeaderContainer" >
				<div class="listHeader" style="width: 10%;">번호</div>
				<div class="listHeader"  style="width: 65%;">제목</div>
				<div class="listHeader"  style="width: 15%;">등록일</div>
				<div class="listHeader"  style="width: 10%;">조회</div>
			</div>
			<c:set var="number" value="${paging.totalCount - (paging.page - 1) * paging.perPageNum }" /> 
			<c:forEach var="list" items="${list }" varStatus="status">
				<div class="listHeaderContainer" >
					<div class="listHeader" style="width: 10%;">${number }</div>
					<div class="listHeader"  style="width: 65%;"><a href="bbsView?uid=${list.uid }">${list.title }</a></div>
					<div class="listHeader"  style="width: 15%;">${list.signdate }</div>
					<div class="listHeader"  style="width: 10%;">${list.views }</div>
				</div>
			<c:set var="number" value="${number - 1 }"/>
			</c:forEach>
		</div>
		
		<!-- ------------------------------ -->
		
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader2" style="">
					<a href="bbsInsert">[글쓰기]</a> 
					<a href="bbs?category=n">[새로고침]</a>
				</div>
			</div>
		</div>
		
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader2" style="width: 30%;"></div>
				<div class="listHeader2"  style="width: 10%;">
					
					<c:if test="${paging.prev}">
						<a href="bbs${paging.makeSearch(paging.startPage - 1)}">&laquo;</a>
					</c:if>
				</div>
				<div class="listHeader2"  style="width: 20%;">
					<c:forEach var="idx" begin="${paging.startPage }" end="${paging.endPage }">
							<c:if test="${paging.page == idx}"><b></c:if>
							<a href="bbs${paging.makeSearch(idx)}">${idx} </a>
							<c:if test="${paging.page == idx}"></b></c:if>
					</c:forEach>
				</div>
				<div class="listHeader2"  style="width: 10%;">
					<c:if test="${paging.next && paging.endPage > 0}">
						<a href="bbs${paging.makeSearch(paging.endPage +1)}">&raquo;</a>
					</c:if>
				</div>
				<div class="listHeader2"  style="width: 30%;"></div>
			</div>
		</div>
		
	</div>
		
	<div style ="width: 13.5%"></div>
</div>

<script>
	$("[name=bbs]").click(function(){
// 		$.ajax({
// 			url:"",
// 			data:{category:this.value},
// 			type:"post",
// 			success:function(){
// 				console.log('bb');
// 			}
// 		});
 		if(this.value == 'bbs'){
 			all.style.display = "";
 			n.style.display = "none";
 			p.style.display = "none"; 
 		} 
 		if(this.value == 'n'){
 			all.style.display = "none";
 			n.style.display = "";
 			p.style.display = "none"; 
 		} 
 		if(this.value == 'p'){
 			all.style.display = "none";
 			n.style.display = "none";
 			p.style.display = ""; 
 		} 
	});
</script>


<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>