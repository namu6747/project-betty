<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp" %>

<!-- Blog Details Section Begin -->
<section class="blog-details spad">
	<div class="container-md">
		<div class="row">

			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="row justify-content-center">
					<div class="col-md-8 section-title">
						<div class="col-md-12">
							<div class="breadcrumb__links">
								<a href="#"><i class="fa fa-home"></i> Home</a>
								<a href="#">Categories</a> 
								<span>Romance</span>
							</div>
						</div>
						<hr/>
						<h2>[건의사항]</h2>
					</div>

					<div class="col-md-8 blog__details__form spad">
						<form>
							<div class="col-md-8 section-title">
								<h4>[건의사항 제목]</h4>
							</div>
							<input class="col-md-12 form-control" type="text" value="[건의사항 제목]"
								readonly />
							<hr />
							<div class="row">
								<div class="col-md-6">
									<div class="blog__details">
										<div class="thumb-list-profile">
											<img src="/c/resources/img/member/thumb_profile_male.png" />
											<span class="text-white">닉네임</span>
										</div>
									</div>
								</div>
								<div class="col-md-6 text-white"
									style="line-height: 50px; text-align: right">2050-12-10</div>
							</div>
							<div class="row spad">
								<div class="col-md-8 section-title">
									<h4>[건의사항 내용]</h4>
								</div>
								<textarea class="col-md-12 form-control txtAreaLarge" style="resize: none;" 
									readonly>[건의사항 내용]</textarea>
							</div>
						</form>
					</div>

					<div class="col-md-8 blog__details__btns">
						<div class="row">
							<div class="col-md-6">
								<div class="blog__details__btns__item">
									<button type="submit" class="site-btn">목록</button>
								</div>
							</div>
							<div class="col-md-6">
								<div class="blog__details__btns__item next__btn">
									<button type="submit" class=" site-btn">수정</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>

			</div>
		</div>
	</div>
</section>
<!-- Blog Details Section End -->


<%@include file="../../include/footer.jsp" %>
</html>