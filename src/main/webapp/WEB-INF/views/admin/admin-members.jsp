<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- 관리자가 보는 회원 정보 화면 -->

<%@include file="/WEB-INF/views/include/header.jsp"%>


<section class="product-page spad">
	<div class="container-md">
		<div class="row">
		<div class="col-md-1 text-white">nav</div>
	
		<!-- 섹션 -->
		<div class="col-md-10">
			<!-- 타이틀 부분 -->
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

				<form>
					<div class="row justify-content-center spad">
						<table class="table-detail-search">
							<!-- 1행 -->
							<tr>
								<th>가입승인</th>
								<td class="text-align-left" colspan="3">
									<input type='radio' name='가입승인' id="전체" checked/> 
									<label for="전체">전체</label> 
									<input type='radio' name='가입승인' value='승인'/>승인 
									<input type='radio' name='가입승인' value='미승인'/>미승인
								</td>
							</tr>

							<!-- 2행 -->
							<tr>
								<th>회원구분</th>
								<td class="text-align-left">
									<input type='radio' name='회원구분' value='전체' checked/>전체 
									<input type='radio' name='회원구분' value='일반회원'/>일반회원
									<input type='radio' name='회원구분' value='직원'/>직원
								</td>
							</tr>

							<!-- 3행 -->
							<tr>
								<th>회원등급</th>
								<td>
									<div class="product__page__filter float-left">
										<select style="display: none;">
											<option value="">등급</option>
											<option value="일반">일반</option>
											<option value="유료">유료</option>
											<option value="VIP">VIP</option>
										</select>
										<div class="nice-select" tabindex="0">
											<span class="current">전체</span>
											<ul class="list">
												<li data-value class="option selected focus">전체</li>
												<li data-value class="option">일반</li>
												<li data-value class="option">유료</li>
												<li data-value class="option">VIP</li>
											</ul>
										</div>
									</div>
								</td>
							</tr>

							<!-- 4행 -->
							<tr>
								<th>검색어</th>
								<td>
								<select name="">
										<option value="">키워드</option>
										<option value="">아이디</option>
										<option value="">이름</option>
										<option value="">주소</option>
								</select> <input class="float-left" /></td>
							</tr>
							
							<tr>
								<th colspan="4">
									<a href="">상세 검색</a>
								</th>
							</tr>
							
						</table>
					</div>
				</form>

				<!-- table -->
				<table class="table-data-list table-striped table-dark">
					<!-- 1 -->
					<tr class="text-center">
						<td>번호</td>
						<td>회원사진</td>
						<td>아이디</td>
						<td>닉네임</td>
						<td>이름</td>
						<td>성별</td>
						<td>생년월일</td>
						<td>전화번호</td>
						<td>이메일</td>
						<td colspan="2">주소</td>
					</tr>
										
					<!-- 2 -->
					<tr>
						<td rowspan="3">1</td>
						<td rowspan="3" class="thumb-list-profile">
							<img src="/c/resources/img/member/thumb_profile_male.png"/>
						</td>
						<td>namu6747</td>
						<td>namu6747</td>
						<td>박재민</td>
						<td>남</td>
						<td>960205</td>
						<td>01056556747</td>
						<td>namu6747@naver.com</td>
						<td colspan="2">부산시 금정구 남산동 1234-5</td>
					</tr>
					
					<!-- 3 -->
					<tr>
						<td>회원구분</td>
						<td>회원등급</td>
						<td>포인트</td>
						<td>대여권수</td>
						<td>대여횟수</td>
						<td>체크인여부</td>
						<td>회원가입일</td>
						<td>가입승인</td>
						<td>블랙리스트</td>
					</tr>
					
					<!-- 4 -->
					<tr>
						<td>일반</td>
						<td>VIP</td>
						<td>30000</td>
						<td>2</td>
						<td>8</td>
						<td>OK</td>
						<td>2022-08-18</td>
						<td>OK</td>
						<td>NO</td>
					</tr>
					
					<!-- 1 -->
					<tr class="text-center">
						<td>번호</td>
						<td>회원사진</td>
						<td>아이디</td>
						<td>닉네임</td>
						<td>이름</td>
						<td>성별</td>
						<td>생년월일</td>
						<td>전화번호</td>
						<td>이메일</td>
						<td colspan="2">주소</td>
					</tr>
					
					<!-- 2 -->
					<tr>
						<td rowspan="3">1</td>
						<td rowspan="3" class="thumb-list-profile">
							<img src="/c/resources/img/member/thumb_profile_male.png"/>
						</td>
						<td>namu6747</td>
						<td>namu6747</td>
						<td>박재민</td>
						<td>남</td>
						<td>960205</td>
						<td>01056556747</td>
						<td>namu6747@naver.com</td>
						<td colspan="2">부산시 금정구 남산동 1234-5</td>
					</tr>
					<!-- 3 -->
					<tr>
						<td>회원구분</td>
						<td>회원등급</td>
						<td>포인트</td>
						<td>대여권수</td>
						<td>대여횟수</td>
						<td>체크인여부</td>
						<td>회원가입일</td>
						<td>가입승인</td>
						<td>블랙리스트</td>
					</tr>
					<!-- 4 -->
					<tr>
						<td>일반</td>
						<td>VIP</td>
						<td>30000</td>
						<td>2</td>
						<td>8</td>
						<td>OK</td>
						<td>2022-08-18</td>
						<td>OK</td>
						<td>NO</td>
					</tr>
				</table>
				
				
				<!-- col-md-10 -->
			</div>
			<div class="col-md-1 text-white">
				recently book
			</div>
		</div>
		<!-- container -->
	</div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp"%>

</html>