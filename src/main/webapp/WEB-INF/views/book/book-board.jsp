<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp"%>


<style>
	.card{
		padding:1rem;
		width: 170px;
		height: 300px;
		overflow: hidden;
	}

	.card-img-top{
		width:136px;
		height:200px;
	}
	
	.card-body, .card-title{
		font-size: 1rem !important;
		padding: 0;
	}
	
	.card-title{
		margin-top:1rem;
	}
</style>
<section>
	<div class="container-md spad">
		<div class="row justify-content-center">
			<div class="col-md-10">
			<div class="btn-group btn-group-toggle mb-5" data-toggle="buttons">
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value=""> <s:message code="text.all"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="100"> <s:message code="genre.100"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="200"> <s:message code="genre.200"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="300"> <s:message code="genre.300"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="400"> <s:message code="genre.400"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="500"> <s:message code="genre.500"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="600"> <s:message code="genre.600"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="700"> <s:message code="genre.700"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="800"> <s:message code="genre.800"/>
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="genre" value="900"> <s:message code="genre.900"/>
			  </label>
			</div>
			
			
			
				
				<c:choose>
					<c:when test="${!empty list}">
				<div class="row row-cols-1 row-cols-md-4">
						<c:forEach var="board" items="${list}">
							<div class="col mb-3">
							    <div class="card">
							      <img src="${path}/resources/img/book/origin/${board.code}.jpg" onclick="location.href='${path}/books/${board.code}${pm.makeQuery(pm.cri.page)}'" class="card-img-top">
							      <div class="card-body">
							        <h5 class="card-title">${board.title}</h5>
							      </div>
							    </div>
							  </div>
						</c:forEach>
										</div>
					</c:when>
					<c:otherwise>
						<h1 style="height: 600px">????????? ???????????? ????????????.</h1>
					</c:otherwise>
				</c:choose>

				
				<div class="row justify-content-between mt-5">
					<form id="searchForm">
						<div class="form-row input-group mb-3">
							<input name="genre" id="hiddenGenre" hidden/>
							<input name="page" id="hiddenPage" hidden/>
							<div class="input-group-prepend">
								<select name="searchOption" id="searchOption" >
									<option value="title">??????</option>
									<option value="auth">?????????</option>
									<option value="intro">??????</option>
								</select>
							</div>
							<input name="searchText" class="form-control">
							<div class="input-group-append">
								<button type="submit" class="btn btn-primary">????????????</button>
							</div>
						</div>
					</form>
					<!-- ????????? ?????? -->
					<div class="form-row">
						<ul class="pagination" id="pa">
							<c:if test="${pm.first}">
								<li>
									<a href="${path}/books${pm.makeQuery(1)}">&laquo;&laquo;</a>
								</li>
							</c:if>
							<c:if test="${pm.prev}">
								<li>
									<a href="${path}/books${pm.makeQuery(pm.startPage-1)}">&laquo;</a>
								</li>
							</c:if>
							<c:forEach var="i" begin="${pm.startPage}" 
											   end="${pm.endPage}">
								<li ${pm.cri.page == i ? 'class=active' : ''}>
									<a href="${path}/books${pm.makeQuery(i)}">${i}</a>
								</li>
							</c:forEach>
							<c:if test="${pm.next}">
								<li>
									<a href="${path}/books${pm.makeQuery(pm.endPage+1)}">&raquo;</a>
								</li>
							</c:if>
							<c:if test="${pm.last}">
								<li>
									<a href="${path}/books${pm.makeQuery(pm.maxPage)}">&raquo;&raquo;</a>
								</li>
							</c:if>
						</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product Section End -->

<%@include file="/WEB-INF/views/include/footer.jsp"%>

<script>
	let genreBtn = $('#hiddenGenre');
	let hiddenPage = $('#hiddenPage');
	
	$(function(){
		
		if(hiddenPage.val() == ''){
			hiddenPage.val(1);
		}
		
		if('${cri.genre}' != ''){
			let genre = $("input:radio[name=genre][value='${cri.genre}']");
			genre.parent().addClass('focus');
			genreBtn.val(genre.val());
		} else {
			let clicked = $("input:radio[name=genre][value='']");
			clicked.parent().addClass('focus');
		}
	})
	
	$('input:radio[name=genre]').on('click', function(ev){
		let genreValue = this.value;
		genreBtn.val(genreValue);
		location.href=`${path}/books?genre=\${genreValue}`;
	})

</script>