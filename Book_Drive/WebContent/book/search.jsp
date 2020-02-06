<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="bdstyle/style/ko/home/advanced.css">

<script>
//무슨 기능인지 모르겠음.. 확인이 필요함
var arr_holdingInfo = new Array(); 
arr_holdingInfo[0] = "<option value=\"TOTAL\">전체<\/option>";
var ALL_SELECTED = "TOTAL";

//무슨 기능인지 모르겠음.. 확인이 필요함
function searchTypeChange() {
	var qList = document.search.q;
	var viewList = document.searchType.viewSearchWord;

	if(qList != null && qList != undefined) {
		for(i=0; i<qList.length; i++){
			viewList[i].value = qList[i].value;
		}
	}
	document.searchType.submit();
}
var imgPath = "/image/ko/";
</script>

<div id="divContentsW">
	<div id="divContents">
		<script type="text/javascript" src="./소장자료검색_files/cookie.js"
			charset="utf-8"></script>

		<h2 id="divTitle">전체</h2>

		<div id="divLocation">
			<ul>
				<li><a href="https://cham.kiu.ac.kr/" title="HOME"><img
						src="./소장자료검색_files/home.png" alt="HOME"></a></li>
				<li><a href="https://cham.kiu.ac.kr/search/tot">소장자료검색</a></li>
				<li><a href="https://cham.kiu.ac.kr/search/tot#">전체</a></li>
			</ul>
		</div>
		<!-- content start -->
		<div id="divContent">

			<!-- advancedSearch -->
			<div class="advancedSearch">
				<form id="search" name="search" method="get">
					<!-- 디지털컬렉션 파라미터  -->
					<input type="hidden" name="st" value="KWRD"> <input
						type="hidden" name="commandType" value="advanced"> <input
						type="hidden" name="mId" value="">
					<fieldset>
						<legend>통합검색 </legend>
						<div class="searchKeyword">
							<select id="si0" name="si"
								class="searchOpt1 selectSearchItem selectBox"
								title="검색 항목을 선택하는곳" size="1" style="display: none;">
								<option value="TOTAL">전체</option>
								<option value="1" selected="selected">서명</option>
								<option value="2">저자</option>
								<option value="3">출판사</option>
								<option value="4">ISBN</option>
								<option value="5">서명 or 저자</option>
							</select> <a href="https://cham.kiu.ac.kr/search/tot#none"
								class="selectBox searchOpt1 selectSearchItem selectBox-dropdown"
								title="검색 항목을 선택하는곳" tabindex="NaN"
								style="width: 148px; display: inline-block;"><span
								class="selectBox-label" style="width: 104.011px;">서명</span><span
								class="selectBox-arrow"></span></a> <input type="text" name="q"
								value="" onfocus="setTextObj(this)"
								class="inputTextType1 inputSearchKeyword" title="검색어를 입력하세요">

						</div>
						<input type="hidden" id="weight2" name="weight2">
			</div>

			<div class="searchLimit">
				<dl class="searchLimitSelect">
					<dt>분류유형</dt>
					<dd>
						<ul>
							<li><input id="lmt0tot" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="TOTAL" checked="checked"> <label for="lmt0tot">
									전체</label> <input type="hidden" name="_lmt0" value="on"> <input
								type="hidden" name="lmtsn" value="000000000001"> <input
								type="hidden" name="lmtst" value="OR"></li>

							<li><input id="lmt00" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="m"> <label for="lmt00">총류</label> <input
								type="hidden" name="_lmt0" value="on"></li>

							<li><input id="lmt02" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="s"> <label for="lmt02">철학</label> <input
								type="hidden" name="_lmt0" value="on"></li>

							<li><input id="lmt04" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="t"> <label for="lmt04">종교</label> <input
								type="hidden" name="_lmt0" value="on"></li>

							<li><input id="lmt06" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="b;p;v;x;u;c"> <label for="lmt06"> 사회과학</label>
								<input type="hidden" name="_lmt0" value="on"></li>
							<li><input id="lmt016" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="zsjk;eb"> <label for="lmt016">순수과학</label> <input
								type="hidden" name="_lmt0" value="on"></li>

							<li><input id="lmt016" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="zsjk;eb"> <label for="lmt016">기술과학</label> <input
								type="hidden" name="_lmt0" value="on"></li>
							<li><input id="lmt016" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="zsjk;eb"> <label for="lmt016">예술</label> <input
								type="hidden" name="_lmt0" value="on"></li>
							<li><input id="lmt016" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="zsjk;eb"> <label for="lmt016">언어</label> <input
								type="hidden" name="_lmt0" value="on"></li>
							<li><input id="lmt016" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="zsjk;eb"> <label for="lmt016">문학</label> <input
								type="hidden" name="_lmt0" value="on"></li>
							<li><input id="lmt016" name="lmt0"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="zsjk;eb"> <label for="lmt016">역사 </label> <input
								type="hidden" name="_lmt0" value="on"></li>
						</ul>
					</dd>
				</dl>

				<dl class="searchLimitCondition">
					<dt>발행년도</dt>
					<dd>
						<span class="bunch"> <label for="" class="skip">발행년
								검색범위 시작일</label> <input type="text" name="rf" value=""
							class="datePicker inputTextType1" title="발행년 검색범위 시작일"
							placeholder="발행년 검색범위 시작일"> - <label for="" class="skip">발행년
								검색범위 종료일</label> <input type="text" name="rt" value=""
							class="datePicker inputTextType1" "="" title="발행년 검색범위 종료일"
							placeholder="발행년 검색범위 종료일"> <input type="hidden"
							name="range" value="000000000021">

						</span>
					</dd>
				</dl>
			</div>

			</fieldset>
			<div class="buttons">
				<input type="submit" value="검색" title="검색" class="searchBtn">
				<a href="https://cham.kiu.ac.kr/search/service/searchHistory"
					title="검색 History">검색 History</a> <input id="resetAll"
					type="button" value="다시쓰기" title="다시쓰기">
			</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
