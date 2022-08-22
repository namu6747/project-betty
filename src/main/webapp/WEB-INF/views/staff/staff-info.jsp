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

#imgs {
	min-width: 400px;
}

.staffInfoList ul {
	min-width: 70%;
}

.staffInfoList ul :nth-child(2) {
	min-width: 70%;
}
</style>

<div class="container-md">


	<div class="row">
		<div class="col-md-1 text-white">nav</div>


		<div class="col-md-10">
			<br />
			<div class="section-title">
				<br />
				<h4>직원별 회원 정보</h4>
				<br />
			</div>
			<div class="row">
				<div class="col-md-11 col-md-4" id="imgs">
					<img class="img-thumbnail" alt="..."
						src="${path}/resources/img/member/profile_male.png" />
					<button type="button" class="btn btn-secondary btn-md btn-block">프로필
						사진 변경</button>
				</div>
				<div class="col-md-11 col-md-7">
					<div class="product__page__title">
					<div class="row">
						<div class="col-md-8 col-md-8 col-md-6 title__align__center">
							<div class="section-title">
								<h4>회원 정보</h4>
							</div>
						</div>
						<div class="col-md-4 col-md-4 col-md-6 anime__details__btn">
							<button class="follow-btn float-right">+ 회원 등록</button>
						</div>
					</div>
				</div>

					<div class="staffInfoList">
						<ul class="list-group list-group-horizontal">
							<li class="list-group-item">직원 이름</li>
							<li class="list-group-item">박주신</li>
						</ul>
						<br />
						<ul class="list-group list-group-horizontal">
							<li class="list-group-item">직원 번호</li>
							<li class="list-group-item">010-1234-1234</li>
						</ul>
						<br />
						<ul class="list-group list-group-horizontal">
							<li class="list-group-item">직원 이름</li>
							<li class="list-group-item">박주신</li>
						</ul>
						<br />
						<ul class="list-group list-group-horizontal">
							<li class="list-group-item">직원 이름</li>
							<li class="list-group-item">박주신</li>
						</ul>
						<br />
						<ul class="list-group list-group-horizontal">
							<li class="list-group-item">직원 이름</li>
							<li class="list-group-item">박주신</li>
						</ul>
						<br />
					</div>
				</div>
				<div class="col-md-10">
					<div class="section-title">
						<br /> <br />
						<h4>뭐시깽이 : ㅁㄴㅇㄹ</h4>
						<br /> <br />
						<h4>뭐시깽이 : ㅁㄴㅇㄹ</h4>
						<br /> <br />
						<h4>뭐시깽이 : ㅁㄴㅇㄹ</h4>
						<br /> <br />
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-1 text-white">nav</div>
	</div>

</div>


<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>
