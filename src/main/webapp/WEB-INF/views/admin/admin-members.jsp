<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 관리자가 보는 회원 정보 화면 -->

<%@include file="/WEB-INF/views/include/header.jsp"%>



<section>
	<div class="container-md spad">
		<div class="row justify-content-center">
			<div class="col-md-12">
				<div class="product__page__title">
					<div class="row">
						<div class="col-md-8 col-md-8 col-md-6 title__align__center">
							<div class="section-title">
								<h4>회원 정보</h4>
							</div>
						</div>
					</div>
				</div>

				<form>
					<table class="table table-borderless table-dark mb-5">
						<tbody>
							<tr>
								<th scope="row">가입 승인</th>
								<td colspan="2">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn btn-secondary active"> 
											<input type="radio" name="allow" value="all" checked> 전체
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio"	name="allow" value="allow"> 승인 
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio" name="allow" value="disallow"> 미승인
										</label>
									</div>
								</td>
								<td></td>
							</tr>

							<!-- 2행 -->
							<tr>
								<th scope="row">직원여부</th>
								<td colspan="2">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn btn-secondary active"> 
											<input type="radio" name="rank" value="all" checked> 전체
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio"	name="rank" value="member"> 일반회원
										</label> 
										<label class="btn btn-secondary"> 
											<input type="radio" name="rank" value="staff"> 직원
										</label>
									</div>
								</td>
								<td></td>
							</tr>
							<!-- 3행 -->
							<tr>
								<th scope="row">회원 등급</th>
								<td colspan="3">
									<div class="input-group text-secondary">
										<select id="gradeOption">
											<option value="all">전체</option>
											<option value="Bronze">브론즈</option>
											<option value="Silver">실버</option>
											<option value="VIP">VIP</option>
										</select>
									</div>
								</td>
							</tr>
							<!-- 4행 -->
							<tr>
								<th scope="row">검색</th>
								<td>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<select id="searchOption">
												<option value="id" selected>아이디</option>
												<option value="name">이름</option>
												<option value="addr">주소</option>
											</select>
										</div>
										<input type="text" id="searchText" class="form-control"
											style="max-height: 36.5px">
									</div>
								</td>
								<td></td>
								<td><input id="submit" class="btn btn-danger" type="submit" value="검색" /></td>
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


<div class="modal fade" id="demeritCount" data-backdrop="static"
	tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-scrollable modal-dialog-centered"
		role="document">
		<div class="modal-content">
			<form id="demerit-amount" method="post">
				<div class="modal-header">
					<h5 class="modal-title">벌점 부과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="false">&times;</span>
					</button>
				</div>

				<div class="modal-body">
					<!-- 입력태그 하나 -->
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<div class="input-group-text">사용자 현재 벌점</div>
						</div>
						<input type="text" class="form-control" id="nowDemerit" name="nowDemerit"
							readonly="readonly">
					</div>
					<br />
					<!-- 입력태그 하나 -->
					<!-- 입력태그 하나 -->
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<div class="input-group-text">부과할 벌점(음수 입력시 감산)</div>
						</div>
						<input type="number" name="updateDemerit" />
					</div>
					<br />
					<!-- 입력태그 하나 -->
				</div>

				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">부과</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
				</div>
			</form>

		</div>
	</div>
</div>

</html>

<script>
var initStr = null;
var num = 1;
$(function() {
	ajaxList(1);
});

function initData(){	
	initStr = ``;
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
							black = `YES <button onclick='blackRelease("\${this.id}")'>블랙 해제</button>`;
						}
						
						let birth = new Date(this.birth);
						let formatBirth = birth.getFullYear() + "-"
								+ (birth.getMonth() + 1) + "-"
								+ birth.getDate();
						
						let regDate = new Date(this.regDate);
						let formatRegDate = regDate.getFullYear() + "-"
								+ (regDate.getMonth() + 1) + "-"
								+ regDate.getDate();
								
						initStr += `<tr class="text-center">
							<td>번호</td>
							<td>회원사진</td>
							<td>아이디</td>
							<td>닉네임</td>
							<td>이름</td>
							<td>성별</td>
							<td>생년월일</td>
							<td>전화번호</td>
							<td>이메일</td>
							<td colspan="2">주소</td>
							<td>벌점 부과</td>
							</tr>`;
						
						initStr += `						
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
							<td><input type='button' class='btn btn-secondary' onclick='throwData(this)' data-user='\${this.id}' data-demerit='\${this.demerit}' data-toggle='modal' data-target='#demeritCount' value='부과' name='num' /></td>
							</tr>`;
							
						initStr += `
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
							<td>벌점</td>
							</tr>`;
							
						initStr += `
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
							<td>\${this.demerit}</td>
							</tr>`;
							
						num = num + 1;
					});
	$("#tbody").html(initStr);
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

function blackRelease(e){
	var blackId = e;
	$.ajax({
		type : 'post',
		url : "${path}/admin/members/release",
		data : {
			id : blackId
		},
		dataType : 'text',
		success : function(result) {
			console.log(result);
			alert(blackId + '님이 블랙 해제되었습니다.');
			ajaxList(1);
		}
	});
}



function throwData(ev) {
	console.log(ev.dataset);
	var user = ev.dataset.user;
	var demerit = ev.dataset.demerit;
	$("#nowDemerit").val(demerit);
	$("#demerit-amount").attr("action", "${path}/admin/members/" + user);
	$("#demerit-amount").attr("method", "post");
}

</script>