$(document).ready(function(){
	$("#resetAll").click(function() {
		document.search.reset();
		$(".searchOpt1").selectBox('refresh').selectBox();
	});
});
</script>
	<div id="divQuick" style="top: 194px;">
		<div class="quickMenu">
			<h2>QUICK MENU</h2>
			<ul>
				<li class="quick1"><a href="https://cham.kiu.ac.kr/myloan/list"
					title="대출연장">대출연장</a></li>
				<li class="quick2"><a
					href="https://cham.kiu.ac.kr/myreserve/list" title="예약조회">예약조회</a></li>
				<li class="quick3"><a
					href="https://cham.kiu.ac.kr/purchaserequest/write" title="희망도서">희망도서</a></li>
				<li class="quick4"><a
					href="https://cham.kiu.ac.kr/local/html/dds" title="원문복사">원문복사</a></li>
			</ul>
		</div>
		<div class="myMenu">
			<h2>My Menu</h2>
			<ul>
			</ul>
			<a
				href="https://cham.kiu.ac.kr/mymenu/insert/101010000?retUrl=/search/tot"
				class="addMenu" onclick="return confirm(&#39;메뉴추가 하시겠습니까?&#39;);"
				title="마이메뉴 추가"><img src="./소장자료검색_files/addMenu.png"
				alt="마이메뉴 추가"></a>
		</div>
		<p class="top">
			<a href="https://cham.kiu.ac.kr/search/tot#">TOP</a>
		</p>
	</div>
</div>
</div>
<hr>

</div>




<ul
	class="selectBox-dropdown-menu selectBox-options searchOpt1-selectBox-dropdown-menu selectSearchItem-selectBox-dropdown-menu"
	style="display: none;">
	<li><a rel="TOTAL">전체</a></li>
	<li class="selectBox-selected"><a rel="1">서명</a></li>
	<li><a rel="2">저자</a></li>
	<li><a rel="3">출판사</a></li>
	<li><a rel="4">ISBN</a></li>
	<li><a rel="5">서명 or 저</a></li>
</ul>

<ul
	class="selectBox-dropdown-menu selectBox-options searchOpt1-selectBox-dropdown-menu selectSearchItem-selectBox-dropdown-menu"
	style="display: none;">
	<li><a rel="TOTAL">전체</a></li>
	<li><a rel="1">서명</a></li>
	<li class="selectBox-selected"><a rel="2">저자</a></li>
	<li><a rel="3">출판사</a></li>
	<li><a rel="4">주제어</a></li>
</ul>
<!-- 
<ul
	class="selectBox-dropdown-menu selectBox-options searchOpt1-selectBox-dropdown-menu selectBoolean-selectBox-dropdown-menu"
	style="display: none;">
	<li class="selectBox-selected"><a rel="and">AND</a></li>
	<li><a rel="or">OR</a></li>
	<li><a rel="not">NOT</a></li>
</ul>
<ul
	class="selectBox-dropdown-menu selectBox-options searchOpt1-selectBox-dropdown-menu selectSearchItem-selectBox-dropdown-menu"
	style="display: none;">
	<li><a rel="TOTAL">전체</a></li>
	<li><a rel="1">서명</a></li>
	<li><a rel="2">저자</a></li>
	<li class="selectBox-selected"><a rel="3">출판사</a></li>
	<li><a rel="4">주제어</a></li>
</ul>
<ul
	class="selectBox-dropdown-menu selectBox-options searchOpt1-selectBox-dropdown-menu"
	style="display: none;">
	<li class="selectBox-selected"><a rel="TOTAL">전체</a></li>
	<li><a rel="kor">한국어</a></li>
	<li><a rel="jpn">일본어</a></li>
	<li><a rel="chi">중국어</a></li>
	<li><a rel="eng">영어</a></li>
	<li><a rel="ger;rus;fre;zzz">기타</a></li>
</ul>
<ul
	class="selectBox-dropdown-menu selectBox-options searchOpt1-selectBox-dropdown-menu"
	style="display: none;">
	<li><a rel="5">5</a></li>
	<li class="selectBox-selected"><a rel="10">10</a></li>
	<li><a rel="15">15</a></li>
	<li><a rel="20">20</a></li>
	<li><a rel="30">30</a></li>
	<li><a rel="50">50</a></li>
	<li><a rel="100">100</a></li>
</ul>
<ul
	class="selectBox-dropdown-menu selectBox-options searchOpt1-selectBox-dropdown-menu"
	style="display: none;">
	<li><a rel="0">전체</a></li>
	<li><a rel="100">100</a></li>
	<li><a rel="200">200</a></li>
	<li><a rel="500">500</a></li>
	<li><a rel="1000">1000</a></li>
	<li class="selectBox-selected"><a rel="10000">10000</a></li>
</ul>
 -->
</body>
</html>