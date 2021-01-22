<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div id="result"></div>
<input id="msg">
<input type="button" value="get result" id ="getResult" >

<script>
	$('#getResult').click(function(){
		$("#result").html("");
		$.ajax({
			url:'/test',
			type:'post',
			data:{msg:$("#msg").val()},
			success:function(result){
				if(result['result']==true){}
				$("#result").html(result['msg']);
			}
		});
	});
</script>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>