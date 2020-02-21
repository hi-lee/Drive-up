<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript" src="bdstyle/script/jquery.selectBox.js"></script>
<script type="text/javascript" src="bdstyle/js/search/main.js"></script>
<link rel="stylesheet" type="text/css" href="bdstyle/style/ko/home/advanced.css">
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
				<li><a href="template_main.jsp" title="HOME">
					<img src="bdstyle/image/ko/local/home.png" alt="HOME"></a></li>
				<li><a href="https://cham.kiu.ac.kr/search/tot">소장자료검색</a></li>
				<li><a href="https://cham.kiu.ac.kr/search/tot#">전체</a></li>
			</ul>
		</div>
		<!-- content start -->
		<div id="divContent">

			<!-- advancedSearch -->
			<div class="advancedSearch">
				<form id="search" action="bookSearchPro.bk" name="search" method="get">
					<!-- 디지털컬렉션 파라미터  -->
					<fieldset>
						<legend>통합검색 </legend>
						<div class="searchKeyword">
							<select id="si0" name="search"
								class="searchOpt1 selectSearchItem selectBox"
								title="검색 항목을 선택하는곳" size="1" style="display: none;">
								<option value="TOTAL">전체</option>
								<option value="bookName" selected="selected">서명</option>
								<option value="bookWriter">저자</option>
								<option value="bookPub">출판사</option>
								<option value="ISBN">ISBN</option>
							<!--  	<option value="5">서명 or 저자</option>	-->							
							</select> 
								<input type="text" name="value" value="" onfocus="setTextObj(this)"
								class="inputTextType1 inputSearchKeyword" title="검색어를 입력하세요">
						</div>
			</div>

			<div class="searchLimit">
				<dl class="searchLimitSelect">
					<dt>분류유형</dt>
					<dd>
						<ul>
							<li><input id="lmt0tot" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="TOTAL" checked="checked">
								 <label for="lmt0tot">전체</label></li>

							<li><input id="lmt00" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="0"> <label for="lmt00">총류</label></li>

							<li><input id="lmt02" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="1"> <label for="lmt02">철학</label></li>

							<li><input id="lmt04" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="2"> <label for="lmt04">종교</label></li>

							<li><input id="lmt06" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="3"> <label for="lmt06"> 사회과학</label></li>
								
							<li><input id="lmt016" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="4"> <label for="lmt016">순수과학</label></li>

							<li><input id="lmt016" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="5"> <label for="lmt016">기술과학</label></li>
							<li><input id="lmt016" name="category"
							
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="6"> <label for="lmt016">예술</label></li>
							<li><input id="lmt016" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="7"> <label for="lmt016">언어</label></li>
							<li><input id="lmt016" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="8"> <label for="lmt016">문학</label></li>
							<li><input id="lmt016" name="category"
								onclick="toggleCheckbox(this, document.search)" type="checkbox"
								value="9"> <label for="lmt016">역사 </label></li>
						</ul>
					</dd>
				</dl>

				<dl class="searchLimitCondition">
					<dt>발행년도</dt>
					<dd>
						<span class="bunch"> 
						<label for="" class="skip">발행년 검색범위 시작일</label>
						 <input type="text" name="rf" value=""
							class="datePicker inputTextType1" title="발행년 검색범위 시작일"
							placeholder="발행년 검색범위 시작일"> 
							- <label for="" class="skip">발행년 검색범위 종료일</label>
							 <input type="text" name="rt" value=""
							class="datePicker inputTextType1" "="" title="발행년 검색범위 종료일" placeholder="발행년 검색범위 종료일"> 
							<%-- <input type="hidden" name="range" value="000000000021">--%>
						</span>
					</dd>
				</dl>
			</div>

			</fieldset>
			<div class="buttons">
				<input type="submit" value="검색" title="검색" class="searchBtn">
				<a href="https://cham.kiu.ac.kr/search/service/searchHistory"
					title="검색 History">검색 History</a> 
				<input id="resetAll" type="button" value="다시쓰기" title="다시쓰기">
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
</div>
</div>
<hr>
</div>



<!-- 
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
