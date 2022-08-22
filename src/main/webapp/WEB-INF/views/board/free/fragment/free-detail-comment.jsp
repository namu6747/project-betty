<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="blog__details__comment">
	<h4>총 3개의 댓글</h4>

	<div class="blog__details__comment__item">
		<div class="anime__review__item__pic">
			<img src="/c/resources/img/member/thumb_profile_male.png" alt="">
		</div>
		<div class="blog__details__comment__item__text">
			<span>Sep 08, 2020</span>
			<h5>John Smith</h5>
			<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit
				amet, consectetur, adipisci velit, sed quia non numquam eius modi</p>
			<a href="#">답글</a> <a href="#">삭제</a>
		</div>
	</div>

	<div
		class="blog__details__comment__item blog__details__comment__item--reply">
		<div class="anime__review__item__pic">
			<img src="/c/resources/img/member/profile_female.png" alt="">
		</div>
		<div class="blog__details__comment__item__text">
			<span>Sep 08, 2020</span>
			<h5>Elizabeth Perry</h5>
			<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit
				amet, consectetur, adipisci velit, sed quia non numquam eius modi</p>
			<a href="#">답글</a> <a href="#">삭제</a>
		</div>
	</div>

	<div class="blog__details__form">
		<h4>댓글 작성란</h4>
		<form action="#">
			<div class="row" style="display: block">
				<div class="col-md-12">
					<textarea placeholder="Message"></textarea>
					<button type="submit" class="site-btn">작성</button>
				</div>
			</div>
		</form>
	</div>
</div>