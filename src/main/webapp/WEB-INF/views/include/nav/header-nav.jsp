<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Header Section Begin -->
	<header class="header">
		<div class="container-md">
			<nav class="navbar navbar-light navbar-expand-md">
				<!-- 로고 -->
					<div class="col-md-3">
						<div class="row">
							<div class="col-md">
								<a href="${path}/"> 
								<img style="height: 40px" src="${path}/resources/img/logo/betty2.png" alt="main">
								</a>
	
							</div>
							<div class="col-md">
								<%@include file="home-mega-menu.jsp" %>
							</div>
						</div>
					</div>
						<!-- 가운데 메뉴바 -->
						<div class="col-md-4">
							<nav class="nav">
								<a class="nav-link" href="${path}/library/">도서관 소개</a> 
								<a class="nav-link" href="${path}/books/">도서 목록</a> 
								<a class="nav-link" href="${path}/members/num">회원 공간</a>
								<a class="nav-link" href="${path}/boards/notice/">게시판</a>
								<a class="nav-link" href="${path}/staff/">직원</a>
								<a class="nav-link" href="${path}/admin/">관리자</a>
							</nav>
						</div>
						<!-- 우측 회원관련 -->
						<div class="col-md-3 float-right">
							<nav class="nav float-right">
								<a class="nav-link" href="${path}/sign/in">로그인</a> <a
									class="nav-link" href="${path}/sign/up/member">회원가입</a>
							</nav>
						</div>
						<div class="col-md-2">
							<nav class="nav">
								<a class="nav-link active" href="#">KOR</a> <a
									class="nav-link disabled" style="padding: 0.5rem 0.2rem">|</a>
								<a class="nav-link wait" href="#">ENG</a>
							</nav>
					</div>
			</nav>
		</div>
	</header>
<div class="header-lantern-left"></div>
<div class="header-lantern-right"></div>

<% 
String uri = request.getRequestURI();
	if(uri.contains("views/member")){
		request.setAttribute("leftNav", "member"); 
	} else if (uri.contains("views/staff")){
		request.setAttribute("leftNav", "staff");
	} else if (uri.contains("views/admin")){
		request.setAttribute("leftNav", "admin");
	} else if (uri.contains("views/board")){
		request.setAttribute("leftNav", "board");
	} else {
		request.setAttribute("leftNav", "");
	}
%>
<c:choose>
	<c:when test="${leftNav eq 'member'}">
		<%@include file="/WEB-INF/views/include/nav/member-side-nav.jsp"%>
	</c:when>
	<c:when test="${leftNav eq 'staff'}">
		<%@include file="/WEB-INF/views/include/nav/staff-side-nav.jsp"%>
	</c:when>
	<c:when test="${leftNav eq 'admin'}">
		<%@include file="/WEB-INF/views/include/nav/admin-side-nav.jsp"%>
	</c:when>
	<c:when test="${leftNav eq 'board'}">
		<%@include file="/WEB-INF/views/include/nav/board-side-nav.jsp"%>
	</c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>
<%@include file="/WEB-INF/views/include/nav/right-side-nav.jsp"%>