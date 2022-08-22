<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp" %>

<!-- Signup Section Begin -->
<section class="signup spad">
    <div class="container-md">
        <div class="row">
            <div class="col-md-6">
                <div class="login__form">                        
                    <h3>Sign UP</h3>
                    <form action="#">
                        <div class="input__item">
                            <input type="text" name="uid" placeholder="아이디를 입력 하세요" />
                            <span><i class="bi bi-person-video2"></i></span>
                        </div>
                        <div class="input__item">
                            <input type="password" name="upw"
                            placeholder="비밀번호 입력하세요"/>
                            <span class="icon_lock"></span>
                        </div>
                        <div class="input__item">
                            <input type="password" name="repw"
                            placeholder="비밀번호 재입력하세요"/>
                            <span class="icon_lock"></span>
                        </div>
                        <div class="input__item">
                            <input type="text" name="uname"
                            placeholder="이름을 입력하세요"/>
                            <span class="icon_profile"></span>
                        </div>
                        <div class="input__item">
                            <input type="text" name="birth"
                            placeholder="19930516"/>
                            <span><i class="bi bi-calendar3"></i></span>
                        </div>
                        <div class="input__item">
                            <input type="text" name="addr"
                            placeholder="사랑시 고백구 행복동"/>
                            <span><i class="bi bi-house"></i></span>
                        </div>
                        <div class="input__item">
                            <input type="number" name="phone"
                            placeholder="01012345678"/>
                            <span><i class="bi bi-phone"></i></span>
                        </div>
                        <div class="input__item">
                            <input type="email" name="email" placeholder="이메일을 입력하세요" />
                            <span class="icon_mail"></span>
                        </div>
                        <!-- 좌측 정렬 -->
                        <button type="submit" class="site-btn">가입 하기</button>
                        <!-- 우측 정렬 -->
                        <button type="button" class="cancel-btn">취소</button>
                    </form>                        
                </div>
            </div>

            <div class="col-md-6">
                <div class="login__social__links">
                    <h3>Login With:</h3>
                    <ul>
                        <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a>
                        </li>
                        <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                        <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Signup Section End -->

<%@include file="/WEB-INF/views/include/footer.jsp" %>

</html>