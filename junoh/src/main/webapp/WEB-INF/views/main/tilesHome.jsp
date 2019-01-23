<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<script>
function alias(index){
		var inputString = prompt('PC 별칭을 입력하세요.','PC별칭');
		alert(inputString);		
	
		comAjax("/board/ajax/ajaxTest","frm",callBack,"POST");
}

function callBack(result){
	alert("ajax 통신 완료!");
	$('#frm').attr("action","/board/tilesHome").submit();
	alert("ajax 통신 완료!!");
}
	
</script>

<form name="frm" id="frm" class="form-horizontal form-label-left" method="post"  enctype="multipart/form-data">

<title>Insert title here1222</title>

<body>

	공용 ajax test 위한 </br>
	<%-- 별명 수정 창 : <a href="#" class="btn btn-info" onclick="alias(${child_map.MEM_PC_SEQ})">별칭설정</a> --%>
	별명 수정 창 : <a href="#" class="btn btn-info" onclick="alias(1)">별칭설정</a>
	
</body>

</form>

