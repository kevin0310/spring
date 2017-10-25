<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->
				<form role="form" action="modifyPage" method="post">
					<input type='hidden' name='bno' value="${boardVO.bno}">
					<input type='hidden' name='page' value="${cri.page}">
					<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Title</label><input type="text"
							name='title' class="form-control" value="${boardVO.title}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea name='content' class="form-control" rows="3"
							readonly="readonly">${boardVO.content}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label><input type="text"
							name='writer' class="form-control" value="${boardVO.writer}"
							readonly="readonly">
					</div>
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-warning modifyBtn">Modify</button>
					<button type="submit" class="btn btn-danger removeBtn">Remove</button>
					<button type="submit" class="btn btn-primary goListBtn">GO LIST</button>
				</div>

			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->
<%@include file="../include/footer.jsp"%>

<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$(".modifyBtn").on("click", function() {
			formObj.attr("action", "/board/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$(".removeBtn").on("click", function() {
			formObj.attr("action", "/board/removePage");
			formObj.submit();
		});
		$(".goListBtn").on("click", function() {
			formObj.attr("action", "/board/list");
//			formObj.attr("action", history.go(-1));
			formObj.attr("method", "get");
			formObj.submit();
		});
	});
</script>