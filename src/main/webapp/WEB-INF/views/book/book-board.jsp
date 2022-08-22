<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp"%>

<%@include file="/WEB-INF/views/include/section-slider.jsp"%>

<section class="product spad">
	<div class="container-md">
		<div class="row">
			<div class="col-md-10">
				<div class="trending__product">
					<div class="row">
						<div class="col-md-4">
							<div class="product__item">
								<div class="product__item__pic set-bg"
									data-setbg="${path}/resources/img/book/800/9791158791919.jpg">
									<div class="comment">
										<i class="fa fa-comments"></i> 댓글
									</div>
									<div class="view">
										<i class="fa fa-eye"></i> 조회수
									</div>
								</div>
								<div class="product__item__text">
									<ul>
										<li>소설</li>
										<li>넬레 노이하우스</li>
									</ul>
									<h5>
										<a href="#">책 제목 적어야지</a>
									</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 페이징 처리 -->
				<div class="product__pagination">
	                <a href="#" class="current-page">1</a>
	                <a href="#">2</a>
	                <a href="#">3</a>
	                <a href="#">4</a>
	                <a href="#">5</a>
	                <a href="#"><i class="fa fa-angle-double-right"></i></a>
	            </div>
            
			</div>
			
			<div class="col-md-2">
				<!-- 최근에 클릭 한 책 리스트 -->
				<%@include file="/WEB-INF/views/include/nav/right-side-nav.jsp" %>
			</div>
		</div>
	</div>
</section>
<!-- Product Section End -->

<%@include file="/WEB-INF/views/include/footer.jsp"%>

</html>