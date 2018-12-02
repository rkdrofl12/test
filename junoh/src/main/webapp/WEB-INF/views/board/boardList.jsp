<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST ALL PAGE</h3>
				</div>
				<div class="box-body">
				
<table class="table table-bordered">
	<tr>
		<th style="width: 150px">분류</th>
		<th style="width: 150px">번호</th>
		<th>제목</th>
		<th style="width: 150px">작성자</th>
		<th style="width: 150px">작성일</th>
		<th style="width: 100px">조회수</th>
	</tr>


<c:forEach items="${list}" var="boardVO">

	<tr>
		<td></td>
		<td>${boardVO.bno}</td>
		<td><a href='/board/read?bno=${boardVO.bno}'>
		<c:if test="${boardVO.title eq 'board_notice'}">공지사항</c:if>
		<c:if test="${boardVO.title eq 'board_faq'}">1:1문의</c:if>
		<c:if test="${boardVO.title eq 'board_file'}">파일</c:if>
		<%-- ${boardVO.title} --%>
		</a></td>
		<td>${boardVO.writer}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
				value="${boardVO.regdate}" /></td>
		<td><span class="badge bg-red">${boardVO.viewcnt }</span></td>
	</tr>

</c:forEach>

</table>

				</div>
				
				<div class="box-footer">
					<button id="board_insert" type="submit" class="btn btn-warning">게시판 생성</button>
				</div>


				<!-- /.box-body -->
				<div class="box-footer">Footer</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script>
    
    var result = '${msg}';
    
    if(result == 'SUCCESS'){
    	alert("처리가 완료되었습니다.");
    }
    
   
</script>

<script type="text/javascript">
	
		$("#board_insert").click(function() {
			location.href='/board/register';
		});

</script>

<%@include file="../include/footer.jsp"%>