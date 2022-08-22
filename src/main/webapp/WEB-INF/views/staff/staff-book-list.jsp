
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp"%>

<style>
#blackTable {
	border-spacing: 2px;
	border-collapse: separate;
}

#blackTable tr td {
	min-width: 50px;
	font-size: medium;
}

#blackTable tr td:first-child {
	max-width: 50px;
}

.genreSel {
	max-width: 100px;
}

</style>

<section>
	<div class="container-md">
		<div class="row">
			<div class="col-md-2">
				<%@include file="/WEB-INF/views/include/nav/staff-side-nav.jsp"%>
			</div>
			<div class="col-md-8">
				<!-- 섹션 -->
				<!-- 타이틀 부분 -->
				<div class="product__page__title">
					<div class="row">
						<div class="col-md-8 col-md-8 col-md-6 title__align__center">
							<div class="section-title">
								<h4>도서 현황</h4>
							</div>
						</div>
						<div class="col-md-4 col-md-4 col-md-6 anime__details__btn">
							<button class="follow-btn float-right">&#10009; 도서 등록</button>
						</div>
					</div>
				</div>

				<form>
					<div class="row justify-content-center spad">
						<table class="table-detail-search">
							<!-- 1행 -->
							<tr>
								<th>장르별</th>
								<td class="text-align-left " colspan="3">
									<div class="input-group mb-3">
										<select class="custom-select" id="inputGroupSelect02">
											<option selected>장르 선택...</option>
											<option id="장르1**">장르1</option>
											<option id="장르2**">장르2</option>
											<option id="장르3**">장르3</option>
										</select>

									</div>
								</td>
							</tr>
							<!-- 2행 -->
							<tr>
								<th>대여 여부</th>
								<td class="text-align-left"><input type='radio' name='대여여부'
									value='전체' checked />전체 <input type='radio' name='대여여부'
									value='대여중' />대여중 <input type='radio' name='대여여부' value='예약중' />예약
									중</td>
							</tr>

							<!-- 3행 -->
							<tr>
								<th>입고 날짜 별</th>

								<td>
									<div class="input-group">
										<input type="date" id="dateSel" />
										<div class="input-group-append">
											<!-- <label class="input-group-text" for="dateSel">입고일 선택</label> -->
										</div>
									</div>
								</td>
							</tr>
							<!-- 4행 -->
							<tr>
								<th>검색</th>
								<td><select class="keywordSelect">
										<option value="">키워드 선택</option>
										<option value="title">도서명</option>
										<option value="auth">작가</option>
										<option value="pub">출판사</option>
								</select> <input class="float-left" /></td>
							</tr>

							<tr>
								<th colspan="4"><a href="">상세 검색</a></th>
							</tr>

						</table>
					</div>
				</form>

				<!-- table -->
				<table id="blackTable"
					class="table-data-list table-striped table-dark">
					<!-- 1블럭 -->
					<!-- 1 -->
					<tr class="text-center">
						<td>번호</td>
						<td>책 표지</td>
						<td style="min-width: 130px">도서명</td>
						<td>ISBN</td>
						<td>작가</td>
						<td>출판사</td>
					</tr>
					<!-- 2 -->
					<tr>
						<td rowspan="3">1</td>
						<td class="책 이미지" style="max-width: 135px" rowspan="3"><img
							src="${path}/resources/img/book/100/9788935213344.jpg" /></td>
						<td>{title}</td>
						<td>{code}</td>
						<td>{auth}</td>
						<td>{pub}</td>
					</tr>
					<!-- 3 -->
					<tr>
						<td style="min-width: 130px">출판일</td>
						<td style="min-width: 130px">장르</td>
						<td style="min-width: 130px">보유 권수</td>
						<td style="min-width: 130px">기타</td>
					</tr>
					<!-- 4 -->
					<tr>
						<td>{pub_date}</td>
						<td>{genre}</td>
						<td>{보유권수} / <input type="button" value="수정" id="{ISBN**}"/></td>
						<td>{기타 넣을거}</td>
					</tr>
					<!-- 1블럭 -->
					<!-- 1블럭 -->
					<!-- 1 -->
					<tr class="text-center">
						<td>번호</td>
						<td>책 표지</td>
						<td style="width: 130px">도서명</td>
						<td>ISBN</td>
						<td>작가</td>
						<td>출판사</td>
					</tr>
					<!-- 2 -->
					<tr>
						<td rowspan="3">1</td>
						<td style="max-width: 135px" rowspan="3" class="책 이미지"><img
							src="${path}/resources/img/book/100/9788935213344.jpg" /></td>
						<td>{title}</td>
						<td>{code}</td>
						<td>{auth}</td>
						<td>{pub}</td>
					</tr>
					<!-- 3 -->
					<tr>
						<td style="width: 130px">출판일</td>
						<td style="width: 130px">장르</td>
						<td style="width: 130px">보유 권수</td>
						<td style="width: 130px">기타</td>
					</tr>
					<!-- 4 -->
					<tr>
						<td>{pub_date}</td>
						<td>{genre}</td>
						<td>{보유권수}</td>
						<td>{기타 넣을거}</td>
					</tr>
					<!-- 1블럭 -->
					<!-- 1블럭 -->
					<!-- 1 -->
					<tr class="text-center">
						<td>번호</td>
						<td>책 표지</td>
						<td style="width: 130px">도서명</td>
						<td>ISBN</td>
						<td>작가</td>
						<td>출판사</td>
					</tr>
					<!-- 2 -->
					<tr>
						<td rowspan="3">1</td>
						<td style="max-width: 135px" rowspan="3" class="책 이미지"><img
							src="${path}/resources/img/book/100/9788935213344.jpg" /></td>
						<td>{title}</td>
						<td>{code}</td>
						<td>{auth}</td>
						<td>{pub}</td>
					</tr>
					<!-- 3 -->
					<tr>
						<td style="width: 130px">출판일</td>
						<td style="width: 130px">장르</td>
						<td style="width: 130px">보유 권수</td>
						<td style="width: 130px">기타</td>
					</tr>
					<!-- 4 -->
					<tr>
						<td>{pub_date}</td>
						<td>{genre}</td>
						<td>{보유권수}</td>
						<td>{기타 넣을거}</td>
					</tr>
					<!-- 1블럭 -->
					<!-- 1블럭 -->
					<!-- 1 -->
					<tr class="text-center">
						<td>번호</td>
						<td>책 표지</td>
						<td style="width: 130px">도서명</td>
						<td>ISBN</td>
						<td>작가</td>
						<td>출판사</td>
					</tr>
					<!-- 2 -->
					<tr>
						<td rowspan="3">1</td>
						<td style="max-width: 135px" rowspan="3" class="책 이미지"><img
							src="${path}/resources/img/book/100/9788935213344.jpg" /></td>
						<td>{title}</td>
						<td>{code}</td>
						<td>{auth}</td>
						<td>{pub}</td>
					</tr>
					<!-- 3 -->
					<tr>
						<td style="width: 130px">출판일</td>
						<td style="width: 130px">장르</td>
						<td style="width: 130px">보유 권수</td>
						<td style="width: 130px">기타</td>
					</tr>
					<!-- 4 -->
					<tr>
						<td>{pub_date}</td>
						<td>{genre}</td>
						<td>{보유권수}</td>
						<td>{기타 넣을거}</td>
					</tr>
					<!-- 1블럭 -->
				</table>
				<!-- col-md-10 -->
			</div>

		</div>
		<div class="col-md-2">
			<%@include file="/WEB-INF/views/include/nav/right-side-nav.jsp"%>
		</div>
	</div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>

