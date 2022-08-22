<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp"%>

<style>
.img-thumbnail {
	background-color: #B7B7B7;
}

.input-group-text {
	min-width: 130px;
}

#imgs {
	min-width: 400px;
}

.flex-nowrap, .form-control {
	max-width: 90%;
	min-height: 51px;
}

.custom-select {
	max-width: 70%;
	min-height: 51px;
}

.staffInfoList ul, .staffInfoList ul :nth-child(2) {
	min-width: 70%;
}

#imgs {
	max-width: 500px;
}
</style>

<section>
	<div class="container-md spad">
		<div class="row">
			<div class="col-md-2">
				<%@include file="/WEB-INF/views/include/nav/staff-side-nav.jsp"%>
			</div>
			<div class="col-md-8">
				<div class="section-title">
					<br />
					<h4>도서 입고</h4>
					<br />
				</div>
				<div class="row justify-content-center">
					<div class="col-md-11 col-md-4" id="imgs">
						<img class="img-thumbnail" alt="..."
							src="${path}/resources/img/book/100/9788935213344.jpg" />
						<button type="button" class="btn btn-secondary btn-md btn-block">
							책 표지 삽입</button>
					</div>
					<div class="col-md-11 col-md-7 spad">
						<div class="product__page__title">
							<div class="row">
								<div class="col-md-8 title__align__center">
									<div class="section-title">
										<h4>입고도서 정보</h4>
									</div>
								</div>
								<div class="col-md-4 anime__details__btn">
									<button type="submit" class="follow-btn float-right">작성 완료</button>
								</div>
							</div>
						</div>

						<div class="staffInfoList">
							<div class="input-group mb-3 flex-nowrap">
								<div class="input-group-append">
									<label class="input-group-text" for="inputGroupSelect01">장르</label>
								</div>
								<select class="custom-select" id="inputSelect01">
									<option selected>장르 선택</option>
									<option value="1">소설</option>
									<option value="2">에세이</option>
									<option value="3">사전</option>
								</select>
							</div>

							<br />
							<!-- << input 태그 블럭 하나 . 추가시 복붙 -->
							<div class="input-group flex-nowrap">
								<div class="input-group-prepend">
									<span class="input-group-text" id="updateBeookTitle">도서 명</span>
								</div>
								<input type="text" class="form-control"
									placeholder="도서명 입력" aria-label="Username"
									aria-describedby="addon-wrapping">
							</div>
							<br />
							<!-- >> input 태그 블럭 하나 -->
							<div class="input-group flex-nowrap">
								<div class="input-group-prepend">
									<span class="input-group-text" id="updateBeookAuthor">작가
										</span>
								</div>
								<input type="text" class="form-control"
									placeholder="작가 입력" aria-label="Username"
									aria-describedby="addon-wrapping">
							</div>
							<br />
							<div class="input-group flex-nowrap">
								<div class="input-group-prepend">
									<span class="input-group-text" id="updateBookPub">출판사</span>
								</div>
								<input type="text" class="form-control"
									placeholder="출판사 입력" aria-label="Username"
									aria-describedby="addon-wrapping">
							</div>
							<br />
						</div>

					</div>

				</div>
			</div>
			<div class="col-md-2">
				<%@include file="/WEB-INF/views/include/nav/right-side-nav.jsp"%>
			</div>

		</div>
	</div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>