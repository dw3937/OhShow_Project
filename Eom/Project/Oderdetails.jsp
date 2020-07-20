<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../inc/top.jsp"%>
<!-- header부분-->
<div class="container">
	<!-- header 제목 -->
	<div class="page-header">
		<h2>주문내역</h2>
	</div>
	<!-- 목록 버튼 -->
	<div class="local_ov01 local_ov">
		<a href="#" class="ov_listall">전체목록</a> <span class="btn_ov01"><span
			class="ov_txt">전체 주문내역</span><span class="ov_num"></span></span>
	</div>

	<!-- 드롭다운, 검색 -->
	<form name="frmorderlist" class="local_sch01 local_sch">
		<input type="hidden" name="doc" value=""> <input type="hidden"
			name="sort1" value="od_id"> <input type="hidden" name="sort2"
			value="desc"> <input type="hidden" name="page" value="1">
		<input type="hidden" name="save_search" value=""> <label
			for="sel_field" class="sound_only">검색대상</label> <select
			name="sel_field" id="sel_field">
			<option value="od_id" selected="selected">주문번호</option>
			<option value="mb_id">회원 ID</option>
			<option value="od_name">주문자</option>
			<option value="od_tel">주문자전화</option>
			<option value="od_hp">주문자핸드폰</option>
			<option value="od_b_name">받는분</option>
			<option value="od_b_tel">받는분전화</option>
			<option value="od_b_hp">받는분핸드폰</option>
			<option value="od_deposit_name">입금자</option>
			<option value="od_invoice">운송장번호</option>
		</select> <label for="search" class="sound_only">검색어<strong
			class="sound_only"> 필수</strong></label> <input type="text" name="search"
			value="" id="search" required="" class="required frm_input"
			autocomplete="off"> <input type="submit" value="검색"
			class="btn_submit">
	</form>

	<!-- 주문일자 -->
	<div class="sch_last" style="margin-bottom: 10px;">
		<strong>주문일자</strong> <input type="text" id="fr_date" name="fr_date"
			value="" class="frm_input hasDatepicker" size="10" maxlength="10">
		~ <input type="text" id="to_date" name="to_date" value=""
			class="frm_input hasDatepicker" size="10" maxlength="10">
		<button type="button" onclick="javascript:set_date('오늘');">오늘</button>
		<button type="button" onclick="javascript:set_date('어제');">어제</button>
		<button type="button" onclick="javascript:set_date('이번주');">이번주</button>
		<input type="submit" value="검색" class="btn_submit">
	</div>

	<!-- 테이블 -->
	<table class="table table-bordered">
		<thead id="th_head">
			<tr>
				<th scope="col" rowspan="2" class="text-center"><label
					for="chkall" class="sound_only">주문 전체</label> <input
					type="checkbox" name="chkall" value="1" id="chkall"
					onclick="check_all(this.form)"></th>
				<th scope="col" rowspan="2" colspan="2" class="text-center">주문번호</th>
				<th scope="col" id="th_odrer" class="text-center">주문자</th>
				<th scope="col" id="th_odrertel" class="text-center">주문자전화</th>
				<th scope="col" id="th_recvr" class="text-center">받는분</th>
				<th scope="col" rowspan="2" class="text-center">주문합계</th>
				<th scope="col" rowspan="2" class="text-center">입금합계</th>
				<th scope="col" rowspan="2" class="text-center">주문취소</th>
				<th scope="col" rowspan="2" class="text-center">적립금</th>
				<th scope="col" rowspan="2" class="text-center">보기</th>
			</tr>
			<tr>
				<th scope="col" id="th_odrid" class="text-center">회원ID</th>
				<th scope="col" id="th_odrcnt" class="text-center">주문상품수</th>
				<th scope="col" id="th_odrall" class="text-center">누적주문수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="col" rowspan="2" class="text-center"><label
					for="chkall" class="sound_only">주문 전체</label> <input
					type="checkbox" name="chkall" value="1" id="chkall"
					onclick="check_all(this.form)"></th>
				<th scope="col" rowspan="2" colspan="2" class="text-center">주문번호</th>
				<th scope="col" id="th_odrer" class="text-center">주문자</th>
				<th scope="col" id="th_odrertel" class="text-center">주문자전화</th>
				<th scope="col" id="th_recvr" class="text-center">받는분</th>
				<th scope="col" rowspan="2" class="text-center">주문합계</th>
				<th scope="col" rowspan="2" class="text-center">입금합계</th>
				<th scope="col" rowspan="2" class="text-center">주문취소</th>
				<th scope="col" rowspan="2" class="text-center">적립금</th>
				<th scope="col" rowspan="2" class="text-center"><a
					class="btn btn-default" href="#">보기</a></th>
			</tr>
			<tr>
				<th scope="col" id="th_odrid" class="text-center">회원ID</th>
				<th scope="col" id="th_odrcnt" class="text-center">주문상품수</th>
				<th scope="col" id="th_odrall" class="text-center">누적주문수</th>
			</tr>
			<tr>
				<th scope="col" rowspan="2" class="text-center"><label
					for="chkall" class="sound_only">주문 전체</label> <input
					type="checkbox" name="chkall" value="1" id="chkall"
					onclick="check_all(this.form)"></th>
				<th scope="col" rowspan="2" colspan="2" class="text-center">주문번호</th>
				<th scope="col" id="th_odrer" class="text-center">주문자</th>
				<th scope="col" id="th_odrertel" class="text-center">주문자전화</th>
				<th scope="col" id="th_recvr" class="text-center">받는분</th>
				<th scope="col" rowspan="2" class="text-center">주문합계</th>
				<th scope="col" rowspan="2" class="text-center">입금합계</th>
				<th scope="col" rowspan="2" class="text-center">주문취소</th>
				<th scope="col" rowspan="2" class="text-center">적립금</th>
				<th scope="col" rowspan="2" class="text-center"><a
					class="btn btn-default" href="#">보기</a></th>
			</tr>
			<tr>
				<th scope="col" id="th_odrid" class="text-center">회원ID</th>
				<th scope="col" id="th_odrcnt" class="text-center">주문상품수</th>
				<th scope="col" id="th_odrall" class="text-center">누적주문수</th>
			</tr>
			<tr>
				<th scope="col" rowspan="2" class="text-center"><label
					for="chkall" class="sound_only">주문 전체</label> <input
					type="checkbox" name="chkall" value="1" id="chkall"
					onclick="check_all(this.form)"></th>
				<th scope="col" rowspan="2" colspan="2" class="text-center">주문번호</th>
				<th scope="col" id="th_odrer" class="text-center">주문자</th>
				<th scope="col" id="th_odrertel" class="text-center">주문자전화</th>
				<th scope="col" id="th_recvr" class="text-center">받는분</th>
				<th scope="col" rowspan="2" class="text-center">주문합계</th>
				<th scope="col" rowspan="2" class="text-center">입금합계</th>
				<th scope="col" rowspan="2" class="text-center">주문취소</th>
				<th scope="col" rowspan="2" class="text-center">적립금</th>
				<th scope="col" rowspan="2" class="text-center"><a
					class="btn btn-default" href="#">보기</a></th>
			</tr>
			<tr>
				<th scope="col" id="th_odrid" class="text-center">회원ID</th>
				<th scope="col" id="th_odrcnt" class="text-center">주문상품수</th>
				<th scope="col" id="th_odrall" class="text-center">누적주문수</th>
			</tr>
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