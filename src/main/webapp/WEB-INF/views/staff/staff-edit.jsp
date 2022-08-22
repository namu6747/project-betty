<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }"
	scope="session" />

<%@include file="/WEB-INF/views/include/header.jsp"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
</style>


<div class="container-md spad">
	<div class="row">
		<div class="col-md-1 text-white">nav</div>
		<div class="col-md-10">
		<div class="section-title">
				<br />
				<h4>직원 정보 업데이트</h4>
				<br />
			</div>
			<div class="row justify-content-center">
				<div class="col-md-11 col-md-4" id="imgs">
					<img class="img-thumbnail" alt="..."
						src="${path}/resources/img/member/profile_male.png" />
					<button type="button" class="btn btn-secondary btn-md btn-block">프로필
						사진 변경</button>
				</div>
				<div class="col-md-11 col-md-7">
					<div class="product__page__title">
						<div class="row">
							<div class="col-md-8 title__align__center">
								<div class="section-title">
									<h4>회원 정보</h4>
								</div>
							</div>
							<div class="col-md-4 anime__details__btn">
								<button class="follow-btn float-right">회원 정보 수정</button>
							</div>
						</div>
					</div>

					<div class="staffInfoList">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<button type="button" class="btn btn-secondary">아무버튼</button>

							</div>
							<select class="custom-select" id="inputSelect01">
								<option selected>선택 하세요</option>
								<option value="1">남자</option>
								<option value="2">여자</option>
								<option value="3">고자</option>
							</select>
							<div class="input-group-append">
								<label class="input-group-text" for="inputGroupSelect01">성별</label>
							</div>
						</div>
						<br />
						<div class="input-group flex-nowrap">
							<!-- input 그룹 앞에 온다 -->
							<div class="input-group-prepend"></div>
							<input type="text" class="form-control" placeholder="주신 박"
								aria-label="Username" aria-describedby="addon-wrapping">
							<div class="input-group-append">
								<label class="input-group-text" for="inputGroupSelect02">직원
									이름</label>
							</div>

						</div>
						<br />
						<div class="input-group flex-nowrap">
							<div class="input-group-prepend">
								<span class="input-group-text" id="addon-wrapping2">직원
									전화번호</span>
							</div>
							<input type="text" class="form-control"
								placeholder="010-1234-1234" aria-label="Username"
								aria-describedby="addon-wrapping">
						</div>
						<br />
						<div class="input-group flex-nowrap">
							<div class="input-group-prepend">
								<span class="input-group-text" id="addon-wrapping3">직원
									전화번호</span>
							</div>
							<input type="text" class="form-control"
								placeholder="010-1234-1234" aria-label="Username"
								aria-describedby="addon-wrapping">
						</div>
						<br />
						<div class="input-group flex-nowrap">
							<div class="input-group-prepend">
								<span class="input-group-text" id="addon-wrapping4">직원
									전화번호</span>
							</div>
							<input type="text" class="form-control"
								placeholder="010-1234-1234" aria-label="Username"
								aria-describedby="addon-wrapping">
						</div>
						<br />
					</div>

				</div>

			</div>
		</div>
		<div class="col-md-1 text-white">nav</div>
	</div>

</div>


<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>