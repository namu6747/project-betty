<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 관리자가 보는 회원 정보 화면 -->

<%@include file="/WEB-INF/views/include/header.jsp"%>



<section>
	<div class="container-md spad">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="product__page__title">
					<div class="row">
						<div class="col-md-8 col-md-8 col-md-6 title__align__center">
							<div class="section-title">
								<h4><s:message code="text.user.info"/></h4>
							</div>
						</div>
					</div>
				</div>

				<form>
					<table class="table table-borderless table-dark mb-5">
						<tbody>
							<tr>
								<th scope="row"><s:message code="btn.sign.up.appoval"/></th>
								<td colspan="2">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn btn-secondary active"> 
											<input type="radio" name="allow" value="all" checked> <s:message code="text.all" />
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio"	name="allow" value="allow"> <s:message code="btn.sign.up.appoval"/>
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio" name="allow" value="disallow"> <s:message code="text.unapproval" />
										</label>
									</div>
								</td>
								<td></td>
							</tr>

							<!-- 2행 -->
							<tr>
								<th scope="row"><s:message code="text.staff" /></th>
								<td colspan="2">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn btn-secondary active"> 
											<input type="radio" name="rank" value="all" checked> <s:message code="text.all" />
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio"	name="rank" value="member"> <s:message code="btn.sign.up.member" />
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio" name="rank" value="staff"> <s:message code="text.staff"/>
										</label>
									</div>
								</td>
								<td></td>
							</tr>
							<!-- 3행 -->
							<tr>
								<th scope="row"><s:message code="text.membership" /></th>
								<td colspan="3">
									<div class="input-group text-secondary">
										<select id="gradeOption">
											<option value="all"><s:message code="text.all" /></option>
											<option value="Bronze">Bronze</option>
											<option value="Silver">Silver</option>
											<option value="VIP">VIP</option>
										</select>
									</div>
								</td>
							</tr>
							<!-- 4행 -->
							<tr>
								<th scope="row"><s:message code="btn.search" /></th>
								<td>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<select id="searchOption">
												<option value="id" selected><s:message code="text.id" /></option>
												<option value="name"><s:message code="text.name" /></option>
												<option value="addr"><s:message code="text.address" /></option>
											</select>
										</div>
										<input type="text" id="searchText" class="form-control"
											style="max-height: 36.5px">
									</div>
								</td>
								<td></td>
								<td><input id="submit" class="btn btn-danger" type="submit" value="검색" /><s:message code="btn.search" /></td>
							</tr>
						</tbody>
					</table>
				</form>


				<!-- table -->
				<table id="tbody" class="table-data-list table-striped table-dark">				

				</table>

				<div class="form-row">
					<ul class="pagination" id="pa">

					</ul>
				</div>

				<!-- col-md-10 -->
			</div>
		</div>
		<!-- container -->
	</div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp"%>

</html>

<script>
var initBookStr = null;
var num = 1;
$(function() {
	ajaxList(1);
});

function initData(){	
	initBookStr = ``;
}

$("#submit").on("click", function(e) {
	e.preventDefault();
	num = 1;
	ajaxList(1);
});


function ajaxList(pageNum) {	
	
	let ao = $("input[name=allow]:checked").val();		
	let ro = $("input[name=rank]:checked").val();		
	let go = $("#gradeOption").val();
	let so = $("#searchOption").val();
	let st = $("#searchText").val();
	$.ajax({
		type : 'get',
		url : "${path}/admin/members/cond",
		data : {
			allowOption : ao,
			rightsOption : ro,
			gradeOption : go,
			searchOption : so,
			searchText : st,
			page : pageNum
		},
		dataType : 'json',
		success : function(result) {
			printList(result.list);
			printPage(result.pm);
		}
	});
}

