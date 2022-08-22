<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp" %>
<script src="/c/resources/ckeditor/ckeditor.js"></script>
<script>
	var ckeditor_config = {
		resize_enabled : false,
		enterMode : CKEDITOR.ENTER_BR,
		shiftEnterMode : CKEDITOR.ENTER_P,
		filebrowserUploadUrl : "resources/ckUpload.do",
		filebrowserUploadMethod : 'form'
	};
</script>


<section class="blog-details spad">
	<div class="container-md">
		<div class="row d-flex justify-content-center">

			<div class="col-md-8 blog__details__form spad">
				<form>
				
					<div class="col-md-8 section-title">
						<h4>[자유게시판 수정 제목]</h4>
						<div class="col-md-3 col-md-3">
			                        <select class="w-100 form-control mt-md-1 mt-md-2" style="display: none;">
		                                <option value="1">말머리</option>
		                                <option value="2">말머리1</option>
		                                <option value="3">말머리2</option>
		                            </select>
			                    </div>
					</div>
					
					<input class="col-md-6 form-control" type="text"
						placeholder="제목을 작성하세요." />
						
					<div class="col-md-8 section-title">
						<h4>[자유게시판 수정 내용]</h4>
					</div>
					
					<textarea id="editor4" class="col-md-6 form-control"
						style="resize: none;" placeholder="내용을 작성하세요."></textarea>
					<div class="normal-breadcrumb">	
						<button type="submit" class="site-btn">수정</button>
						<button type="submit" class="site-btn">취소</button>
					</div>
						
				</form>
			</div>

		</div>
	</div>
</section>

<script>
	CKEDITOR.replace('editor4', ckeditor_config);
</script>


<%@include file="../../include/footer.jsp" %>
</html>