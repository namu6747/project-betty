<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp" %>
<style>
	#pa{
		height: 100px;
	}
</style>
<section>
	<div class="container-md">
		<div class="row">
			<!-- myList -->
			<div class="col-md-2 col-md-3">
			</div>
			<!-- 건의사항 -->
			<div class="col-md-7">
			    <div class="table-responsive">
			        <div class="table-wrapper">			
			            <div class="table-title">
			                <div class="row">
			                    <div class="col-md-3 col-md-3">
			                        <select class="w-100 form-control mt-md-1 mt-md-2" style="display: none;">
		                                <option value="1">말머리</option>
		                                <option value="2">말머리1</option>
		                                <option value="3">말머리2</option>
		                            </select>
			                    </div>
			                    <div class="col-md-5 col-md-5">
			                        <h2 class="text-center">건의사항</h2>
			                    </div>
			                    <div class="col-md- col-md-1">
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
			                        <th>말머리</th>
			                        <th>제목</th>
			                        <th>작성자</th>
			                        <th>조회수</th>
			                        <th>작성일</th>
			                        <th>추천</th>
			                        <th>비추천</th>
			                    </tr>
			                </thead>
			                <tbody>
			                	<!-- 1 -->
			                    <tr>
			                        <td>1</td>
			                        <td>모시깽이</td>
			                        <td>헤르만 헤세</td>
			                        <td>A001-111</td>
			                        <td>0</td>
			                        <td>1970-01-01</td>
			                        <td>
			                           <a href="#" class="recommend" title="Recommend" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-up"></i>
			                           	</a>
			                        </td>
			                        <td>
			                           <a href="#" class="decommendation" title="Decommendation" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-down"></i>
			                           	</a>
			                        </td>
			                    </tr>
			                    <!-- 2 -->
			                    <tr>
			                        <td>2</td>
			                        <td>모시깽이2</td>
			                        <td>헤르만 헤세2</td>
			                        <td>A002-222</td>
			                        <td>0</td>
			                        <td>1970-01-01</td>
			                        <td>
			                            <a href="#" class="recommend" title="Recommend" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-up"></i>
			                           	</a>
			                        </td>
			                        <td>
			                           <a href="#" class="decommendation" title="Decommendation" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-down"></i>
			                           	</a>
			                        </td>
			                    </tr>
			                    <!-- 3 -->
			                    <tr>
			                        <td>3</td>
			                        <td>모시깽이3</td>
			                        <td>헤르만 헤세3</td>
			                        <td>A003-333</td>
			                        <td>0</td>
			                        <td>1970-01-01</td>
			                        <td>
			                            <a href="#" class="recommend" title="Recommend" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-up"></i>
			                           	</a>
			                        </td>
			                        <td>
			                           <a href="#" class="decommendation" title="Decommendation" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-down"></i>
			                           	</a>
			                        </td>
			                    </tr>
			                    <!-- 4 -->
			                    <tr>
			                        <td>4</td>
			                        <td>모시깽이4</td>
			                        <td>헤르만 헤세4</td>
			                        <td>A004-444</td>
			                        <td>0</td>
			                        <td>1970-01-01</td>
			                        <td>
			                            <a href="#" class="recommend" title="Recommend" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-up"></i>
			                           	</a>
			                        </td>
			                        <td>
			                           <a href="#" class="decommendation" title="Decommendation" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-down"></i>
			                           	</a>
			                        </td>
			                    </tr>
			                    <!-- 5 -->
			                    <tr>
			                        <td>5</td>
			                        <td>모시깽이5</td>
			                        <td>헤르만 헤세5</td>
			                        <td>A005-5</td>
			                        <td>0</td>
			                        <td>1970-01-01</td>
			                        <td>
			                            <a href="#" class="recommend" title="Recommend" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-up"></i>
			                           	</a>
			                        </td>
			                        <td>
			                           <a href="#" class="decommendation" title="Decommendation" data-toggle="tooltip">
			                           		<i class="bi bi-hand-thumbs-down"></i>
			                           	</a>
			                        </td>
			                    </tr>        
			                </tbody>
			            </table>
			            
			            <form>
		                    <div class="form-row">
		                        <div class="form-group col-md-3 col-md-6">
		                            <select class=" w-100 form-control mt-md-1 mt-md-2" style="display: none;">
		                                <option>카테고리</option>
		                                <option value="1">카테고리1</option>
		                                <option value="2">카테고리2</option>
		                            </select>
		                        </div>
		                        <div class="form-group col-md-4 col-md-3 col-md-6">
		                            <input type="text" class="form-control my-2 my-md-1" id="inputtext4">
		                        </div>
		                        <div class="form-group col-md-2 col-md-3 col-md-6">
		                            <button type="submit" class="btn btn-primary active w-100">검색하기</button>
		                        </div>
		                    </div>
		                </form>
			            
			            <!-- 페이징 처리 -->
			            <div class="form-row">
			                <ul class="pagination" id="pa">
			                    <li><a href="#" >Previous</a></li>
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

<%@include file="../../include/footer.jsp" %>
</html>