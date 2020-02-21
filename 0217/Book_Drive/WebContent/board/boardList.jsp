<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<link rel="stylesheet" href="bdstyle/style/ko/standard/admin_list.css">
<link rel="stylesheet" href="bdstyle/style/ko/svp/bbs/admin_list.css">
<link rel="stylesheet" href="bdstyle/style/ui/toastr/toastr.min.css">
<link rel="stylesheet" href="bdstyle/style/ko/thema/mobile/admin_mobiletable.css" media="screen and (max-width:767px)">

<script type="text/javascript" src="bdstyle/js/common/ajaxCommon.js"></script>
<script type="text/javascript" src="bdstyle/js/common/Checkbox.js"></script>
<script type="text/javascript" src="bdstyle/js/common/jquery.bgiframe.js"></script>
<script type="text/javascript" src="bdstyle/js/common/toastr.min.js"></script>
<script type="text/javascript" src="bdstyle/script/jquery.mThumbnailScroller.js"></script>
<script type="text/javascript" src="bdstyle/script/jquery.selectBox.js"></script>
<script type="text/javascript" src="bdstyle/script/jquery-ui.js"></script>
<script type="text/javascript" src="bdstyle/script/admin_list.js"></script>
<div id="divContentsW">
	<div id="divContents">
		<script type="text/javascript"
			src="bdstyle/js/common/cookie.js" charset="utf-8"></script>
		<h2 id="divTitle">자유게시판</h2>
		<div id="divLocation">
			<ul>
				<li><a href="https://cham.kiu.ac.kr/" title="HOME"><img
						src="bdstyle/image/ko/local/home.png" alt="HOME"></a></li>
				<li><a href="https://cham.kiu.ac.kr/bbs/list/2">게시판</a></li>
				<li><a href="https://cham.kiu.ac.kr/bbs/list/2?pn=1#">자유게시판</a></li>
			</ul>
		</div>
		<!-- sns share기능 사용여부 -->

		<div id="divContent">
			<!-- Content Header -->
			<h3 class="skip">게시판 안내</h3>


			<!-- Content Search -->
			<div class="searchArea">
				<p class="limitSearchBtn">
					<a href="https://cham.kiu.ac.kr/bbs/list/2?pn=1#">선택조건으로 조회</a>
				</p>
				<form name="searchFrm" id="searchFrm" method="get"
					action="https://cham.kiu.ac.kr/bbs/list/2">
					<input type="hidden" value="" name="mId">
					<fieldset>
						<legend>검색</legend>
						<span class="bunch">
							<label for="searchKind" class="skip">검색어</label>
							<select id="searchKind" name="searchKind" class="selectBox1">
								<option value="title">제목</option>
								<option value="writer_Name">작성자</option>
								<option value="content">내용</option>
							</select>
							<input type="text" name="searchKey" class="inputTextType3 sw" maxlength="100" title="검색어" placeholder="검색어를 입력하세요">
						</span>
						<span class="bunch">
							<label for="oi" class="skip">정렬</label>
							<select id="oi" name="oi" class="selectBox1" title="정렬">
								<option value="insert_date">작성일</option>
								<option value="title">제목</option>
								<option value="writer_name">작성자</option>
							</select>
							<label for="os" class="skip">정렬</label>
							<select id="os" name="os" class="selectBox1" title="정렬">
								<option value="desc">내림차순</option>
								<option value="asc">오름차순</option>
							</select>
						</span>
						<span class="bunch">
						<label for="countPerPage" class="skip">쪽당</label>
						<select id="countPerPage" name="countPerPage" class="selectBox1">
							<option value="10">10건</option>
							<option value="15">15건</option>
							<option value="20">20건</option>
							<option value="30">30건</option>
						</select>
						</span>
						<input type="submit" class="btnType5" value="검색">
					</fieldset>
				</form>
			</div>
			<!-- Content Num Of Search Result -->
			<div class="listInfo">
				<div class="listInfo1">
					<p class="totalCnt">
						총 <span class="totalcount">42</span> 건
					</p>
					<p class="pageNum">
						,<span>1</span>/3페이지
					</p>
				</div>
			</div>

			<form name="boardList" method="post"
				action="https://cham.kiu.ac.kr/bbs/boardMove/2"
				onsubmit="return checked(this);">
				<!-- List -->
				<div class="listTable">
					<table class="mobileTable default">
						<caption>게시판 목록</caption>
						<thead>
							<tr>
								<th scope="row" class="footable-first-column">No.</th>
								<th scope="row" data-class="expand">제목</th>
								<th scope="row" data-hide="phone">작성자</th>
								<th scope="row" data-hide="phone">작성일</th>
								<th scope="row" data-hide="phone">조회수</th>
								<th scope="row" data-hide="phone" class="footable-last-column">첨부파일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="num footable-first-column">1</td>
								<td class="title expand"><a
									href="https://cham.kiu.ac.kr/bbs/content/2_5569?pn=1&amp;">책
										반납했는데 연체 문자 와요</a>&nbsp; <span class="reply" title="답글"><span>1</span></span>
								</td>
								<td class="writer">유가연</td>
								<td class="reportDate">2020-01-31</td>
								<td class="view_cnt">31</td>
								<td class="footable-last-column"><img class="addedFile" src="bdstyle/image/ko/solution/common/ico/clip.png" title="첨부파일" alt="첨부파일"></td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- 특정 게시판의 게시물 이동 -->
				<input type="submit" name="submit" value="submit"
					style="display: none;">
			</form>
			<!-- Paging -->
			<div class="paging">
				<div class="paging">
					<span><span>1</span><a
						href="https://cham.kiu.ac.kr/bbs/list/2?pn=2">2</a><a
						href="https://cham.kiu.ac.kr/bbs/list/2?pn=3">3</a></span>
				</div>
			</div>
			<!-- btn -->
			<!-- 사서커뮤니티 게시판에 권한이 없는 사용자가 들어오면 못 들어오게 한다. -->
			<!-- 사용자 등록 하기 종료 -->
			<!-- 실명기능을 사용하는 게시판타입에서는 로그인을 사용하지 않은 사용자에게는 쓰기 버튼이 안보인다.-->
			<div class="buttons"></div>
		</div>
