<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp" %>

<section class="signup spad">
    <div class="container-md">
        <div class="row">
            <div class="col-md-12">
                <div class="login__form">                        
                    <h3>회원 정보 수정</h3>
                    <form action="#">
                        <div class="input__item">
                            <input type="text" name="uid" value="${uid }" />
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
                            value="${uname }" />
                            <span class="icon_profile"></span>
                        </div>
                        <div class="input__item">
                            <input type="text" name="birth"
                            value="${birth }"/>
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
                        <button type="submit" class="site-btn">회원정보 수정</button>
                        <!-- 우측 정렬 -->
                        <button type="button" class="cancel-btn">취소</button>
                    </form>                        
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/views/include/footer.jsp" %>

</html>