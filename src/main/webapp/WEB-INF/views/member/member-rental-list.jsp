<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp" %>

<!-- 대여 table -->
<section>
	<div class="container-md">
		<div class="row">
			<!-- 현재 대여 중인 목록 리스트 -->
			<div>
			    <div class="table-responsive">
			        <div class="table-wrapper">			
			            <div class="table-title">
			                <div class="row">
			                    <div class="col-md-3 col-md-3">
			                        <select class="w-100 form-control mt-md-1 mt-md-2" style="display: none;">
		                                <option value="1">대여 예약</option>
		                                <option value="2">현재 대여 중인 목록</option>
		                                <option value="3">총 대여 목록</option>
		                            </select>
			                    </div>
			                    <div class="col-md-7 col-md-7">
			                        <h2 class="text-center">현재 대여 중인 목록</h2>
			                    </div>
			                    <div class="col-lm-1 col-md-1">
			                        <div class="show-entries">
			                            <select>
			                                <option>5</option>
			                                <option>10</option>
			                                <option>15</option>
			                                <option>20</option>
			                            </select>
			                        </div>						
			                    </div>
			                </div>
			            </div>
			            
			            <table class="table table-bordered">
			                <thead>
			                    <tr>
			                        <th>#</th>
			                        <th>책 제목 <i class="fa fa-sort"></i></th>
			                        <th>작가<i class="fa fa-sort"></i></th>
			                        <th>대여 날짜<i class="fa fa-sort"></i></th>
			                        <th>반납 기간 <i class="fa fa-sort"></i></th>
			                        <th>상세보기</th>
			                    </tr>
			                </thead>
			                <tbody>
			                	<!-- 1 -->
			                    <tr>
			                        <td>1</td>
			                        <td>모시깽이</td>
			                        <td>헤르만 헤세</td>
			                        <td>22-08-07</td>
			                        <td>22-08-14</td>
			                        <td>
			                        	<a href="#" class="view" title="View" data-toggle="tooltip">
			                        	<i class="bi bi-book"></i></a>
			                        </td>
			                    </tr>
			                    <!-- 2 -->
			                    <tr>
			                        <td>2</td>
			                        <td>모시깽이2</td>
			                        <td>헤르만 헤세2</td>
			                        <td>22-08-14</td>
			                        <td>22-08-21</td>
			                        <td>
			                        	<a href="#" class="view" title="View" data-toggle="tooltip">
			                        	<i class="bi bi-book"></i></a>
			                        </td>
			                    </tr>
			                    <!-- 3 -->
			                    <tr>
			                        <td>3</td>
			                        <td>모시깽이3</td>
			                        <td>헤르만 헤세3</td>
			                        <td>22-08-21</td>
			                        <td>22-08-30</td>
			                        <td>
			                        	<a href="#" class="view" title="View" data-toggle="tooltip">
			                        	<i class="bi bi-book"></i></a>
			                        </td>
			                    </tr>
			                    <!-- 4 -->
			                    <tr>
			                        <td>4</td>
			                        <td>모시깽이4</td>
			                        <td>헤르만 헤세4</td>
			                        <td>22-09-07</td>
			                        <td>22-09-14</td>
			                        <td>
			                        	<a href="#" class="view" title="View" data-toggle="tooltip">
			                        	<i class="bi bi-book"></i></a>
			                        </td>
			                    </tr>
			                    <!-- 5 -->
			                    <tr>
			                        <td>5</td>
			                        <td>모시깽이5</td>
			                        <td>헤르만 헤세5</td>
			                        <td>22-09-14</td>
			                        <td>22-09-21</td>
			                        <td>
			                        	<a href="#" class="view" title="View" data-toggle="tooltip">
			                        	<i class="bi bi-book"></i></a>
			                        </td>
			                    </tr>     
			                </tbody>
			            </table>
			            
			            <!-- 페이징 처리 -->
			            <div class="clearfix">
			                <ul class="pagination">
			                    <li><a href="#">Previous</a></li>
			                    <li><a href="#" >1</a></li>
			                    <li><a href="#" >2</a></li>
			                    <li><a href="#" >3</a></li>
			                    <li><a href="#" >4</a></li>
			                    <li><a href="#" >5</a></li>
			                    <li><a href="#" >Next</a></li>
			                </ul>
			            </div>
			        </div>
			    </div>        
			</div>  
		 </div>  
	</div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp" %>

 </html>