<script type="text/javascript">

var year_jan = '년 1월';
var year_feb = '년 2월';
var year_mar = '년 3월';
var year_apr = '년 4월';
var year_may = '년 5월';
var year_jun = '년 6월';
var year_jul = '년 7월';
var year_aug = '년 8월';
var year_sep = '년 9월';
var year_oct = '년 10월';
var year_nov = '년 11월';
var year_dec = '년 12월';

var sun = '일';
var mon = '월';
var tue = '화';
var wed = '수';
var thu = '목';
var fri = '금';
var sat = '토';

var policy_content = '1';

$.datepicker.setDefaults({
    monthNames: [year_jan,year_feb,year_mar,year_apr,year_may,year_jun,year_jul,year_aug,year_sep,year_oct,year_nov,year_dec],
    dayNamesMin: [sun, mon, tue, wed, thu, fri, sat],
	showMonthAfterYear:true,
	dateFormat: 'yymmdd',
	duration: 0
	//buttonImageOnly: true,
	//buttonText: "달력",
	//buttonImage: "/ui/images/calendar.gif",
});

$(document).ready(function(){
	//$("#dateFrom").val($.datepicker.formatDate('yymmdd', new Date(2009, 1 - 1, 18)));
	// $("#dateFrom").datepicker({defaultDate: new Date(2009, 1 - 1, 18)});
	//$("#dateTo").val($.datepicker.formatDate('yymmdd', new Date(2009, 1 - 1, 27)));
	//$("#dateTo").datepicker({defaultDate: new Date(2009, 1 - 1, 27)});
	$("#dateFrom").datepicker();
	$("#dateTo").datepicker();

	var subjectUse = 'N';
	if(subjectUse == 'Y') {
		var subjectCode = '';
		$("#subject_code > option[value=" + subjectCode + "]").attr("selected", "true");
	}
	
	$("#ui-datepicker-div").css('z-index','1000');
	/*
	var policyYn = 'N';
	if (policyYn == 'Y' && policy_content){
		//alert("게시판 이용 시 '주민등록번호'등과 같은 개인정보를 등록할 경우 제3자에 의해 피해를 입을 수 있습니다. 개인정보 등록 여부를 확인 하셨습니까?");
		alert(policy_content);
	}
	*/
});

function checked(form) {
	var ret = false;
	
	if (isEverChecked(form.board_Checked)) {
		ret = confirm('이동 하시겠습니까?');
	} else {
		alert('항목을 먼저 선택하세요.');
	}
	
	return ret;
}

function validate(fname){
    var digits="0123456789";
    var temp;
    
    var tsc = eval("document.searchFrm."+fname);
        for (var i=0;i<tsc.value.length;i++){
            temp=tsc.value.substring(i,i+1);
        if (digits.indexOf(temp)==-1){
            alert("숫자만 입력 하세요"); 
            tsc.value = "";
            return false;
            }
         }
        return true; 
}   
</script>
	</div>
</div>