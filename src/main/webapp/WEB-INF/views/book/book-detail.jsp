<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@include file="/WEB-INF/views/include/header.jsp" %>

<!-- BookDetails Section Begin -->
<section class="anime-details">
    <div class="container-md spad-sm">
        <div class="anime__details__content">
            <div class="row">
                <div class="col-md-4">
                    <div class="anime__details__pic set-bg" data-setbg="${path}/resources/img/book/800/9791158791919.jpg">
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="anime__details__text">
                        <div class="anime__details__title">
                            <h3>영원한 우정으로</h3>
                            <span>작가／출판사</span>
                        </div>
                        <div class="anime__details__widget">
                            <div class="row">
                                <div class="col-md-6 col-md-6">
                                    <ul>
                                        <li><span>장르:</span> 소설</li>
                                        <li><span>작가:</span> 무라카미 하루키</li>
                                        <li><span>출판일:</span> 2020.02.02 </li>
                                        <li><span>출판사:</span> 문학동네 </li>
                                    </ul>
                                </div>
                                <div class="col-md-6 col-md-6">
                                    <ul>
                                        <li><span>쪽수:</span> 721쪽</li>
                                        <li><span>무게:</span> 516g</li>
                                        <li><span>ISBN:</span> 9791189909390</li>
                                        <li><span>조회수:</span> 131,541</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="anime__details__btn float-right">
                            <a href="#" class="watch-btn">대여 예약</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md anime__details__content">
	                  <div class="anime__details__title">
	                          <h3>도서 소개</h3>
	                  </div>
                      <p>content</p>
                    </div>
                </div>
                
            </div>
        <%@include file="/WEB-INF/views/book/fragment/book-detail-comment.jsp" %> 
    </div>
</section>
<!--  BookDetails Section End -->

<%@include file="/WEB-INF/views/include/footer.jsp" %>

</html>