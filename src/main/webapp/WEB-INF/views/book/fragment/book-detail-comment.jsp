<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<hr/>
<div class="container-md spad-sm">
	<!-- 댓글 -->
	<div class="anime__details__review">
		<div class="section-title">
			<h5>후기</h5>
		</div>
		<div class="anime__review__item">
			<div class="anime__review__item__pic">
				<img src="${path}/resources/img/member/profile_male.png" alt="">
			</div>
			<div class="anime__review__item__text">
				<h6>
					유저 1 - <span>1 Hour ago</span>
				</h6>
				<p>whachikan Just noticed that someone categorized this as
					belonging to the genre "demons" LOL</p>
			</div>
		</div>
		<div class="anime__review__item">
			<div class="anime__review__item__pic">
				<img src="${path}/resources/img/member/profile_male.png" alt="">
			</div>
			<div class="anime__review__item__text">
				<h6>
					유저 2 - <span>5 Hour ago</span>
				</h6>
				<p>Finally it came out ages ago</p>
			</div>
		</div>
	</div>

	<div class="anime__details__form">
		<div class="section-title">
			<h5>후기 작성</h5>
		</div>
		<form action="#">
			<textarea placeholder="Your Comment"></textarea>
			<button type="submit">
				<i class="fa fa-location-arrow"></i> 확인
			</button>
		</form>
	</div>

</div>