function printList(list) {
	initData();
	$(list)
			.each(
					function() {
						let rights = this.rights;
						
						let rank = '';			
						if (rights == 0) {
							rank = '일반';
						} else if (rights == 3) {
							rank = '관리자';
						} else {
							rank = '직원';
						}
						
						let allow = 'OK';
						if (rights == 1) {
							allow = `<button onclick='approve("\${this.id}")'>승인</button>`;
						}
						
						let checkIn = 'NO';
						if (this.checkIn) {
							checkIn = 'YES';
						}
						
						let black = "NO";
						if (this.black) {
							black = "YES";
						}
						
						let birth = new Date(this.birth);
						let formatBirth = birth.getFullYear() + "-"
								+ (birth.getMonth() + 1) + "-"
								+ birth.getDate();
						
						let regDate = new Date(this.regDate);
						let formatRegDate = regDate.getFullYear() + "-"
								+ (regDate.getMonth() + 1) + "-"
								+ regDate.getDate();
								
						initBookStr += `<tr class="text-center">
							<td><s:message code="text.num" /></td>
							<td>회원사진</td>
							<td><s:message code="text.id" /></td>
							<td><s:message code="text.nicname" /></td>
							<td><s:message code="text.name" /></td>
							<td><s:message code="text.gender" /></td>
							<td><s:message code="text.birth" /></td>
							<td><s:message code="text.phone" /></td>
							<td><s:message code="text.email" /></td>
							<td colspan="2"><s:message code="text.address" /></td>
							</tr>`;
						
						initBookStr += `						
							<tr>
							<td rowspan="3">${num}</td>
							<td rowspan="3" class="thumb-list-profile"><img
								src="${path}/resources/img/member/thumbnail/\${this.img}" /></td>
							<td>\${this.id}</td>
							<td>\${this.nickname}</td>
							<td>\${this.name}</td>
							<td>\${this.gender}</td>
							<td>\${formatBirth}</td>
							<td>\${this.phone}</td>
							<td>\${this.email}</td>
							<td colspan="2">\${this.addr}</td>
							</tr>`;
							
						initBookStr += `
							<tr>
							<td>회원구분</td>
							<td>회원등급</td>
							<td>포인트</td>
							<td>대여권수</td>
							<td>대여횟수</td>
							<td>체크인여부</td>
							<td>회원가입일</td>
							<td>가입승인</td>
							<td>블랙리스트</td>
							</tr>`;
							
						initBookStr += `
							<tr>
							<td>\${rights}</td>
							<td>\${this.premiumGrade}</td>
							<td>\${this.point}</td>
							<td>\${this.nowRentCount}</td>
							<td>\${this.allRentCount}</td>
							<td>\${checkIn}</td>
							<td>\${formatRegDate}</td>
							<td>\${allow}</td>
							<td>\${black}</td>
							</tr>`;
							
						num = num + 1;
					});
	$("#tbody").html(initBookStr);
}


function printPage(pm) {
	var str = "";
	if (pm.prev) {
		str += "<li><a href='" + (pm.startPage - 1) + "'> << </a></li>";
	}

	for (var i = pm.startPage; i <= pm.endPage; i++) {
		if (pm.cri.page == i) {
			str += "<li><a href='" + i + "' class='active'>" + i
					+ "</a></li>";
		} else {
			str += "<li><a href='" + i + "'>" + i + "</a></li>";
		}
	}

	if (pm.next) {
		str += "<li><a href='" + (pm.endPage + 1) + "'> >> </a></li>";
	}

	$("#pa").html(str);
}

$("#pa").on("click", "li a", function(e) {
	e.preventDefault();
	var commentPage = $(this).attr("href");
	let p = commentPage;
	num = (p - 1) * 10 + 1;
	ajaxList(p);
});

function approve(e){
	var allowId = e;
	$.ajax({
		type : 'post',
		url : "${path}/admin/members/allow",
		data : {
			id : allowId
		},
		dataType : 'text',
		success : function(result) {
			console.log(result);
			alert(allowId + '님이 가입승인 되었습니다.');
			ajaxList(1);
		}
	});
}

</script>
