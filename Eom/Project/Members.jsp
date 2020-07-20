<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../inc/top.jsp"%>
<div class="container">
	<!-- header부분-->
	<div class="page-header">
		<h2>회원관리</h2>
		<div class="btn-right">
			<button type="button" class="btn btn-info style=margin:900px">선택수정</button>
			<button type="button" class="btn btn-info">선택삭제</button>
		</div>
	</div>
	<!--목록 버튼-->
	<div class="container_wr">
		<div class="local_ov01 local_ov">
			<a href="#" class="ov_listall">전체목록</a> <span class="btn_ov01">
				<span class="ov_txt">총회원수 </span> <span class="ov_num"> 0명 </span>
			</span> <a href="#" class="btn_ov01"> <span class="ov_txt">차단 </span> <span
				class="ov_num">0명</span></a> <a href="#" class="btn_ov01"> <span
				class="ov_txt">탈퇴 </span> <span class="ov_num">0명</span></a>
		</div>
	</div>

	<!--검색부분-->
	<form id="fsearch" name="fsearch" class="local_sch01 local_sch"
		method="get">
		<label for="sfl" class="sound_only">검색대상</label> <select name="sfl"
			id="sfl">
			<option value="mb_id">회원아이디</option>
			<option value="mb_nick">닉네임</option>
			<option value="mb_name">이름</option>
			<option value="mb_level">권한</option>
			<option value="mb_email">E-MAIL</option>
			<option value="mb_tel">전화번호</option>
			<option value="mb_hp">휴대폰번호</option>
			<option value="mb_point">포인트</option>
			<option value="mb_datetime">가입일시</option>
			<option value="mb_ip">IP</option>
			<option value="mb_recommend">추천인</option>
		</select> <label for="stx" class="sound_only">검색어<strong
			class="sound_only"> 필수</strong></label> <input type="text" name="stx"
			value="" id="stx" required="" class="required frm_input"> <input
			type="submit" class="btn_submit" value="검색">

	</form>
	<div class="local_desc01 local_desc">
		<p>회원자료 삭제 시 다른 회원이 기존 회원아이디를 사용하지 못하도록 회원아이디, 이름, 닉네임은 삭제하지 않고 영구
			보관합니다.</p>
	</div>
	<!--테이블 -->
	<table class="table table-hover">
		<thead>
			<tr>

				<%
					for (int k = 1; k < 10; k++) {
				%>
				<%
					if (k == 1) {
				%>
				<th class="text-center">
					<div class="checkbox">
						<label> <input type="checkbox" name="mycheckbox"
							id="checkbox1" value="" checked />

						</label>
					</div>
				</th>
				<%
					} else {
				%>
				<th class="text-center">제목<%=k%></th>
				<%
					}
				%>
				<%
					}
				%>

			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 1; i < 10; i++) {
			%>
			<tr class="text-center">
				<%
					for (int j = 1; j < 10; j++) {
				%>
				<%
					if (j == 1) {
				%>
				<td><div class="checkbox">
						<label> <input type="checkbox" name="mycheckbox"
							id="checkbox1" value="" checked />

						</label>
					</div></td>
				<%
					} else if (j == 9) {
				%>
				<td><a class="btn btn-default" href="#">수정</a></td>
				<%
					} else {
				%>
				<td>내용<%=i%></td>
				<%
					}
				%>
				<%
					}
				%>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<nav aria-label="Page navigation" style="text-align: center">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
</div>
<%@ include file="/inc/bottom.jsp"%>
