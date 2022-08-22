<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp" %>

<!-- 로그인 화면 윗 공간 -->
<section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">
    <div class="container-md">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="normal__breadcrumb__text">
                    <h2>환영합니다!</h2>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Login Section Begin -->
<section class="login">
	<div class="container-md">
			<div class="row justify-content-center">
				<div class="login__form">
					<form>
						<div class="list-group justify-content-center">
							<div class="input__item">
								<input type="text" name="uid" placeholder="아이디"> <span
									class="icon_profile"></span>

							</div>
							<div class="input__item">
								<input type="password" name="upw" placeholder="비밀번호"> <span
									class="icon_lock"></span>
							</div>

							<div class="form-check" style="width: 100%; text-align: center">
								<input class="form-check-input" type="checkbox" id="loginCookie">
								<label class="form-check-label" for="loginCookie">로그인시
									쿠키 저장</label>
							</div>

							<!-- 버튼 크기 == input__itme 크기 -->
							<div class="row justify-content-center">
								<button type="submit" class="common-btn btn" style="width: 50%">로그인</button>
							</div>
						</div>
					</form>
					<!-- login form의 right 정렬 -->
					<ul
						class="list-group list-group-horizontal-md justify-content-center">
						<li class="list-group-item"><a href="">아이디 찾기</a></li>
						<li class="list-group-item"><a href="">비밀번호 찾기</a></li>
					</ul>
				</div>
		</div>
	</div>
</section>
<!-- Login Section End -->


<%@include file="/WEB-INF/views/include/footer.jsp" %>
</html>
