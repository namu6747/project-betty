<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div class="collapse navbar-collapse">
	<!-- 펼치기위한 트리거 -->
	<a class="nav-link dropdown-toggle" href="#"
		id="servicesDropdown" role="button" data-toggle="dropdown"
		aria-haspopup="true" aria-expanded="false">전체보기</a>


	<!-- 펼쳐져서 생긴 공간에 들어갈 것들 -->
	<div class="dropdown-menu dropdown-menu-left"
		aria-labelledby="servicesDropdown">
		<div class="d-md-flex align-items-start justify-content-start"  style="text-align:center; ">
			<div class="col-md-4">
				<div class="dropdown-header">권능환</div>
				<br/>
				sign
				<a class="dropdown-item" href="${path}/sign/in">로그인</a>
				<a class="dropdown-item" href="${path}/sign/up/member">회원가입</a>
				<a class="dropdown-item" href="${path}/sign/up/staff">직원 회원가입</a> 
				 
				<br/>
				
				member
				
				<a class="dropdown-item" href="${path}/members/num/">대시보드</a>
				<a class="dropdown-item" href="${path}/members/num/edit">회원 정보 수정</a>
				
				<a class="dropdown-item" href="${path}/members/num/rentals">대여 목록</a> 
				
				<a class="dropdown-item" href="${path}/members/num/calendar">출석체크</a>
				
				<br/>
				
				book 
				<a class="dropdown-item" href="${path}/books/num">책 상세보기</a> 
				<a class="dropdown-item" href="${path}/books/">책 리스트</a>
			</div>
			
			<div class="col-md-4">
				<div class="dropdown-header">김선기</div>
				<br/>
				staff
				<a class="dropdown-item" href="${path}/staff/">직원 영역</a>
				<a class="dropdown-item" href="${path}/staff/members/">회원 정보 조회</a>
				<a class="dropdown-item" href="${path}/staff/num">직원 회원정보</a>
				
				<a class="dropdown-item" href="${path}/staff/num/edit">회원 정보 수정</a>
				
				<a class="dropdown-item" href="${path}/staff/books">도서 현황</a>
				
				<a class="dropdown-item" href="${path}/staff/books/new">도서 입고</a>
				<a class="dropdown-item" href="${path}/staff/books/num/edit">도서 정보 수정</a>
				
				<a class="dropdown-item" href="${path}/staff/rentals">도서 대여 현황 및 예약 정보</a>

				<br/>
				admin
				<a class="dropdown-item" href="${path}/admin/members">관리자 회원정보 확인</a>
				<br/>
				library
				<a class="dropdown-item" href="${path}/library">도서관 소개</a>
			</div>
			
			<div class="col-md-4">
				<div class="dropdown-header">박주신</div>
				<br/>
				board
				<a class="dropdown-item" href="${path}/boards/free/">자유게시판</a> 
				<a class="dropdown-item" href="${path}/boards/suggest/">건의사항</a> 
				<a class="dropdown-item" href="${path}/boards/notice/">공지사항</a> 
			  	<a class="dropdown-item" href="${path}/boards/free/num">자유게시판 상세보기</a> 
			  	<a class="dropdown-item" href="${path}/boards/free/new">자유게시판 등록</a> 
			  	<a class="dropdown-item" href="${path}/boards/free/num/edit">자유게시판 수정</a> 
			  	<a class="dropdown-item" href="${path}/boards/suggest/num">건의사항 상세보기</a> 
			  	<a class="dropdown-item" href="${path}/boards/suggest/new">건의사항 등록</a> 
			  	<a class="dropdown-item" href="${path}/boards/suggest/num/edit">건의사항 수정</a> 
			  	<a class="dropdown-item" href="${path}/boards/notice/num">공지사항 상세보기</a> 
			  	<a class="dropdown-item" href="${path}/boards/notice/new">공지사항 등록</a> 
			  	<a class="dropdown-item" href="${path}/boards/notice/num/edit">공지사항 수정</a> 
			  	<a class="dropdown-item" href="${path}/admin/profit">도서관 수익</a> 
			  	<a class="dropdown-item" href="${path}/admin/members">직원 정보</a>
			  	editor ex
			  	<a class="dropdown-item" href="${path}/edit">에디터 견본</a> 
			</div>
		</div>
	</div>
</div>