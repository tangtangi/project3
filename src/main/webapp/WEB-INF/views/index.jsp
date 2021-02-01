<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Domino's Pizza!!</title>

<style>
/* 1번째 슬라이드 시작 */
	 .slideWrap1 {
		max-width: 600px;
		margin:0 auto;
		/* overflow: hidden; */
	}
	.slideWrap1 .slideList1 {
	    white-space: nowrap;
	    font-size: 0;
	    position: relative;
	} 
	.slideWrap1 .slideList1 li{
		display: inline;
		vertical-align: middle;
		width: 100%; 
		transition:all .5s;
	} 
	.slideWrap1 .slideList1 li img{
		width: 100%; 
	} 
    .slideList1 button.slick-prev ,
    .slideList1 button.slick-next {
        position: absolute;
        z-index: 5;
        top: 50%;
        transform: translateY(-50%);
        background: rgba(0,0,0,0);
		border: 0;
		outline: 0;
		cursor: pointer;
    }    
    .slideList1 button[id*=slick-slide-control]{
		/*  display: none; */ 
        z-index: 5;
		border: 0;
		outline: 0;
		cursor: pointer;
	    width: 30px;
	    height: 30px;
	    border-radius: 100%;
    }    
     .slideList1 button:before{font-family: 'xeicon'; color:#222; font-size: 40px; }
     .slideList1 button.slick-prev{left: 0px; font-size: 0;color: transparent;  }
     .slideList1 button.slick-prev:before{content:"\e93d";    }
     .slideList1 button.slick-next{right: 0px; font-size: 0;color: transparent;   }
     .slideList1 button.slick-next:before{content:"\e940";  }
     
	.slideList1 button[id*=slick-slide-control]:active{
		background: #ddd;
	}
	/* 3,4번째 슬라이드 시작 */
	 .section .slideWrap {
		max-width: 600px;
		margin:0 auto;
		/* overflow: hidden; */
	}
	.section .slideList {
	    white-space: nowrap;
	    font-size: 0;
	    position: relative;
	} 
	.section .slideList li{
		display: inline-block;
		vertical-align: middle;
		/* width: 100%;  */
		transition:all .5s;
		padding: 0 20px;
	} 
    .slideList button{
        position: absolute;
        z-index: 5;
        top: 50%;
        transform: translateY(-50%);
        background: rgba(0,0,0,0);
		border: 0;
		outline: 0;
		cursor: pointer;
    }    
    .slideList button[id*=slick-slide-control]{
		display: none;
    }    
     .slideList button:before{font-family: 'xeicon'; color:#222; font-size: 40px; }
     .slideList button.slick-prev{left: -50px; font-size: 0;color: transparent;  }
     .slideList button.slick-prev:before{content:"\e93d";    }
     .slideList button.slick-next{right: -50px; font-size: 0;color: transparent;   }
     .slideList button.slick-next:before{content:"\e940";  }
/*   3,4번째 슬라이드 끝 */
/*   1번째 슬라이드 끝 */
</style>
<!-- ---------------1--------------- -->
<div style="display: flex; height: 482px;padding-bottom:50px; align-items: center; margin-top: -63px; ">
	<div style ="width: 100%; text-align: center;display: flex;" >
		<div style ="width: 100%" class="section">
			<div class="slideWrap1" style="max-width: 100%;">
				<ul class="slideList" >
					<li>
						<a href=""><img src="/image/mainImage1-1.jpg"></a>
					</li>
					<li>
						<a href=""><img src="/image/mainImage1-2.jpg"></a>
					</li>
					<li>
						<a href=""><img src="/image/mainImage1-3.jpg"></a>
					</li>
					<li>
						<a href=""><img src="/image/mainImage1-4.jpg"></a>
					</li>
					<li>
						<a href=""><img src="/image/mainImage1-5.jpg"></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- ---------------2--------------- -->
<div style="display: flex;">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%; text-align: center;display: flex;" >
		<div style ="width: 50%"><a href="/menu/list?menu=pizza"><img src="/image/mainImage2-1.jpg"></a></div>
		<div style ="width: 50%"><a href="/menu/list?menu=pizza"><img src="/image/mainImage2-2.jpg"></a></div>
<!-- 		<div style ="width: 33.3%"><a href="#"><img src="/image/mainImage2-3.jpg"></a></div> -->
	</div>
	<div style ="width: 13.5%"></div>
</div>
<!-- ---------------3--------------- -->
<div style="display: flex; background:#f6f6f6;height: 430px;align-items: center; ">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%; text-align: center;display: flex;" >
		<c:if test="${session_id == null }">
			<div style ="width: 33.3%; font-size: 34px;text-align: left;padding: 0 0 0 60px;">도미노피자의<br><span style="color: #238ece">특별한 매니아 혜택</span><br>누려보세요!<br>
				<button onclick="location.href='/member/login'" style="background: black;color: white;border-radius: 49%;width: 100px;height: 50px;outline: 0;">로그인</button>
			</div>
		</c:if>
		<c:if test="${session_id !=null }">
			<div style ="width: 33.3%; font-size: 34px;text-align: left;padding: 0 0 0 60px;">${session_name }님 현재 등급<br><span style="color: black;text-align: center;">${session_grade }VIP</span><br><br>
				<button onclick="location.href='/myPage/maniaGrade'" style="background: black;color: white;border-radius: 49%;width: 100px;height: 50px;outline: 0;">헤택보기</button>
				<button onclick="location.href='/myPage/myOrderList'" style="background: black;color: white;border-radius: 49%;width: 100px;height: 50px;outline: 0;">주문내역</button>
			</div>
		</c:if>
		<div style ="width: 66.6%" class="section">
			<div class="slideWrap">
				<ul class="slideList" >
					<li>
						<c:if test="${session_id == null }"><a href="/member/join"><img src="/image/mainImage3-1.jpg"></a></c:if>
						<c:if test="${session_id != null }"><a href="/myPage/myCoupon"><img src="/image/mainImage3-1-1.jpg"></a></c:if>
					</li>
					<li>
						<c:if test="${session_id == null }"><a href="/moreList/service/mania"><img src="/image/mainImage3-2.jpg"></a></c:if>
						<c:if test="${session_id != null }"><a href="/myPage/maniaGrade"><img src="/image/mainImage3-2-2.jpg"></a></c:if>
					</li>
					<li>
						<a href="#"><img src="/image/mainImage3-3.jpg"></a>
					</li>
					<li>
						<a href="#"><img src="/image/mainImage3-4.jpg"></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div style ="width: 13.5%"></div>
</div>

<!-- ---------------4--------------- -->
<div style="display: flex; height: 555px;align-items: center; ">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%; text-align: center;display: flex;" >
		<div style ="width: 100%" class="section">
			<div class="slideWrap" style="max-width: 1111px;">
				<ul class="slideList" >
					<li>
						<a href=""><img src="/image/mainImage4-1.jpg"></a>
					</li>
					<li>
						<a href=""><img src="/image/mainImage4-2.jpg"></a>
					</li>
					<li>
						<a href=""><img src="/image/mainImage4-3.jpg"></a>
					</li>
					<li>
						<a href=""><img src="/image/mainImage4-4.jpg"></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div style ="width: 13.5%"></div>
</div>

<!-- 팝업이벤트
 <div style="position:fixed; top:50%; right:50px; cursor: pointer;  border-radius: 50%;">
	<a href="event">
		<img src="/image/homeEvent.jpg">
	</a>
</div> 
-->
<script >
	/* 슬라이더 */
	    $('.slideList').slick({
	  dots: true,
	  infinite: true,
	  speed: 300,
	  slidesToShow: 1,
	  centerMode: true,
		autoplay: true,		
	  variableWidth: true
	});
	
	$('.slideList1').slick({
		dots: true,
		infinite: true,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2000,
	/* 	rtl: true */
	});
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>